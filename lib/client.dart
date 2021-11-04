import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:isolate';

import "src/td_json_client.dart" show JsonClient;
import "src/tdapi/tdapi.dart";

/// A controller that handles incoming requests asynchronously and exposes
/// [Observable]s that stream data to their listeners.
class TelegramClient {
  final BehaviorSubject<Update> _updates = BehaviorSubject();

  /// All [Update] objects received by the client are put into a
  /// [BehaviorSubject] whose [Stream] is exposed to other parts of the
  /// application. This way updates can be listened to, filtered, mapped, and
  /// Flutter widgets can rebuild in response to them with a StreamBuilder.
  Stream<Update> get updates => _updates.stream;

  /// A convenience getter that streams [AuthorizationState]s. It does this by
  /// filtering for [updates] that are [UpdateAuthorizationState]s and yields
  /// the new authorization state.
  Stream<AuthorizationState> get authorizationState => updates
      .where((u) => u is UpdateAuthorizationState)
      .map((a) => (a as UpdateAuthorizationState).authorizationState!);

  Stream<UpdateActiveNotifications> get updateactivenotifications => updates
      .where((u) => u is UpdateActiveNotifications)
      .map((a) => (a as UpdateActiveNotifications));

  Stream<UpdateAnimatedEmojiMessageClicked>
      get updateanimatedemojimessageclicked => updates
          .where((u) => u is UpdateAnimatedEmojiMessageClicked)
          .map((a) => (a as UpdateAnimatedEmojiMessageClicked));

  Stream<UpdateAnimationSearchParameters> get updateanimationsearchparameters =>
      updates
          .where((u) => u is UpdateAnimationSearchParameters)
          .map((a) => (a as UpdateAnimationSearchParameters));

  Stream<UpdateBasicGroup> get updatebasicgroup => updates
      .where((u) => u is UpdateBasicGroup)
      .map((a) => (a as UpdateBasicGroup));

  Stream<UpdateBasicGroupFullInfo> get updatebasicgroupfullinfo => updates
      .where((u) => u is UpdateBasicGroupFullInfo)
      .map((a) => (a as UpdateBasicGroupFullInfo));

  Stream<Call> get updatecall =>
      updates.where((u) => u is UpdateCall).map((a) => (a as UpdateCall).call!);

  Stream<UpdateChatActionBar> get updatechatactionbar => updates
      .where((u) => u is UpdateChatActionBar)
      .map((a) => (a as UpdateChatActionBar));

  Stream<UpdateChatDefaultDisableNotification>
      get updatechatdefaultdisablenotification => updates
          .where((u) => u is UpdateChatDefaultDisableNotification)
          .map((a) => (a as UpdateChatDefaultDisableNotification));

  Stream<UpdateChatDraftMessage> get updatechatdraftmessage => updates
      .where((u) => u is UpdateChatDraftMessage)
      .map((a) => (a as UpdateChatDraftMessage));

  Stream<List<ChatFilterInfo>> get updatechatfilters => updates
      .where((u) => u is UpdateChatFilters)
      .map((a) => (a as UpdateChatFilters).chatFilters!);

  Stream<UpdateChatHasScheduledMessages> get updatechathasscheduledmessages =>
      updates
          .where((u) => u is UpdateChatHasScheduledMessages)
          .map((a) => (a as UpdateChatHasScheduledMessages));

  Stream<UpdateChatIsBlocked> get updatechatisblocked => updates
      .where((u) => u is UpdateChatIsBlocked)
      .map((a) => (a as UpdateChatIsBlocked));

  Stream<UpdateChatIsMarkedAsUnread> get updatechatismarkedasunread => updates
      .where((u) => u is UpdateChatIsMarkedAsUnread)
      .map((a) => (a as UpdateChatIsMarkedAsUnread));

  Stream<UpdateChatLastMessage> get updatechatlastmessage => updates
      .where((u) => u is UpdateChatLastMessage)
      .map((a) => (a as UpdateChatLastMessage));

  Stream<UpdateChatMember> get updatechatmember => updates
      .where((u) => u is UpdateChatMember)
      .map((a) => (a as UpdateChatMember));

  Stream<UpdateChatMessageTtlSetting> get updatechatmessagettlsetting => updates
      .where((u) => u is UpdateChatMessageTtlSetting)
      .map((a) => (a as UpdateChatMessageTtlSetting));

  Stream<UpdateChatNotificationSettings> get updatechatnotificationsettings =>
      updates
          .where((u) => u is UpdateChatNotificationSettings)
          .map((a) => (a as UpdateChatNotificationSettings));

  Stream<UpdateChatOnlineMemberCount> get updatechatonlinemembercount => updates
      .where((u) => u is UpdateChatOnlineMemberCount)
      .map((a) => (a as UpdateChatOnlineMemberCount));

  Stream<UpdateChatPermissions> get updatechatpermissions => updates
      .where((u) => u is UpdateChatPermissions)
      .map((a) => (a as UpdateChatPermissions));

  Stream<UpdateChatPhoto> get updatechatphoto => updates
      .where((u) => u is UpdateChatPhoto)
      .map((a) => (a as UpdateChatPhoto));

  Stream<UpdateChatPosition> get updatechatposition => updates
      .where((u) => u is UpdateChatPosition)
      .map((a) => (a as UpdateChatPosition));

  Stream<UpdateChatReadInbox> get updatechatreadinbox => updates
      .where((u) => u is UpdateChatReadInbox)
      .map((a) => (a as UpdateChatReadInbox));

  Stream<UpdateChatReadOutbox> get updatechatreadoutbox => updates
      .where((u) => u is UpdateChatReadOutbox)
      .map((a) => (a as UpdateChatReadOutbox));

  Stream<UpdateChatReplyMarkup> get updatechatreplymarkup => updates
      .where((u) => u is UpdateChatReplyMarkup)
      .map((a) => (a as UpdateChatReplyMarkup));

  Stream<UpdateChatTheme> get updatechattheme => updates
      .where((u) => u is UpdateChatTheme)
      .map((a) => (a as UpdateChatTheme));

  Stream<UpdateChatThemes> get updatechatthemes => updates
      .where((u) => u is UpdateChatThemes)
      .map((a) => (a as UpdateChatThemes));

  Stream<UpdateChatTitle> get updatechattitle => updates
      .where((u) => u is UpdateChatTitle)
      .map((a) => (a as UpdateChatTitle));

  Stream<UpdateChatUnreadMentionCount> get updatechatunreadmentioncount =>
      updates
          .where((u) => u is UpdateChatUnreadMentionCount)
          .map((a) => (a as UpdateChatUnreadMentionCount));

  Stream<UpdateChatVoiceChat> get updatechatvoicechat => updates
      .where((u) => u is UpdateChatVoiceChat)
      .map((a) => (a as UpdateChatVoiceChat));

  Stream<ConnectionState> get updateconnectionstate => updates
      .where((u) => u is UpdateConnectionState)
      .map((a) => (a as UpdateConnectionState).state!);

  Stream<UpdateDeleteMessages> get updatedeletemessages => updates
      .where((u) => u is UpdateDeleteMessages)
      .map((a) => (a as UpdateDeleteMessages));

  Stream<List<String>> get updatediceemojis => updates
      .where((u) => u is UpdateDiceEmojis)
      .map((a) => (a as UpdateDiceEmojis).emojis!);

  Stream<List<int>> get updatefavoritestickers => updates
      .where((u) => u is UpdateFavoriteStickers)
      .map((a) => (a as UpdateFavoriteStickers).stickerIds!);

  Stream<File> get updatefile =>
      updates.where((u) => u is UpdateFile).map((a) => (a as UpdateFile).file!);

  Stream<UpdateFileGenerationStart> get updatefilegenerationstart => updates
      .where((u) => u is UpdateFileGenerationStart)
      .map((a) => (a as UpdateFileGenerationStart));

  Stream<UpdateFileGenerationStop> get updatefilegenerationstop => updates
      .where((u) => u is UpdateFileGenerationStop)
      .map((a) => (a as UpdateFileGenerationStop));

  Stream<GroupCall> get updategroupcall => updates
      .where((u) => u is UpdateGroupCall)
      .map((a) => (a as UpdateGroupCall).groupCall!);

  Stream<UpdateGroupCallParticipant> get updategroupcallparticipant => updates
      .where((u) => u is UpdateGroupCallParticipant)
      .map((a) => (a as UpdateGroupCallParticipant));

  Stream<UpdateHavePendingNotifications> get updatehavependingnotifications =>
      updates
          .where((u) => u is UpdateHavePendingNotifications)
          .map((a) => (a as UpdateHavePendingNotifications));

  Stream<UpdateInstalledStickerSets> get updateinstalledstickersets => updates
      .where((u) => u is UpdateInstalledStickerSets)
      .map((a) => (a as UpdateInstalledStickerSets));

  Stream<UpdateLanguagePackStrings> get updatelanguagepackstrings => updates
      .where((u) => u is UpdateLanguagePackStrings)
      .map((a) => (a as UpdateLanguagePackStrings));

  Stream<UpdateMessageContent> get updatemessagecontent => updates
      .where((u) => u is UpdateMessageContent)
      .map((a) => (a as UpdateMessageContent));

  Stream<UpdateMessageContentOpened> get updatemessagecontentopened => updates
      .where((u) => u is UpdateMessageContentOpened)
      .map((a) => (a as UpdateMessageContentOpened));

  Stream<UpdateMessageEdited> get updatemessageedited => updates
      .where((u) => u is UpdateMessageEdited)
      .map((a) => (a as UpdateMessageEdited));

  Stream<UpdateMessageInteractionInfo> get updatemessageinteractioninfo =>
      updates
          .where((u) => u is UpdateMessageInteractionInfo)
          .map((a) => (a as UpdateMessageInteractionInfo));

  Stream<UpdateMessageIsPinned> get updatemessageispinned => updates
      .where((u) => u is UpdateMessageIsPinned)
      .map((a) => (a as UpdateMessageIsPinned));

  Stream<UpdateMessageLiveLocationViewed> get updatemessagelivelocationviewed =>
      updates
          .where((u) => u is UpdateMessageLiveLocationViewed)
          .map((a) => (a as UpdateMessageLiveLocationViewed));

  Stream<UpdateMessageMentionRead> get updatemessagementionread => updates
      .where((u) => u is UpdateMessageMentionRead)
      .map((a) => (a as UpdateMessageMentionRead));

  Stream<UpdateMessageSendAcknowledged> get updatemessagesendacknowledged =>
      updates
          .where((u) => u is UpdateMessageSendAcknowledged)
          .map((a) => (a as UpdateMessageSendAcknowledged));

  Stream<UpdateMessageSendFailed> get updatemessagesendfailed => updates
      .where((u) => u is UpdateMessageSendFailed)
      .map((a) => (a as UpdateMessageSendFailed));

  Stream<UpdateMessageSendSucceeded> get updatemessagesendsucceeded => updates
      .where((u) => u is UpdateMessageSendSucceeded)
      .map((a) => (a as UpdateMessageSendSucceeded));

  Stream<UpdateNewCallbackQuery> get updatenewcallbackquery => updates
      .where((u) => u is UpdateNewCallbackQuery)
      .map((a) => (a as UpdateNewCallbackQuery));

  Stream<UpdateNewCallSignalingData> get updatenewcallsignalingdata => updates
      .where((u) => u is UpdateNewCallSignalingData)
      .map((a) => (a as UpdateNewCallSignalingData));

  Stream<Chat> get updatenewchat => updates
      .where((u) => u is UpdateNewChat)
      .map((a) => (a as UpdateNewChat).chat!);

  Stream<UpdateNewChosenInlineResult> get updatenewchoseninlineresult => updates
      .where((u) => u is UpdateNewChosenInlineResult)
      .map((a) => (a as UpdateNewChosenInlineResult));

  Stream<UpdateNewCustomEvent> get updatenewcustomevent => updates
      .where((u) => u is UpdateNewCustomEvent)
      .map((a) => (a as UpdateNewCustomEvent));

  Stream<UpdateNewCustomQuery> get updatenewcustomquery => updates
      .where((u) => u is UpdateNewCustomQuery)
      .map((a) => (a as UpdateNewCustomQuery));

  Stream<UpdateNewInlineCallbackQuery> get updatenewinlinecallbackquery =>
      updates
          .where((u) => u is UpdateNewInlineCallbackQuery)
          .map((a) => (a as UpdateNewInlineCallbackQuery));

  Stream<UpdateNewInlineQuery> get updatenewinlinequery => updates
      .where((u) => u is UpdateNewInlineQuery)
      .map((a) => (a as UpdateNewInlineQuery));

  Stream<Message> get updatenewmessage => updates
      .where((u) => u is UpdateNewMessage)
      .map((a) => (a as UpdateNewMessage).message!);

  Stream<UpdateNewPreCheckoutQuery> get updatenewprecheckoutquery => updates
      .where((u) => u is UpdateNewPreCheckoutQuery)
      .map((a) => (a as UpdateNewPreCheckoutQuery));

  Stream<UpdateNewShippingQuery> get updatenewshippingquery => updates
      .where((u) => u is UpdateNewShippingQuery)
      .map((a) => (a as UpdateNewShippingQuery));

  Stream<UpdateNotification> get updatenotification => updates
      .where((u) => u is UpdateNotification)
      .map((a) => (a as UpdateNotification));

  Stream<UpdateNotificationGroup> get updatenotificationgroup => updates
      .where((u) => u is UpdateNotificationGroup)
      .map((a) => (a as UpdateNotificationGroup));

  Stream<UpdateOption> get updateoption =>
      updates.where((u) => u is UpdateOption).map((a) => (a as UpdateOption));

  Stream<Poll> get updatepoll =>
      updates.where((u) => u is UpdatePoll).map((a) => (a as UpdatePoll).poll!);

  Stream<UpdatePollAnswer> get updatepollanswer => updates
      .where((u) => u is UpdatePollAnswer)
      .map((a) => (a as UpdatePollAnswer));

  Stream<UpdateRecentStickers> get updaterecentstickers => updates
      .where((u) => u is UpdateRecentStickers)
      .map((a) => (a as UpdateRecentStickers));

  Stream<List<int>> get updatesavedanimations => updates
      .where((u) => u is UpdateSavedAnimations)
      .map((a) => (a as UpdateSavedAnimations).animationIds!);

  Stream<UpdateScopeNotificationSettings> get updatescopenotificationsettings =>
      updates
          .where((u) => u is UpdateScopeNotificationSettings)
          .map((a) => (a as UpdateScopeNotificationSettings));

  Stream<UpdateSecretChat> get updatesecretchat => updates
      .where((u) => u is UpdateSecretChat)
      .map((a) => (a as UpdateSecretChat));

  Stream<UpdateSelectedBackground> get updateselectedbackground => updates
      .where((u) => u is UpdateSelectedBackground)
      .map((a) => (a as UpdateSelectedBackground));

  Stream<UpdateServiceNotification> get updateservicenotification => updates
      .where((u) => u is UpdateServiceNotification)
      .map((a) => (a as UpdateServiceNotification));

  Stream<UpdateStickerSet> get updatestickerset => updates
      .where((u) => u is UpdateStickerSet)
      .map((a) => (a as UpdateStickerSet));

  Stream<UpdateSuggestedActions> get updatesuggestedactions => updates
      .where((u) => u is UpdateSuggestedActions)
      .map((a) => (a as UpdateSuggestedActions));

  Stream<UpdateSupergroup> get updatesupergroup => updates
      .where((u) => u is UpdateSupergroup)
      .map((a) => (a as UpdateSupergroup));

  Stream<UpdateSupergroupFullInfo> get updatesupergroupfullinfo => updates
      .where((u) => u is UpdateSupergroupFullInfo)
      .map((a) => (a as UpdateSupergroupFullInfo));

  Stream<UpdateTermsOfService> get updatetermsofservice => updates
      .where((u) => u is UpdateTermsOfService)
      .map((a) => (a as UpdateTermsOfService));

  Stream<UpdateTrendingStickerSets> get updatetrendingstickersets => updates
      .where((u) => u is UpdateTrendingStickerSets)
      .map((a) => (a as UpdateTrendingStickerSets));

  Stream<UpdateUnreadChatCount> get updateunreadchatcount => updates
      .where((u) => u is UpdateUnreadChatCount)
      .map((a) => (a as UpdateUnreadChatCount));

  Stream<UpdateUnreadMessageCount> get updateunreadmessagecount => updates
      .where((u) => u is UpdateUnreadMessageCount)
      .map((a) => (a as UpdateUnreadMessageCount));

  Stream<UpdateUser> get updateuser =>
      updates.where((u) => u is UpdateUser).map((a) => (a as UpdateUser));

  Stream<UpdateUserChatAction> get updateuserchataction => updates
      .where((u) => u is UpdateUserChatAction)
      .map((a) => (a as UpdateUserChatAction));

  Stream<UpdateUserFullInfo> get updateuserfullinfo => updates
      .where((u) => u is UpdateUserFullInfo)
      .map((a) => (a as UpdateUserFullInfo));

  Stream<UpdateUserPrivacySettingRules> get updateuserprivacysettingrules =>
      updates
          .where((u) => u is UpdateUserPrivacySettingRules)
          .map((a) => (a as UpdateUserPrivacySettingRules));

  Stream<List<ChatNearby>> get updateusersnearby => updates
      .where((u) => u is UpdateUsersNearby)
      .map((a) => (a as UpdateUsersNearby).usersNearby!);

  Stream<UserStatus> get updateuserstatus => updates
      .where((u) => u is UpdateUserStatus)
      .map((a) => (a as UpdateUserStatus).status!);

  late TdlibParameters tdlibParams;

  Future<void> init() async {
    Completer completer = Completer<void>();
    _receivePort = await initIsolate();
    //not null, promise
    _receivePort!.listen((message) {
      if (message is String) {
        var tdobject = convertToObject(message);
        if (tdobject is Update) {
          _updates.add(tdobject);
        } else {
          _requestsQueue[0](tdobject);
          _requestsQueue.removeAt(0);
        }
      } else if (message is SendPort) {
        _sendPort = message;
        completer.complete();
      }
    });
    return completer.future;
  }

  ReceivePort? _receivePort;
  SendPort? _sendPort;
  final List<Function(TdObject)> _requestsQueue = [];

  Future<ReceivePort> initIsolate() async {
    Completer completer = Completer<SendPort>();
    ReceivePort isolateToMainStream = ReceivePort();
    Isolate myIsolateInstance =
        await Isolate.spawn(_start, isolateToMainStream.sendPort);
    return isolateToMainStream;
  }

  /// Asynchronously performs any necessary cleanup before [destroy]ing this
  /// client.
  Future<void> close() async {
    //TODO implement close
  }

  Future<TdObject> send(TdFunction function) async {
    if (_sendPort == null) throw Exception("firstly init client using init()");
    _sendPort!.send(json.encode(function));
    final Completer<TdObject> _completer = Completer<TdObject>();
    _requestsQueue.add(_completer.complete);
    return _completer.future;
  }
}

void _start(SendPort isolateToMainStream) {
  //create a new port and send it to the main
  ReceivePort mainToIsolateStream = ReceivePort();
  isolateToMainStream.send(mainToIsolateStream.sendPort);

  //listen Stream
  var client = JsonClient.create("Assets/bin/tdlib");
  //About this timeouts: Dart, as a language, has a problem - it is single-threaded,
  //and td_json_client_receive blocks the thread for the timeout period, so I run tdlib in isolate.
  //But these are not all problems, while td_json_client_receive is running I cannot listen for messages from SendPort.
  //Therefore, I wait for updates from tdlib 100ms and wait for messages from SendPort, also 100ms.
  //
  //Who will solve this problem - cool dude.
  client.incomingString(2).listen((update) {
    isolateToMainStream.send(update);
  });

  mainToIsolateStream.listen((data) {
    if (data is String) client.send(json.decode(data));
  });
}

