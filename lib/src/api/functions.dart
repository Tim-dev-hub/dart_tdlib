import 'base_classes.dart';
import 'objects.dart';
import 'utils.dart';

@reflector
class GetAuthorizationState extends TdFunction {
  @override
  Type get returnType => AuthorizationState;

  @override
  String get tdType => 'getAuthorizationState';

  @override
  Map<String, dynamic> get params => {};

  GetAuthorizationState();

  GetAuthorizationState.fromJson(Map<String, dynamic> json);
}

@reflector
class SetTdlibParameters extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setTdlibParameters';

  TdlibParameters parameters;

  @override
  Map<String, dynamic> get params => {
    'parameters': parameters,
  };

  SetTdlibParameters(
    this.parameters,
  );

  SetTdlibParameters.fromJson(Map<String, dynamic> json) {
    parameters = tryConvertToTdObject(json['parameters']);
  }
}

@reflector
class CheckDatabaseEncryptionKey extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkDatabaseEncryptionKey';

  String encryptionKey;

  @override
  Map<String, dynamic> get params => {
    'encryption_key': encryptionKey,
  };

  CheckDatabaseEncryptionKey(
    this.encryptionKey,
  );

  CheckDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) {
    encryptionKey = tryConvertToTdObject(json['encryption_key']);
  }
}

@reflector
class SetAuthenticationPhoneNumber extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAuthenticationPhoneNumber';

  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'settings': settings,
  };

  SetAuthenticationPhoneNumber(
    this.phoneNumber,
    this.settings,
  );

  SetAuthenticationPhoneNumber.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    settings = tryConvertToTdObject(json['settings']);
  }
}

@reflector
class ResendAuthenticationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resendAuthenticationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendAuthenticationCode();

  ResendAuthenticationCode.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckAuthenticationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckAuthenticationCode(
    this.code,
  );

  CheckAuthenticationCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class RequestQrCodeAuthentication extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'requestQrCodeAuthentication';

  List<int> otherUserIds;

  @override
  Map<String, dynamic> get params => {
    'other_user_ids': otherUserIds,
  };

  RequestQrCodeAuthentication(
    this.otherUserIds,
  );

  RequestQrCodeAuthentication.fromJson(Map<String, dynamic> json) {
    otherUserIds = tryConvertToTdObject(json['other_user_ids']);
  }
}

@reflector
class RegisterUser extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'registerUser';

  String firstName;
  String lastName;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'last_name': lastName,
  };

  RegisterUser(
    this.firstName,
    this.lastName,
  );

  RegisterUser.fromJson(Map<String, dynamic> json) {
    firstName = tryConvertToTdObject(json['first_name']);
    lastName = tryConvertToTdObject(json['last_name']);
  }
}

@reflector
class CheckAuthenticationPassword extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationPassword';

  String password;

  @override
  Map<String, dynamic> get params => {
    'password': password,
  };

  CheckAuthenticationPassword(
    this.password,
  );

  CheckAuthenticationPassword.fromJson(Map<String, dynamic> json) {
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class RequestAuthenticationPasswordRecovery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'requestAuthenticationPasswordRecovery';

  @override
  Map<String, dynamic> get params => {};

  RequestAuthenticationPasswordRecovery();

  RequestAuthenticationPasswordRecovery.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckAuthenticationPasswordRecoveryCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationPasswordRecoveryCode';

  String recoveryCode;

  @override
  Map<String, dynamic> get params => {
    'recovery_code': recoveryCode,
  };

  CheckAuthenticationPasswordRecoveryCode(
    this.recoveryCode,
  );

  CheckAuthenticationPasswordRecoveryCode.fromJson(Map<String, dynamic> json) {
    recoveryCode = tryConvertToTdObject(json['recovery_code']);
  }
}

@reflector
class RecoverAuthenticationPassword extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'recoverAuthenticationPassword';

  String recoveryCode;
  String newPassword;
  String newHint;

  @override
  Map<String, dynamic> get params => {
    'recovery_code': recoveryCode,
    'new_password': newPassword,
    'new_hint': newHint,
  };

  RecoverAuthenticationPassword(
    this.recoveryCode,
    this.newPassword,
    this.newHint,
  );

  RecoverAuthenticationPassword.fromJson(Map<String, dynamic> json) {
    recoveryCode = tryConvertToTdObject(json['recovery_code']);
    newPassword = tryConvertToTdObject(json['new_password']);
    newHint = tryConvertToTdObject(json['new_hint']);
  }
}

@reflector
class CheckAuthenticationBotToken extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkAuthenticationBotToken';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  CheckAuthenticationBotToken(
    this.token,
  );

  CheckAuthenticationBotToken.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
  }
}

@reflector
class LogOut extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'logOut';

  @override
  Map<String, dynamic> get params => {};

  LogOut();

  LogOut.fromJson(Map<String, dynamic> json);
}

@reflector
class Close extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'close';

  @override
  Map<String, dynamic> get params => {};

  Close();

  Close.fromJson(Map<String, dynamic> json);
}

@reflector
class Destroy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'destroy';

  @override
  Map<String, dynamic> get params => {};

  Destroy();

  Destroy.fromJson(Map<String, dynamic> json);
}

@reflector
class SetDatabaseEncryptionKey extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setDatabaseEncryptionKey';

  String newEncryptionKey;

  @override
  Map<String, dynamic> get params => {
    'new_encryption_key': newEncryptionKey,
  };

  SetDatabaseEncryptionKey(
    this.newEncryptionKey,
  );

  SetDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) {
    newEncryptionKey = tryConvertToTdObject(json['new_encryption_key']);
  }
}

@reflector
class CheckPasswordRecoveryCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkPasswordRecoveryCode';

  String recoveryCode;

  @override
  Map<String, dynamic> get params => {
    'recovery_code': recoveryCode,
  };

  CheckPasswordRecoveryCode(
    this.recoveryCode,
  );

  CheckPasswordRecoveryCode.fromJson(Map<String, dynamic> json) {
    recoveryCode = tryConvertToTdObject(json['recovery_code']);
  }
}

@reflector
class CancelPasswordReset extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'cancelPasswordReset';

  @override
  Map<String, dynamic> get params => {};

  CancelPasswordReset();

  CancelPasswordReset.fromJson(Map<String, dynamic> json);
}

@reflector
class LoadChats extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'loadChats';

  ChatList chatList;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'limit': limit,
  };

  LoadChats(
    this.chatList,
    this.limit,
  );

  LoadChats.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class RemoveTopChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeTopChat';

  TopChatCategory category;
  int chatId;

  @override
  Map<String, dynamic> get params => {
    'category': category,
    'chat_id': chatId,
  };

  RemoveTopChat(
    this.category,
    this.chatId,
  );

  RemoveTopChat.fromJson(Map<String, dynamic> json) {
    category = tryConvertToTdObject(json['category']);
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class AddRecentlyFoundChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addRecentlyFoundChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  AddRecentlyFoundChat(
    this.chatId,
  );

  AddRecentlyFoundChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class RemoveRecentlyFoundChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeRecentlyFoundChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  RemoveRecentlyFoundChat(
    this.chatId,
  );

  RemoveRecentlyFoundChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class ClearRecentlyFoundChats extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearRecentlyFoundChats';

  @override
  Map<String, dynamic> get params => {};

  ClearRecentlyFoundChats();

  ClearRecentlyFoundChats.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckCreatedPublicChatsLimit extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkCreatedPublicChatsLimit';

  PublicChatType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  CheckCreatedPublicChatsLimit(
    this.type,
  );

  CheckCreatedPublicChatsLimit.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class DeleteChatHistory extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatHistory';

  int chatId;
  bool removeFromChatList;
  bool revoke;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'remove_from_chat_list': removeFromChatList,
    'revoke': revoke,
  };

  DeleteChatHistory(
    this.chatId,
    this.removeFromChatList,
    this.revoke,
  );

  DeleteChatHistory.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    removeFromChatList = tryConvertToTdObject(json['remove_from_chat_list']);
    revoke = tryConvertToTdObject(json['revoke']);
  }
}

@reflector
class DeleteChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  DeleteChat(
    this.chatId,
  );

  DeleteChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class DeleteAllCallMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteAllCallMessages';

  bool revoke;

  @override
  Map<String, dynamic> get params => {
    'revoke': revoke,
  };

  DeleteAllCallMessages(
    this.revoke,
  );

  DeleteAllCallMessages.fromJson(Map<String, dynamic> json) {
    revoke = tryConvertToTdObject(json['revoke']);
  }
}

@reflector
class ViewSponsoredMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'viewSponsoredMessage';

  int chatId;
  int sponsoredMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'sponsored_message_id': sponsoredMessageId,
  };

  ViewSponsoredMessage(
    this.chatId,
    this.sponsoredMessageId,
  );

  ViewSponsoredMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    sponsoredMessageId = tryConvertToTdObject(json['sponsored_message_id']);
  }
}

@reflector
class RemoveNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeNotification';

  int notificationGroupId;
  int notificationId;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'notification_id': notificationId,
  };

  RemoveNotification(
    this.notificationGroupId,
    this.notificationId,
  );

  RemoveNotification.fromJson(Map<String, dynamic> json) {
    notificationGroupId = tryConvertToTdObject(json['notification_group_id']);
    notificationId = tryConvertToTdObject(json['notification_id']);
  }
}

@reflector
class RemoveNotificationGroup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeNotificationGroup';

  int notificationGroupId;
  int maxNotificationId;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'max_notification_id': maxNotificationId,
  };

  RemoveNotificationGroup(
    this.notificationGroupId,
    this.maxNotificationId,
  );

  RemoveNotificationGroup.fromJson(Map<String, dynamic> json) {
    notificationGroupId = tryConvertToTdObject(json['notification_group_id']);
    maxNotificationId = tryConvertToTdObject(json['max_notification_id']);
  }
}

@reflector
class SendChatScreenshotTakenNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendChatScreenshotTakenNotification';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  SendChatScreenshotTakenNotification(
    this.chatId,
  );

  SendChatScreenshotTakenNotification.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class DeleteMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteMessages';

  int chatId;
  List<int> messageIds;
  bool revoke;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'revoke': revoke,
  };

  DeleteMessages(
    this.chatId,
    this.messageIds,
    this.revoke,
  );

  DeleteMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
    revoke = tryConvertToTdObject(json['revoke']);
  }
}

@reflector
class DeleteChatMessagesFromUser extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatMessagesFromUser';

  int chatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
  };

  DeleteChatMessagesFromUser(
    this.chatId,
    this.userId,
  );

  DeleteChatMessagesFromUser.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class EditInlineMessageText extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageText';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditInlineMessageText(
    this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditInlineMessageText.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class EditInlineMessageLiveLocation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageLiveLocation';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  Location location;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'location': location,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  EditInlineMessageLiveLocation(
    this.inlineMessageId,
    this.replyMarkup,
    this.location,
    this.heading,
    this.proximityAlertRadius,
  );

  EditInlineMessageLiveLocation.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    location = tryConvertToTdObject(json['location']);
    heading = tryConvertToTdObject(json['heading']);
    proximityAlertRadius = tryConvertToTdObject(json['proximity_alert_radius']);
  }
}

@reflector
class EditInlineMessageMedia extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageMedia';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditInlineMessageMedia(
    this.inlineMessageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditInlineMessageMedia.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class EditInlineMessageCaption extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageCaption';

  String inlineMessageId;
  ReplyMarkup replyMarkup;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
    'caption': caption,
  };

  EditInlineMessageCaption(
    this.inlineMessageId,
    this.replyMarkup,
    this.caption,
  );

  EditInlineMessageCaption.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class EditInlineMessageReplyMarkup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editInlineMessageReplyMarkup';

  String inlineMessageId;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'reply_markup': replyMarkup,
  };

  EditInlineMessageReplyMarkup(
    this.inlineMessageId,
    this.replyMarkup,
  );

  EditInlineMessageReplyMarkup.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class EditMessageSchedulingState extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editMessageSchedulingState';

  int chatId;
  int messageId;
  MessageSchedulingState schedulingState;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'scheduling_state': schedulingState,
  };

  EditMessageSchedulingState(
    this.chatId,
    this.messageId,
    this.schedulingState,
  );

  EditMessageSchedulingState.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    schedulingState = tryConvertToTdObject(json['scheduling_state']);
  }
}

@reflector
class SetPollAnswer extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setPollAnswer';

  int chatId;
  int messageId;
  List<int> optionIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'option_ids': optionIds,
  };

  SetPollAnswer(
    this.chatId,
    this.messageId,
    this.optionIds,
  );

  SetPollAnswer.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    optionIds = tryConvertToTdObject(json['option_ids']);
  }
}

@reflector
class StopPoll extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'stopPoll';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
  };

  StopPoll(
    this.chatId,
    this.messageId,
    this.replyMarkup,
  );

  StopPoll.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class HideSuggestedAction extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'hideSuggestedAction';

  SuggestedAction action;

  @override
  Map<String, dynamic> get params => {
    'action': action,
  };

  HideSuggestedAction(
    this.action,
  );

  HideSuggestedAction.fromJson(Map<String, dynamic> json) {
    action = tryConvertToTdObject(json['action']);
  }
}

@reflector
class AnswerInlineQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerInlineQuery';

  int inlineQueryId;
  bool isPersonal;
  List<InputInlineQueryResult> results;
  int cacheTime;
  String nextOffset;
  String switchPmText;
  String switchPmParameter;

  @override
  Map<String, dynamic> get params => {
    'inline_query_id': inlineQueryId,
    'is_personal': isPersonal,
    'results': results,
    'cache_time': cacheTime,
    'next_offset': nextOffset,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  AnswerInlineQuery(
    this.inlineQueryId,
    this.isPersonal,
    this.results,
    this.cacheTime,
    this.nextOffset,
    this.switchPmText,
    this.switchPmParameter,
  );

  AnswerInlineQuery.fromJson(Map<String, dynamic> json) {
    inlineQueryId = tryConvertToTdObject(json['inline_query_id']);
    isPersonal = tryConvertToTdObject(json['is_personal']);
    results = tryConvertToTdObject(json['results']);
    cacheTime = tryConvertToTdObject(json['cache_time']);
    nextOffset = tryConvertToTdObject(json['next_offset']);
    switchPmText = tryConvertToTdObject(json['switch_pm_text']);
    switchPmParameter = tryConvertToTdObject(json['switch_pm_parameter']);
  }
}

@reflector
class AnswerCallbackQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerCallbackQuery';

  int callbackQueryId;
  String text;
  bool showAlert;
  String url;
  int cacheTime;

  @override
  Map<String, dynamic> get params => {
    'callback_query_id': callbackQueryId,
    'text': text,
    'show_alert': showAlert,
    'url': url,
    'cache_time': cacheTime,
  };

  AnswerCallbackQuery(
    this.callbackQueryId,
    this.text,
    this.showAlert,
    this.url,
    this.cacheTime,
  );

  AnswerCallbackQuery.fromJson(Map<String, dynamic> json) {
    callbackQueryId = tryConvertToTdObject(json['callback_query_id']);
    text = tryConvertToTdObject(json['text']);
    showAlert = tryConvertToTdObject(json['show_alert']);
    url = tryConvertToTdObject(json['url']);
    cacheTime = tryConvertToTdObject(json['cache_time']);
  }
}

@reflector
class AnswerShippingQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerShippingQuery';

  int shippingQueryId;
  List<ShippingOption> shippingOptions;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'shipping_query_id': shippingQueryId,
    'shipping_options': shippingOptions,
    'error_message': errorMessage,
  };

  AnswerShippingQuery(
    this.shippingQueryId,
    this.shippingOptions,
    this.errorMessage,
  );

  AnswerShippingQuery.fromJson(Map<String, dynamic> json) {
    shippingQueryId = tryConvertToTdObject(json['shipping_query_id']);
    shippingOptions = tryConvertToTdObject(json['shipping_options']);
    errorMessage = tryConvertToTdObject(json['error_message']);
  }
}

@reflector
class AnswerPreCheckoutQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerPreCheckoutQuery';

  int preCheckoutQueryId;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'pre_checkout_query_id': preCheckoutQueryId,
    'error_message': errorMessage,
  };

  AnswerPreCheckoutQuery(
    this.preCheckoutQueryId,
    this.errorMessage,
  );

  AnswerPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    preCheckoutQueryId = tryConvertToTdObject(json['pre_checkout_query_id']);
    errorMessage = tryConvertToTdObject(json['error_message']);
  }
}

@reflector
class SetInlineGameScore extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setInlineGameScore';

  String inlineMessageId;
  bool editMessage;
  int userId;
  int score;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'edit_message': editMessage,
    'user_id': userId,
    'score': score,
    'force': force,
  };

  SetInlineGameScore(
    this.inlineMessageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force,
  );

  SetInlineGameScore.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    editMessage = tryConvertToTdObject(json['edit_message']);
    userId = tryConvertToTdObject(json['user_id']);
    score = tryConvertToTdObject(json['score']);
    force = tryConvertToTdObject(json['force']);
  }
}

@reflector
class DeleteChatReplyMarkup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatReplyMarkup';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  DeleteChatReplyMarkup(
    this.chatId,
    this.messageId,
  );

  DeleteChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class SendChatAction extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendChatAction';

  int chatId;
  int messageThreadId;
  ChatAction action;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'action': action,
  };

  SendChatAction(
    this.chatId,
    this.messageThreadId,
    this.action,
  );

  SendChatAction.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    action = tryConvertToTdObject(json['action']);
  }
}

@reflector
class OpenChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'openChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  OpenChat(
    this.chatId,
  );

  OpenChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class CloseChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'closeChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  CloseChat(
    this.chatId,
  );

  CloseChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class ViewMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'viewMessages';

  int chatId;
  int messageThreadId;
  List<int> messageIds;
  bool forceRead;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'message_ids': messageIds,
    'force_read': forceRead,
  };

  ViewMessages(
    this.chatId,
    this.messageThreadId,
    this.messageIds,
    this.forceRead,
  );

  ViewMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
    forceRead = tryConvertToTdObject(json['force_read']);
  }
}

@reflector
class OpenMessageContent extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'openMessageContent';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  OpenMessageContent(
    this.chatId,
    this.messageId,
  );

  OpenMessageContent.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class ReadAllChatMentions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'readAllChatMentions';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  ReadAllChatMentions(
    this.chatId,
  );

  ReadAllChatMentions.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class AddChatToList extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addChatToList';

  int chatId;
  ChatList chatList;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'chat_list': chatList,
  };

  AddChatToList(
    this.chatId,
    this.chatList,
  );

  AddChatToList.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    chatList = tryConvertToTdObject(json['chat_list']);
  }
}

@reflector
class DeleteChatFilter extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteChatFilter';

  int chatFilterId;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
  };

  DeleteChatFilter(
    this.chatFilterId,
  );

  DeleteChatFilter.fromJson(Map<String, dynamic> json) {
    chatFilterId = tryConvertToTdObject(json['chat_filter_id']);
  }
}

@reflector
class ReorderChatFilters extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reorderChatFilters';

  List<int> chatFilterIds;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_ids': chatFilterIds,
  };

  ReorderChatFilters(
    this.chatFilterIds,
  );

  ReorderChatFilters.fromJson(Map<String, dynamic> json) {
    chatFilterIds = tryConvertToTdObject(json['chat_filter_ids']);
  }
}

@reflector
class SetChatTitle extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatTitle';

  int chatId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
  };

  SetChatTitle(
    this.chatId,
    this.title,
  );

  SetChatTitle.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class SetChatPhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatPhoto';

  int chatId;
  InputChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'photo': photo,
  };

  SetChatPhoto(
    this.chatId,
    this.photo,
  );

  SetChatPhoto.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class SetChatMessageTtlSetting extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatMessageTtlSetting';

  int chatId;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'ttl': ttl,
  };

  SetChatMessageTtlSetting(
    this.chatId,
    this.ttl,
  );

  SetChatMessageTtlSetting.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class SetChatPermissions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatPermissions';

  int chatId;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'permissions': permissions,
  };

  SetChatPermissions(
    this.chatId,
    this.permissions,
  );

  SetChatPermissions.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    permissions = tryConvertToTdObject(json['permissions']);
  }
}

@reflector
class SetChatTheme extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatTheme';

  int chatId;
  String themeName;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'theme_name': themeName,
  };

  SetChatTheme(
    this.chatId,
    this.themeName,
  );

  SetChatTheme.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    themeName = tryConvertToTdObject(json['theme_name']);
  }
}

@reflector
class SetChatDraftMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatDraftMessage';

  int chatId;
  int messageThreadId;
  DraftMessage draftMessage;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'draft_message': draftMessage,
  };

  SetChatDraftMessage(
    this.chatId,
    this.messageThreadId,
    this.draftMessage,
  );

  SetChatDraftMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    draftMessage = tryConvertToTdObject(json['draft_message']);
  }
}

@reflector
class SetChatNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatNotificationSettings';

  int chatId;
  ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'notification_settings': notificationSettings,
  };

  SetChatNotificationSettings(
    this.chatId,
    this.notificationSettings,
  );

  SetChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
  }
}

@reflector
class ToggleChatIsMarkedAsUnread extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleChatIsMarkedAsUnread';

  int chatId;
  bool isMarkedAsUnread;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  ToggleChatIsMarkedAsUnread(
    this.chatId,
    this.isMarkedAsUnread,
  );

  ToggleChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isMarkedAsUnread = tryConvertToTdObject(json['is_marked_as_unread']);
  }
}

@reflector
class ToggleChatDefaultDisableNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleChatDefaultDisableNotification';

  int chatId;
  bool defaultDisableNotification;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  ToggleChatDefaultDisableNotification(
    this.chatId,
    this.defaultDisableNotification,
  );

  ToggleChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    defaultDisableNotification = tryConvertToTdObject(json['default_disable_notification']);
  }
}

@reflector
class SetChatClientData extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatClientData';

  int chatId;
  String clientData;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'client_data': clientData,
  };

  SetChatClientData(
    this.chatId,
    this.clientData,
  );

  SetChatClientData.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    clientData = tryConvertToTdObject(json['client_data']);
  }
}

@reflector
class SetChatDescription extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatDescription';

  int chatId;
  String description;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'description': description,
  };

  SetChatDescription(
    this.chatId,
    this.description,
  );

  SetChatDescription.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class SetChatDiscussionGroup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatDiscussionGroup';

  int chatId;
  int discussionChatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'discussion_chat_id': discussionChatId,
  };

  SetChatDiscussionGroup(
    this.chatId,
    this.discussionChatId,
  );

  SetChatDiscussionGroup.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    discussionChatId = tryConvertToTdObject(json['discussion_chat_id']);
  }
}

@reflector
class SetChatLocation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatLocation';

  int chatId;
  ChatLocation location;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'location': location,
  };

  SetChatLocation(
    this.chatId,
    this.location,
  );

  SetChatLocation.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    location = tryConvertToTdObject(json['location']);
  }
}

@reflector
class SetChatSlowModeDelay extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatSlowModeDelay';

  int chatId;
  int slowModeDelay;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'slow_mode_delay': slowModeDelay,
  };

  SetChatSlowModeDelay(
    this.chatId,
    this.slowModeDelay,
  );

  SetChatSlowModeDelay.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    slowModeDelay = tryConvertToTdObject(json['slow_mode_delay']);
  }
}

@reflector
class PinChatMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'pinChatMessage';

  int chatId;
  int messageId;
  bool disableNotification;
  bool onlyForSelf;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'disable_notification': disableNotification,
    'only_for_self': onlyForSelf,
  };

  PinChatMessage(
    this.chatId,
    this.messageId,
    this.disableNotification,
    this.onlyForSelf,
  );

  PinChatMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    disableNotification = tryConvertToTdObject(json['disable_notification']);
    onlyForSelf = tryConvertToTdObject(json['only_for_self']);
  }
}

@reflector
class UnpinChatMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'unpinChatMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UnpinChatMessage(
    this.chatId,
    this.messageId,
  );

  UnpinChatMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class UnpinAllChatMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'unpinAllChatMessages';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  UnpinAllChatMessages(
    this.chatId,
  );

  UnpinAllChatMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class JoinChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'joinChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  JoinChat(
    this.chatId,
  );

  JoinChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class LeaveChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'leaveChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  LeaveChat(
    this.chatId,
  );

  LeaveChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class AddChatMember extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addChatMember';

  int chatId;
  int userId;
  int forwardLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
    'forward_limit': forwardLimit,
  };

  AddChatMember(
    this.chatId,
    this.userId,
    this.forwardLimit,
  );

  AddChatMember.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
    forwardLimit = tryConvertToTdObject(json['forward_limit']);
  }
}

@reflector
class AddChatMembers extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addChatMembers';

  int chatId;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_ids': userIds,
  };

  AddChatMembers(
    this.chatId,
    this.userIds,
  );

  AddChatMembers.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class SetChatMemberStatus extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setChatMemberStatus';

  int chatId;
  MessageSender memberId;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'member_id': memberId,
    'status': status,
  };

  SetChatMemberStatus(
    this.chatId,
    this.memberId,
    this.status,
  );

  SetChatMemberStatus.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    memberId = tryConvertToTdObject(json['member_id']);
    status = tryConvertToTdObject(json['status']);
  }
}

@reflector
class BanChatMember extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'banChatMember';

  int chatId;
  MessageSender memberId;
  int bannedUntilDate;
  bool revokeMessages;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'member_id': memberId,
    'banned_until_date': bannedUntilDate,
    'revoke_messages': revokeMessages,
  };

  BanChatMember(
    this.chatId,
    this.memberId,
    this.bannedUntilDate,
    this.revokeMessages,
  );

  BanChatMember.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    memberId = tryConvertToTdObject(json['member_id']);
    bannedUntilDate = tryConvertToTdObject(json['banned_until_date']);
    revokeMessages = tryConvertToTdObject(json['revoke_messages']);
  }
}

@reflector
class TransferChatOwnership extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'transferChatOwnership';

  int chatId;
  int userId;
  String password;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
    'password': password,
  };

  TransferChatOwnership(
    this.chatId,
    this.userId,
    this.password,
  );

  TransferChatOwnership.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class ClearAllDraftMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearAllDraftMessages';

  bool excludeSecretChats;

  @override
  Map<String, dynamic> get params => {
    'exclude_secret_chats': excludeSecretChats,
  };

  ClearAllDraftMessages(
    this.excludeSecretChats,
  );

  ClearAllDraftMessages.fromJson(Map<String, dynamic> json) {
    excludeSecretChats = tryConvertToTdObject(json['exclude_secret_chats']);
  }
}

@reflector
class SetScopeNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setScopeNotificationSettings';

  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'notification_settings': notificationSettings,
  };

  SetScopeNotificationSettings(
    this.scope,
    this.notificationSettings,
  );

  SetScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
  }
}

@reflector
class ResetAllNotificationSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resetAllNotificationSettings';

  @override
  Map<String, dynamic> get params => {};

  ResetAllNotificationSettings();

  ResetAllNotificationSettings.fromJson(Map<String, dynamic> json);
}

@reflector
class ToggleChatIsPinned extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleChatIsPinned';

  ChatList chatList;
  int chatId;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'chat_id': chatId,
    'is_pinned': isPinned,
  };

  ToggleChatIsPinned(
    this.chatList,
    this.chatId,
    this.isPinned,
  );

  ToggleChatIsPinned.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    chatId = tryConvertToTdObject(json['chat_id']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class SetPinnedChats extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setPinnedChats';

  ChatList chatList;
  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'chat_ids': chatIds,
  };

  SetPinnedChats(
    this.chatList,
    this.chatIds,
  );

  SetPinnedChats.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    chatIds = tryConvertToTdObject(json['chat_ids']);
  }
}

@reflector
class CancelDownloadFile extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'cancelDownloadFile';

  int fileId;
  bool onlyIfPending;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'only_if_pending': onlyIfPending,
  };

  CancelDownloadFile(
    this.fileId,
    this.onlyIfPending,
  );

  CancelDownloadFile.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
    onlyIfPending = tryConvertToTdObject(json['only_if_pending']);
  }
}

@reflector
class CancelUploadFile extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'cancelUploadFile';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  CancelUploadFile(
    this.fileId,
  );

  CancelUploadFile.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
  }
}

@reflector
class WriteGeneratedFilePart extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'writeGeneratedFilePart';

  int generationId;
  int offset;
  String data;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'offset': offset,
    'data': data,
  };

  WriteGeneratedFilePart(
    this.generationId,
    this.offset,
    this.data,
  );

  WriteGeneratedFilePart.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
    offset = tryConvertToTdObject(json['offset']);
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class SetFileGenerationProgress extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setFileGenerationProgress';

  int generationId;
  int expectedSize;
  int localPrefixSize;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'expected_size': expectedSize,
    'local_prefix_size': localPrefixSize,
  };

  SetFileGenerationProgress(
    this.generationId,
    this.expectedSize,
    this.localPrefixSize,
  );

  SetFileGenerationProgress.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
    expectedSize = tryConvertToTdObject(json['expected_size']);
    localPrefixSize = tryConvertToTdObject(json['local_prefix_size']);
  }
}

@reflector
class FinishFileGeneration extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'finishFileGeneration';

  int generationId;
  Error error;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'error': error,
  };

  FinishFileGeneration(
    this.generationId,
    this.error,
  );

  FinishFileGeneration.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
    error = tryConvertToTdObject(json['error']);
  }
}

@reflector
class DeleteFile extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteFile';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  DeleteFile(
    this.fileId,
  );

  DeleteFile.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
  }
}

@reflector
class ImportMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'importMessages';

  int chatId;
  InputFile messageFile;
  List<InputFile> attachedFiles;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_file': messageFile,
    'attached_files': attachedFiles,
  };

  ImportMessages(
    this.chatId,
    this.messageFile,
    this.attachedFiles,
  );

  ImportMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageFile = tryConvertToTdObject(json['message_file']);
    attachedFiles = tryConvertToTdObject(json['attached_files']);
  }
}

@reflector
class DeleteRevokedChatInviteLink extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteRevokedChatInviteLink';

  int chatId;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  DeleteRevokedChatInviteLink(
    this.chatId,
    this.inviteLink,
  );

  DeleteRevokedChatInviteLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class DeleteAllRevokedChatInviteLinks extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteAllRevokedChatInviteLinks';

  int chatId;
  int creatorUserId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'creator_user_id': creatorUserId,
  };

  DeleteAllRevokedChatInviteLinks(
    this.chatId,
    this.creatorUserId,
  );

  DeleteAllRevokedChatInviteLinks.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    creatorUserId = tryConvertToTdObject(json['creator_user_id']);
  }
}

@reflector
class AcceptCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'acceptCall';

  int callId;
  CallProtocol protocol;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'protocol': protocol,
  };

  AcceptCall(
    this.callId,
    this.protocol,
  );

  AcceptCall.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
    protocol = tryConvertToTdObject(json['protocol']);
  }
}

@reflector
class SendCallSignalingData extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendCallSignalingData';

  int callId;
  String data;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'data': data,
  };

  SendCallSignalingData(
    this.callId,
    this.data,
  );

  SendCallSignalingData.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class DiscardCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'discardCall';

  int callId;
  bool isDisconnected;
  int duration;
  bool isVideo;
  int connectionId;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'is_disconnected': isDisconnected,
    'duration': duration,
    'is_video': isVideo,
    'connection_id': connectionId,
  };

  DiscardCall(
    this.callId,
    this.isDisconnected,
    this.duration,
    this.isVideo,
    this.connectionId,
  );

  DiscardCall.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
    isDisconnected = tryConvertToTdObject(json['is_disconnected']);
    duration = tryConvertToTdObject(json['duration']);
    isVideo = tryConvertToTdObject(json['is_video']);
    connectionId = tryConvertToTdObject(json['connection_id']);
  }
}

@reflector
class SendCallRating extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendCallRating';

  int callId;
  int rating;
  String comment;
  List<CallProblem> problems;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'rating': rating,
    'comment': comment,
    'problems': problems,
  };

  SendCallRating(
    this.callId,
    this.rating,
    this.comment,
    this.problems,
  );

  SendCallRating.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
    rating = tryConvertToTdObject(json['rating']);
    comment = tryConvertToTdObject(json['comment']);
    problems = tryConvertToTdObject(json['problems']);
  }
}

@reflector
class SendCallDebugInformation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendCallDebugInformation';

  int callId;
  String debugInformation;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'debug_information': debugInformation,
  };

  SendCallDebugInformation(
    this.callId,
    this.debugInformation,
  );

  SendCallDebugInformation.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
    debugInformation = tryConvertToTdObject(json['debug_information']);
  }
}

@reflector
class SetVoiceChatDefaultParticipant extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setVoiceChatDefaultParticipant';

  int chatId;
  MessageSender defaultParticipantId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_participant_id': defaultParticipantId,
  };

  SetVoiceChatDefaultParticipant(
    this.chatId,
    this.defaultParticipantId,
  );

  SetVoiceChatDefaultParticipant.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    defaultParticipantId = tryConvertToTdObject(json['default_participant_id']);
  }
}

@reflector
class StartScheduledGroupCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'startScheduledGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  StartScheduledGroupCall(
    this.groupCallId,
  );

  StartScheduledGroupCall.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class ToggleGroupCallEnabledStartNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallEnabledStartNotification';

  int groupCallId;
  bool enabledStartNotification;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'enabled_start_notification': enabledStartNotification,
  };

  ToggleGroupCallEnabledStartNotification(
    this.groupCallId,
    this.enabledStartNotification,
  );

  ToggleGroupCallEnabledStartNotification.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    enabledStartNotification = tryConvertToTdObject(json['enabled_start_notification']);
  }
}

@reflector
class ToggleGroupCallScreenSharingIsPaused extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallScreenSharingIsPaused';

  int groupCallId;
  bool isPaused;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'is_paused': isPaused,
  };

  ToggleGroupCallScreenSharingIsPaused(
    this.groupCallId,
    this.isPaused,
  );

  ToggleGroupCallScreenSharingIsPaused.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    isPaused = tryConvertToTdObject(json['is_paused']);
  }
}

@reflector
class EndGroupCallScreenSharing extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'endGroupCallScreenSharing';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  EndGroupCallScreenSharing(
    this.groupCallId,
  );

  EndGroupCallScreenSharing.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class SetGroupCallTitle extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setGroupCallTitle';

  int groupCallId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'title': title,
  };

  SetGroupCallTitle(
    this.groupCallId,
    this.title,
  );

  SetGroupCallTitle.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class ToggleGroupCallMuteNewParticipants extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallMuteNewParticipants';

  int groupCallId;
  bool muteNewParticipants;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'mute_new_participants': muteNewParticipants,
  };

  ToggleGroupCallMuteNewParticipants(
    this.groupCallId,
    this.muteNewParticipants,
  );

  ToggleGroupCallMuteNewParticipants.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    muteNewParticipants = tryConvertToTdObject(json['mute_new_participants']);
  }
}

@reflector
class RevokeGroupCallInviteLink extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'revokeGroupCallInviteLink';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  RevokeGroupCallInviteLink(
    this.groupCallId,
  );

  RevokeGroupCallInviteLink.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class InviteGroupCallParticipants extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'inviteGroupCallParticipants';

  int groupCallId;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'user_ids': userIds,
  };

  InviteGroupCallParticipants(
    this.groupCallId,
    this.userIds,
  );

  InviteGroupCallParticipants.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class StartGroupCallRecording extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'startGroupCallRecording';

  int groupCallId;
  String title;
  bool recordVideo;
  bool usePortraitOrientation;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'title': title,
    'record_video': recordVideo,
    'use_portrait_orientation': usePortraitOrientation,
  };

  StartGroupCallRecording(
    this.groupCallId,
    this.title,
    this.recordVideo,
    this.usePortraitOrientation,
  );

  StartGroupCallRecording.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    title = tryConvertToTdObject(json['title']);
    recordVideo = tryConvertToTdObject(json['record_video']);
    usePortraitOrientation = tryConvertToTdObject(json['use_portrait_orientation']);
  }
}

@reflector
class EndGroupCallRecording extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'endGroupCallRecording';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  EndGroupCallRecording(
    this.groupCallId,
  );

  EndGroupCallRecording.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class ToggleGroupCallIsMyVideoPaused extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallIsMyVideoPaused';

  int groupCallId;
  bool isMyVideoPaused;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'is_my_video_paused': isMyVideoPaused,
  };

  ToggleGroupCallIsMyVideoPaused(
    this.groupCallId,
    this.isMyVideoPaused,
  );

  ToggleGroupCallIsMyVideoPaused.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    isMyVideoPaused = tryConvertToTdObject(json['is_my_video_paused']);
  }
}

@reflector
class ToggleGroupCallIsMyVideoEnabled extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallIsMyVideoEnabled';

  int groupCallId;
  bool isMyVideoEnabled;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'is_my_video_enabled': isMyVideoEnabled,
  };

  ToggleGroupCallIsMyVideoEnabled(
    this.groupCallId,
    this.isMyVideoEnabled,
  );

  ToggleGroupCallIsMyVideoEnabled.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    isMyVideoEnabled = tryConvertToTdObject(json['is_my_video_enabled']);
  }
}

@reflector
class SetGroupCallParticipantIsSpeaking extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setGroupCallParticipantIsSpeaking';

  int groupCallId;
  int audioSource;
  bool isSpeaking;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'audio_source': audioSource,
    'is_speaking': isSpeaking,
  };

  SetGroupCallParticipantIsSpeaking(
    this.groupCallId,
    this.audioSource,
    this.isSpeaking,
  );

  SetGroupCallParticipantIsSpeaking.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    audioSource = tryConvertToTdObject(json['audio_source']);
    isSpeaking = tryConvertToTdObject(json['is_speaking']);
  }
}

@reflector
class ToggleGroupCallParticipantIsMuted extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallParticipantIsMuted';

  int groupCallId;
  MessageSender participantId;
  bool isMuted;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'is_muted': isMuted,
  };

  ToggleGroupCallParticipantIsMuted(
    this.groupCallId,
    this.participantId,
    this.isMuted,
  );

  ToggleGroupCallParticipantIsMuted.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    participantId = tryConvertToTdObject(json['participant_id']);
    isMuted = tryConvertToTdObject(json['is_muted']);
  }
}

@reflector
class SetGroupCallParticipantVolumeLevel extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setGroupCallParticipantVolumeLevel';

  int groupCallId;
  MessageSender participantId;
  int volumeLevel;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'volume_level': volumeLevel,
  };

  SetGroupCallParticipantVolumeLevel(
    this.groupCallId,
    this.participantId,
    this.volumeLevel,
  );

  SetGroupCallParticipantVolumeLevel.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    participantId = tryConvertToTdObject(json['participant_id']);
    volumeLevel = tryConvertToTdObject(json['volume_level']);
  }
}

@reflector
class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleGroupCallParticipantIsHandRaised';

  int groupCallId;
  MessageSender participantId;
  bool isHandRaised;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'is_hand_raised': isHandRaised,
  };

  ToggleGroupCallParticipantIsHandRaised(
    this.groupCallId,
    this.participantId,
    this.isHandRaised,
  );

  ToggleGroupCallParticipantIsHandRaised.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    participantId = tryConvertToTdObject(json['participant_id']);
    isHandRaised = tryConvertToTdObject(json['is_hand_raised']);
  }
}

@reflector
class LoadGroupCallParticipants extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'loadGroupCallParticipants';

  int groupCallId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'limit': limit,
  };

  LoadGroupCallParticipants(
    this.groupCallId,
    this.limit,
  );

  LoadGroupCallParticipants.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class LeaveGroupCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'leaveGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  LeaveGroupCall(
    this.groupCallId,
  );

  LeaveGroupCall.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class DiscardGroupCall extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'discardGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  DiscardGroupCall(
    this.groupCallId,
  );

  DiscardGroupCall.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class ToggleMessageSenderIsBlocked extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleMessageSenderIsBlocked';

  MessageSender sender;
  bool isBlocked;

  @override
  Map<String, dynamic> get params => {
    'sender': sender,
    'is_blocked': isBlocked,
  };

  ToggleMessageSenderIsBlocked(
    this.sender,
    this.isBlocked,
  );

  ToggleMessageSenderIsBlocked.fromJson(Map<String, dynamic> json) {
    sender = tryConvertToTdObject(json['sender']);
    isBlocked = tryConvertToTdObject(json['is_blocked']);
  }
}

@reflector
class BlockMessageSenderFromReplies extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'blockMessageSenderFromReplies';

  int messageId;
  bool deleteMessage;
  bool deleteAllMessages;
  bool reportSpam;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'delete_message': deleteMessage,
    'delete_all_messages': deleteAllMessages,
    'report_spam': reportSpam,
  };

  BlockMessageSenderFromReplies(
    this.messageId,
    this.deleteMessage,
    this.deleteAllMessages,
    this.reportSpam,
  );

  BlockMessageSenderFromReplies.fromJson(Map<String, dynamic> json) {
    messageId = tryConvertToTdObject(json['message_id']);
    deleteMessage = tryConvertToTdObject(json['delete_message']);
    deleteAllMessages = tryConvertToTdObject(json['delete_all_messages']);
    reportSpam = tryConvertToTdObject(json['report_spam']);
  }
}

@reflector
class AddContact extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addContact';

  Contact contact;
  bool sharePhoneNumber;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
    'share_phone_number': sharePhoneNumber,
  };

  AddContact(
    this.contact,
    this.sharePhoneNumber,
  );

  AddContact.fromJson(Map<String, dynamic> json) {
    contact = tryConvertToTdObject(json['contact']);
    sharePhoneNumber = tryConvertToTdObject(json['share_phone_number']);
  }
}

@reflector
class RemoveContacts extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeContacts';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  RemoveContacts(
    this.userIds,
  );

  RemoveContacts.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class ClearImportedContacts extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearImportedContacts';

  @override
  Map<String, dynamic> get params => {};

  ClearImportedContacts();

  ClearImportedContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class SharePhoneNumber extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sharePhoneNumber';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  SharePhoneNumber(
    this.userId,
  );

  SharePhoneNumber.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class ChangeStickerSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'changeStickerSet';

  int setId;
  bool isInstalled;
  bool isArchived;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
    'is_installed': isInstalled,
    'is_archived': isArchived,
  };

  ChangeStickerSet(
    this.setId,
    this.isInstalled,
    this.isArchived,
  );

  ChangeStickerSet.fromJson(Map<String, dynamic> json) {
    setId = tryConvertToTdObject(json['set_id']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    isArchived = tryConvertToTdObject(json['is_archived']);
  }
}

@reflector
class ViewTrendingStickerSets extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'viewTrendingStickerSets';

  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_ids': stickerSetIds,
  };

  ViewTrendingStickerSets(
    this.stickerSetIds,
  );

  ViewTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    stickerSetIds = tryConvertToTdObject(json['sticker_set_ids']);
  }
}

@reflector
class ReorderInstalledStickerSets extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reorderInstalledStickerSets';

  bool isMasks;
  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds,
  };

  ReorderInstalledStickerSets(
    this.isMasks,
    this.stickerSetIds,
  );

  ReorderInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = tryConvertToTdObject(json['is_masks']);
    stickerSetIds = tryConvertToTdObject(json['sticker_set_ids']);
  }
}

@reflector
class RemoveRecentSticker extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeRecentSticker';

  bool isAttached;
  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker': sticker,
  };

  RemoveRecentSticker(
    this.isAttached,
    this.sticker,
  );

  RemoveRecentSticker.fromJson(Map<String, dynamic> json) {
    isAttached = tryConvertToTdObject(json['is_attached']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class ClearRecentStickers extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'clearRecentStickers';

  bool isAttached;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
  };

  ClearRecentStickers(
    this.isAttached,
  );

  ClearRecentStickers.fromJson(Map<String, dynamic> json) {
    isAttached = tryConvertToTdObject(json['is_attached']);
  }
}

@reflector
class AddFavoriteSticker extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addFavoriteSticker';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  AddFavoriteSticker(
    this.sticker,
  );

  AddFavoriteSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class RemoveFavoriteSticker extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeFavoriteSticker';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  RemoveFavoriteSticker(
    this.sticker,
  );

  RemoveFavoriteSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class AddSavedAnimation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addSavedAnimation';

  InputFile animation;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
  };

  AddSavedAnimation(
    this.animation,
  );

  AddSavedAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class RemoveSavedAnimation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeSavedAnimation';

  InputFile animation;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
  };

  RemoveSavedAnimation(
    this.animation,
  );

  RemoveSavedAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class RemoveRecentHashtag extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeRecentHashtag';

  String hashtag;

  @override
  Map<String, dynamic> get params => {
    'hashtag': hashtag,
  };

  RemoveRecentHashtag(
    this.hashtag,
  );

  RemoveRecentHashtag.fromJson(Map<String, dynamic> json) {
    hashtag = tryConvertToTdObject(json['hashtag']);
  }
}

@reflector
class SetProfilePhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setProfilePhoto';

  InputChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  SetProfilePhoto(
    this.photo,
  );

  SetProfilePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class DeleteProfilePhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteProfilePhoto';

  int profilePhotoId;

  @override
  Map<String, dynamic> get params => {
    'profile_photo_id': profilePhotoId,
  };

  DeleteProfilePhoto(
    this.profilePhotoId,
  );

  DeleteProfilePhoto.fromJson(Map<String, dynamic> json) {
    profilePhotoId = tryConvertToTdObject(json['profile_photo_id']);
  }
}

@reflector
class SetName extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setName';

  String firstName;
  String lastName;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'last_name': lastName,
  };

  SetName(
    this.firstName,
    this.lastName,
  );

  SetName.fromJson(Map<String, dynamic> json) {
    firstName = tryConvertToTdObject(json['first_name']);
    lastName = tryConvertToTdObject(json['last_name']);
  }
}

@reflector
class SetBio extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setBio';

  String bio;

  @override
  Map<String, dynamic> get params => {
    'bio': bio,
  };

  SetBio(
    this.bio,
  );

  SetBio.fromJson(Map<String, dynamic> json) {
    bio = tryConvertToTdObject(json['bio']);
  }
}

@reflector
class SetUsername extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setUsername';

  String username;

  @override
  Map<String, dynamic> get params => {
    'username': username,
  };

  SetUsername(
    this.username,
  );

  SetUsername.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
  }
}

@reflector
class SetLocation extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLocation';

  Location location;

  @override
  Map<String, dynamic> get params => {
    'location': location,
  };

  SetLocation(
    this.location,
  );

  SetLocation.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
  }
}

@reflector
class CheckChangePhoneNumberCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkChangePhoneNumberCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckChangePhoneNumberCode(
    this.code,
  );

  CheckChangePhoneNumberCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class SetCommands extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setCommands';

  BotCommandScope scope;
  String languageCode;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'language_code': languageCode,
    'commands': commands,
  };

  SetCommands(
    this.scope,
    this.languageCode,
    this.commands,
  );

  SetCommands.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    languageCode = tryConvertToTdObject(json['language_code']);
    commands = tryConvertToTdObject(json['commands']);
  }
}

@reflector
class DeleteCommands extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteCommands';

  BotCommandScope scope;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'language_code': languageCode,
  };

  DeleteCommands(
    this.scope,
    this.languageCode,
  );

  DeleteCommands.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    languageCode = tryConvertToTdObject(json['language_code']);
  }
}

@reflector
class TerminateSession extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'terminateSession';

  int sessionId;

  @override
  Map<String, dynamic> get params => {
    'session_id': sessionId,
  };

  TerminateSession(
    this.sessionId,
  );

  TerminateSession.fromJson(Map<String, dynamic> json) {
    sessionId = tryConvertToTdObject(json['session_id']);
  }
}

@reflector
class TerminateAllOtherSessions extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'terminateAllOtherSessions';

  @override
  Map<String, dynamic> get params => {};

  TerminateAllOtherSessions();

  TerminateAllOtherSessions.fromJson(Map<String, dynamic> json);
}

@reflector
class DisconnectWebsite extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'disconnectWebsite';

  int websiteId;

  @override
  Map<String, dynamic> get params => {
    'website_id': websiteId,
  };

  DisconnectWebsite(
    this.websiteId,
  );

  DisconnectWebsite.fromJson(Map<String, dynamic> json) {
    websiteId = tryConvertToTdObject(json['website_id']);
  }
}

@reflector
class DisconnectAllWebsites extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'disconnectAllWebsites';

  @override
  Map<String, dynamic> get params => {};

  DisconnectAllWebsites();

  DisconnectAllWebsites.fromJson(Map<String, dynamic> json);
}

@reflector
class SetSupergroupUsername extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setSupergroupUsername';

  int supergroupId;
  String username;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'username': username,
  };

  SetSupergroupUsername(
    this.supergroupId,
    this.username,
  );

  SetSupergroupUsername.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    username = tryConvertToTdObject(json['username']);
  }
}

@reflector
class SetSupergroupStickerSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setSupergroupStickerSet';

  int supergroupId;
  int stickerSetId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'sticker_set_id': stickerSetId,
  };

  SetSupergroupStickerSet(
    this.supergroupId,
    this.stickerSetId,
  );

  SetSupergroupStickerSet.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    stickerSetId = tryConvertToTdObject(json['sticker_set_id']);
  }
}

@reflector
class ToggleSupergroupSignMessages extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleSupergroupSignMessages';

  int supergroupId;
  bool signMessages;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'sign_messages': signMessages,
  };

  ToggleSupergroupSignMessages(
    this.supergroupId,
    this.signMessages,
  );

  ToggleSupergroupSignMessages.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    signMessages = tryConvertToTdObject(json['sign_messages']);
  }
}

@reflector
class ToggleSupergroupIsAllHistoryAvailable extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleSupergroupIsAllHistoryAvailable';

  int supergroupId;
  bool isAllHistoryAvailable;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'is_all_history_available': isAllHistoryAvailable,
  };

  ToggleSupergroupIsAllHistoryAvailable(
    this.supergroupId,
    this.isAllHistoryAvailable,
  );

  ToggleSupergroupIsAllHistoryAvailable.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    isAllHistoryAvailable = tryConvertToTdObject(json['is_all_history_available']);
  }
}

@reflector
class ToggleSupergroupIsBroadcastGroup extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'toggleSupergroupIsBroadcastGroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  ToggleSupergroupIsBroadcastGroup(
    this.supergroupId,
  );

  ToggleSupergroupIsBroadcastGroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class ReportSupergroupSpam extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reportSupergroupSpam';

  int supergroupId;
  int userId;
  List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'user_id': userId,
    'message_ids': messageIds,
  };

  ReportSupergroupSpam(
    this.supergroupId,
    this.userId,
    this.messageIds,
  );

  ReportSupergroupSpam.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    userId = tryConvertToTdObject(json['user_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
  }
}

@reflector
class CloseSecretChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'closeSecretChat';

  int secretChatId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
  };

  CloseSecretChat(
    this.secretChatId,
  );

  CloseSecretChat.fromJson(Map<String, dynamic> json) {
    secretChatId = tryConvertToTdObject(json['secret_chat_id']);
  }
}

@reflector
class DeleteSavedOrderInfo extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteSavedOrderInfo';

  @override
  Map<String, dynamic> get params => {};

  DeleteSavedOrderInfo();

  DeleteSavedOrderInfo.fromJson(Map<String, dynamic> json);
}

@reflector
class DeleteSavedCredentials extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteSavedCredentials';

  @override
  Map<String, dynamic> get params => {};

  DeleteSavedCredentials();

  DeleteSavedCredentials.fromJson(Map<String, dynamic> json);
}

@reflector
class RemoveBackground extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeBackground';

  int backgroundId;

  @override
  Map<String, dynamic> get params => {
    'background_id': backgroundId,
  };

  RemoveBackground(
    this.backgroundId,
  );

  RemoveBackground.fromJson(Map<String, dynamic> json) {
    backgroundId = tryConvertToTdObject(json['background_id']);
  }
}

@reflector
class ResetBackgrounds extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resetBackgrounds';

  @override
  Map<String, dynamic> get params => {};

  ResetBackgrounds();

  ResetBackgrounds.fromJson(Map<String, dynamic> json);
}

@reflector
class SynchronizeLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'synchronizeLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  SynchronizeLanguagePack(
    this.languagePackId,
  );

  SynchronizeLanguagePack.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
  }
}

@reflector
class AddCustomServerLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addCustomServerLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  AddCustomServerLanguagePack(
    this.languagePackId,
  );

  AddCustomServerLanguagePack.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
  }
}

@reflector
class SetCustomLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setCustomLanguagePack';

  LanguagePackInfo info;
  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'info': info,
    'strings': strings,
  };

  SetCustomLanguagePack(
    this.info,
    this.strings,
  );

  SetCustomLanguagePack.fromJson(Map<String, dynamic> json) {
    info = tryConvertToTdObject(json['info']);
    strings = tryConvertToTdObject(json['strings']);
  }
}

@reflector
class EditCustomLanguagePackInfo extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'editCustomLanguagePackInfo';

  LanguagePackInfo info;

  @override
  Map<String, dynamic> get params => {
    'info': info,
  };

  EditCustomLanguagePackInfo(
    this.info,
  );

  EditCustomLanguagePackInfo.fromJson(Map<String, dynamic> json) {
    info = tryConvertToTdObject(json['info']);
  }
}

@reflector
class SetCustomLanguagePackString extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setCustomLanguagePackString';

  String languagePackId;
  LanguagePackString newString;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
    'new_string': newString,
  };

  SetCustomLanguagePackString(
    this.languagePackId,
    this.newString,
  );

  SetCustomLanguagePackString.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
    newString = tryConvertToTdObject(json['new_string']);
  }
}

@reflector
class DeleteLanguagePack extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  DeleteLanguagePack(
    this.languagePackId,
  );

  DeleteLanguagePack.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
  }
}

@reflector
class ProcessPushNotification extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'processPushNotification';

  String payload;

  @override
  Map<String, dynamic> get params => {
    'payload': payload,
  };

  ProcessPushNotification(
    this.payload,
  );

  ProcessPushNotification.fromJson(Map<String, dynamic> json) {
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class SetUserPrivacySettingRules extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setUserPrivacySettingRules';

  UserPrivacySetting setting;
  UserPrivacySettingRules rules;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
    'rules': rules,
  };

  SetUserPrivacySettingRules(
    this.setting,
    this.rules,
  );

  SetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    setting = tryConvertToTdObject(json['setting']);
    rules = tryConvertToTdObject(json['rules']);
  }
}

@reflector
class SetOption extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setOption';

  String name;
  OptionValue value;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'value': value,
  };

  SetOption(
    this.name,
    this.value,
  );

  SetOption.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class SetAccountTtl extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAccountTtl';

  AccountTtl ttl;

  @override
  Map<String, dynamic> get params => {
    'ttl': ttl,
  };

  SetAccountTtl(
    this.ttl,
  );

  SetAccountTtl.fromJson(Map<String, dynamic> json) {
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class DeleteAccount extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deleteAccount';

  String reason;

  @override
  Map<String, dynamic> get params => {
    'reason': reason,
  };

  DeleteAccount(
    this.reason,
  );

  DeleteAccount.fromJson(Map<String, dynamic> json) {
    reason = tryConvertToTdObject(json['reason']);
  }
}

@reflector
class RemoveChatActionBar extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeChatActionBar';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  RemoveChatActionBar(
    this.chatId,
  );

  RemoveChatActionBar.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class ReportChat extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reportChat';

  int chatId;
  List<int> messageIds;
  ChatReportReason reason;
  String text;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'reason': reason,
    'text': text,
  };

  ReportChat(
    this.chatId,
    this.messageIds,
    this.reason,
    this.text,
  );

  ReportChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
    reason = tryConvertToTdObject(json['reason']);
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class ReportChatPhoto extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'reportChatPhoto';

  int chatId;
  int fileId;
  ChatReportReason reason;
  String text;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'file_id': fileId,
    'reason': reason,
    'text': text,
  };

  ReportChatPhoto(
    this.chatId,
    this.fileId,
    this.reason,
    this.text,
  );

  ReportChatPhoto.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    fileId = tryConvertToTdObject(json['file_id']);
    reason = tryConvertToTdObject(json['reason']);
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class SetNetworkType extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setNetworkType';

  NetworkType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  SetNetworkType(
    this.type,
  );

  SetNetworkType.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class AddNetworkStatistics extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addNetworkStatistics';

  NetworkStatisticsEntry entry;

  @override
  Map<String, dynamic> get params => {
    'entry': entry,
  };

  AddNetworkStatistics(
    this.entry,
  );

  AddNetworkStatistics.fromJson(Map<String, dynamic> json) {
    entry = tryConvertToTdObject(json['entry']);
  }
}

@reflector
class ResetNetworkStatistics extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'resetNetworkStatistics';

  @override
  Map<String, dynamic> get params => {};

  ResetNetworkStatistics();

  ResetNetworkStatistics.fromJson(Map<String, dynamic> json);
}

@reflector
class SetAutoDownloadSettings extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAutoDownloadSettings';

  AutoDownloadSettings settings;
  NetworkType type;

  @override
  Map<String, dynamic> get params => {
    'settings': settings,
    'type': type,
  };

  SetAutoDownloadSettings(
    this.settings,
    this.type,
  );

  SetAutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    settings = tryConvertToTdObject(json['settings']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class DeletePassportElement extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'deletePassportElement';

  PassportElementType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  DeletePassportElement(
    this.type,
  );

  DeletePassportElement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class SetPassportElementErrors extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setPassportElementErrors';

  int userId;
  List<InputPassportElementError> errors;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'errors': errors,
  };

  SetPassportElementErrors(
    this.userId,
    this.errors,
  );

  SetPassportElementErrors.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    errors = tryConvertToTdObject(json['errors']);
  }
}

@reflector
class CheckPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkPhoneNumberVerificationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckPhoneNumberVerificationCode(
    this.code,
  );

  CheckPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class CheckEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkEmailAddressVerificationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckEmailAddressVerificationCode(
    this.code,
  );

  CheckEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class SendPassportAuthorizationForm extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'sendPassportAuthorizationForm';

  int autorizationFormId;
  List<PassportElementType> types;

  @override
  Map<String, dynamic> get params => {
    'autorization_form_id': autorizationFormId,
    'types': types,
  };

  SendPassportAuthorizationForm(
    this.autorizationFormId,
    this.types,
  );

  SendPassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    autorizationFormId = tryConvertToTdObject(json['autorization_form_id']);
    types = tryConvertToTdObject(json['types']);
  }
}

@reflector
class CheckPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'checkPhoneNumberConfirmationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckPhoneNumberConfirmationCode(
    this.code,
  );

  CheckPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class SetBotUpdatesStatus extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setBotUpdatesStatus';

  int pendingUpdateCount;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'pending_update_count': pendingUpdateCount,
    'error_message': errorMessage,
  };

  SetBotUpdatesStatus(
    this.pendingUpdateCount,
    this.errorMessage,
  );

  SetBotUpdatesStatus.fromJson(Map<String, dynamic> json) {
    pendingUpdateCount = tryConvertToTdObject(json['pending_update_count']);
    errorMessage = tryConvertToTdObject(json['error_message']);
  }
}

@reflector
class SetStickerPositionInSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setStickerPositionInSet';

  InputFile sticker;
  int position;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'position': position,
  };

  SetStickerPositionInSet(
    this.sticker,
    this.position,
  );

  SetStickerPositionInSet.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    position = tryConvertToTdObject(json['position']);
  }
}

@reflector
class RemoveStickerFromSet extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeStickerFromSet';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  RemoveStickerFromSet(
    this.sticker,
  );

  RemoveStickerFromSet.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class AcceptTermsOfService extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'acceptTermsOfService';

  String termsOfServiceId;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service_id': termsOfServiceId,
  };

  AcceptTermsOfService(
    this.termsOfServiceId,
  );

  AcceptTermsOfService.fromJson(Map<String, dynamic> json) {
    termsOfServiceId = tryConvertToTdObject(json['terms_of_service_id']);
  }
}

@reflector
class AnswerCustomQuery extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'answerCustomQuery';

  int customQueryId;
  String data;

  @override
  Map<String, dynamic> get params => {
    'custom_query_id': customQueryId,
    'data': data,
  };

  AnswerCustomQuery(
    this.customQueryId,
    this.data,
  );

  AnswerCustomQuery.fromJson(Map<String, dynamic> json) {
    customQueryId = tryConvertToTdObject(json['custom_query_id']);
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class SetAlarm extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setAlarm';

  double seconds;

  @override
  Map<String, dynamic> get params => {
    'seconds': seconds,
  };

  SetAlarm(
    this.seconds,
  );

  SetAlarm.fromJson(Map<String, dynamic> json) {
    seconds = tryConvertToTdObject(json['seconds']);
  }
}

@reflector
class SaveApplicationLogEvent extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'saveApplicationLogEvent';

  String type;
  int chatId;
  JsonValue data;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'chat_id': chatId,
    'data': data,
  };

  SaveApplicationLogEvent(
    this.type,
    this.chatId,
    this.data,
  );

  SaveApplicationLogEvent.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    chatId = tryConvertToTdObject(json['chat_id']);
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class EnableProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'enableProxy';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  EnableProxy(
    this.proxyId,
  );

  EnableProxy.fromJson(Map<String, dynamic> json) {
    proxyId = tryConvertToTdObject(json['proxy_id']);
  }
}

@reflector
class DisableProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'disableProxy';

  @override
  Map<String, dynamic> get params => {};

  DisableProxy();

  DisableProxy.fromJson(Map<String, dynamic> json);
}

@reflector
class RemoveProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'removeProxy';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  RemoveProxy(
    this.proxyId,
  );

  RemoveProxy.fromJson(Map<String, dynamic> json) {
    proxyId = tryConvertToTdObject(json['proxy_id']);
  }
}

@reflector
class SetLogStream extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLogStream';

  LogStream logStream;

  @override
  Map<String, dynamic> get params => {
    'log_stream': logStream,
  };

  SetLogStream(
    this.logStream,
  );

  SetLogStream.fromJson(Map<String, dynamic> json) {
    logStream = tryConvertToTdObject(json['log_stream']);
  }
}

@reflector
class SetLogVerbosityLevel extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLogVerbosityLevel';

  int newVerbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'new_verbosity_level': newVerbosityLevel,
  };

  SetLogVerbosityLevel(
    this.newVerbosityLevel,
  );

  SetLogVerbosityLevel.fromJson(Map<String, dynamic> json) {
    newVerbosityLevel = tryConvertToTdObject(json['new_verbosity_level']);
  }
}

@reflector
class SetLogTagVerbosityLevel extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'setLogTagVerbosityLevel';

  String tag;
  int newVerbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'tag': tag,
    'new_verbosity_level': newVerbosityLevel,
  };

  SetLogTagVerbosityLevel(
    this.tag,
    this.newVerbosityLevel,
  );

  SetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) {
    tag = tryConvertToTdObject(json['tag']);
    newVerbosityLevel = tryConvertToTdObject(json['new_verbosity_level']);
  }
}

@reflector
class AddLogMessage extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'addLogMessage';

  int verbosityLevel;
  String text;

  @override
  Map<String, dynamic> get params => {
    'verbosity_level': verbosityLevel,
    'text': text,
  };

  AddLogMessage(
    this.verbosityLevel,
    this.text,
  );

  AddLogMessage.fromJson(Map<String, dynamic> json) {
    verbosityLevel = tryConvertToTdObject(json['verbosity_level']);
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class TestCallEmpty extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testCallEmpty';

  @override
  Map<String, dynamic> get params => {};

  TestCallEmpty();

  TestCallEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class TestNetwork extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testNetwork';

  @override
  Map<String, dynamic> get params => {};

  TestNetwork();

  TestNetwork.fromJson(Map<String, dynamic> json);
}

@reflector
class TestProxy extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testProxy';

  String server;
  int port;
  ProxyType type;
  int dcId;
  double timeout;

  @override
  Map<String, dynamic> get params => {
    'server': server,
    'port': port,
    'type': type,
    'dc_id': dcId,
    'timeout': timeout,
  };

  TestProxy(
    this.server,
    this.port,
    this.type,
    this.dcId,
    this.timeout,
  );

  TestProxy.fromJson(Map<String, dynamic> json) {
    server = tryConvertToTdObject(json['server']);
    port = tryConvertToTdObject(json['port']);
    type = tryConvertToTdObject(json['type']);
    dcId = tryConvertToTdObject(json['dc_id']);
    timeout = tryConvertToTdObject(json['timeout']);
  }
}

@reflector
class TestGetDifference extends TdFunction {
  @override
  Type get returnType => Ok;

  @override
  String get tdType => 'testGetDifference';

  @override
  Map<String, dynamic> get params => {};

  TestGetDifference();

  TestGetDifference.fromJson(Map<String, dynamic> json);
}

@reflector
class ConfirmQrCodeAuthentication extends TdFunction {
  @override
  Type get returnType => Session;

  @override
  String get tdType => 'confirmQrCodeAuthentication';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  ConfirmQrCodeAuthentication(
    this.link,
  );

  ConfirmQrCodeAuthentication.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
  }
}

@reflector
class GetCurrentState extends TdFunction {
  @override
  Type get returnType => Updates;

  @override
  String get tdType => 'getCurrentState';

  @override
  Map<String, dynamic> get params => {};

  GetCurrentState();

  GetCurrentState.fromJson(Map<String, dynamic> json);
}

@reflector
class GetPasswordState extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'getPasswordState';

  @override
  Map<String, dynamic> get params => {};

  GetPasswordState();

  GetPasswordState.fromJson(Map<String, dynamic> json);
}

@reflector
class SetPassword extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'setPassword';

  String oldPassword;
  String newPassword;
  String newHint;
  bool setRecoveryEmailAddress;
  String newRecoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'old_password': oldPassword,
    'new_password': newPassword,
    'new_hint': newHint,
    'set_recovery_email_address': setRecoveryEmailAddress,
    'new_recovery_email_address': newRecoveryEmailAddress,
  };

  SetPassword(
    this.oldPassword,
    this.newPassword,
    this.newHint,
    this.setRecoveryEmailAddress,
    this.newRecoveryEmailAddress,
  );

  SetPassword.fromJson(Map<String, dynamic> json) {
    oldPassword = tryConvertToTdObject(json['old_password']);
    newPassword = tryConvertToTdObject(json['new_password']);
    newHint = tryConvertToTdObject(json['new_hint']);
    setRecoveryEmailAddress = tryConvertToTdObject(json['set_recovery_email_address']);
    newRecoveryEmailAddress = tryConvertToTdObject(json['new_recovery_email_address']);
  }
}

@reflector
class SetRecoveryEmailAddress extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'setRecoveryEmailAddress';

  String password;
  String newRecoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'password': password,
    'new_recovery_email_address': newRecoveryEmailAddress,
  };

  SetRecoveryEmailAddress(
    this.password,
    this.newRecoveryEmailAddress,
  );

  SetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) {
    password = tryConvertToTdObject(json['password']);
    newRecoveryEmailAddress = tryConvertToTdObject(json['new_recovery_email_address']);
  }
}

@reflector
class CheckRecoveryEmailAddressCode extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'checkRecoveryEmailAddressCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  CheckRecoveryEmailAddressCode(
    this.code,
  );

  CheckRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class ResendRecoveryEmailAddressCode extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'resendRecoveryEmailAddressCode';

  @override
  Map<String, dynamic> get params => {};

  ResendRecoveryEmailAddressCode();

  ResendRecoveryEmailAddressCode.fromJson(Map<String, dynamic> json);
}

@reflector
class RecoverPassword extends TdFunction {
  @override
  Type get returnType => PasswordState;

  @override
  String get tdType => 'recoverPassword';

  String recoveryCode;
  String newPassword;
  String newHint;

  @override
  Map<String, dynamic> get params => {
    'recovery_code': recoveryCode,
    'new_password': newPassword,
    'new_hint': newHint,
  };

  RecoverPassword(
    this.recoveryCode,
    this.newPassword,
    this.newHint,
  );

  RecoverPassword.fromJson(Map<String, dynamic> json) {
    recoveryCode = tryConvertToTdObject(json['recovery_code']);
    newPassword = tryConvertToTdObject(json['new_password']);
    newHint = tryConvertToTdObject(json['new_hint']);
  }
}

@reflector
class GetRecoveryEmailAddress extends TdFunction {
  @override
  Type get returnType => RecoveryEmailAddress;

  @override
  String get tdType => 'getRecoveryEmailAddress';

  String password;

  @override
  Map<String, dynamic> get params => {
    'password': password,
  };

  GetRecoveryEmailAddress(
    this.password,
  );

  GetRecoveryEmailAddress.fromJson(Map<String, dynamic> json) {
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class RequestPasswordRecovery extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  String get tdType => 'requestPasswordRecovery';

  @override
  Map<String, dynamic> get params => {};

  RequestPasswordRecovery();

  RequestPasswordRecovery.fromJson(Map<String, dynamic> json);
}

@reflector
class SendEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  String get tdType => 'sendEmailAddressVerificationCode';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  SendEmailAddressVerificationCode(
    this.emailAddress,
  );

  SendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json) {
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

@reflector
class ResendEmailAddressVerificationCode extends TdFunction {
  @override
  Type get returnType => EmailAddressAuthenticationCodeInfo;

  @override
  String get tdType => 'resendEmailAddressVerificationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendEmailAddressVerificationCode();

  ResendEmailAddressVerificationCode.fromJson(Map<String, dynamic> json);
}

@reflector
class ResetPassword extends TdFunction {
  @override
  Type get returnType => ResetPasswordResult;

  @override
  String get tdType => 'resetPassword';

  @override
  Map<String, dynamic> get params => {};

  ResetPassword();

  ResetPassword.fromJson(Map<String, dynamic> json);
}

@reflector
class CreateTemporaryPassword extends TdFunction {
  @override
  Type get returnType => TemporaryPasswordState;

  @override
  String get tdType => 'createTemporaryPassword';

  String password;
  int validFor;

  @override
  Map<String, dynamic> get params => {
    'password': password,
    'valid_for': validFor,
  };

  CreateTemporaryPassword(
    this.password,
    this.validFor,
  );

  CreateTemporaryPassword.fromJson(Map<String, dynamic> json) {
    password = tryConvertToTdObject(json['password']);
    validFor = tryConvertToTdObject(json['valid_for']);
  }
}

@reflector
class GetTemporaryPasswordState extends TdFunction {
  @override
  Type get returnType => TemporaryPasswordState;

  @override
  String get tdType => 'getTemporaryPasswordState';

  @override
  Map<String, dynamic> get params => {};

  GetTemporaryPasswordState();

  GetTemporaryPasswordState.fromJson(Map<String, dynamic> json);
}

@reflector
class GetMe extends TdFunction {
  @override
  Type get returnType => User;

  @override
  String get tdType => 'getMe';

  @override
  Map<String, dynamic> get params => {};

  GetMe();

  GetMe.fromJson(Map<String, dynamic> json);
}

@reflector
class GetUser extends TdFunction {
  @override
  Type get returnType => User;

  @override
  String get tdType => 'getUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  GetUser(
    this.userId,
  );

  GetUser.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class GetSupportUser extends TdFunction {
  @override
  Type get returnType => User;

  @override
  String get tdType => 'getSupportUser';

  @override
  Map<String, dynamic> get params => {};

  GetSupportUser();

  GetSupportUser.fromJson(Map<String, dynamic> json);
}

@reflector
class GetUserFullInfo extends TdFunction {
  @override
  Type get returnType => UserFullInfo;

  @override
  String get tdType => 'getUserFullInfo';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  GetUserFullInfo(
    this.userId,
  );

  GetUserFullInfo.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class GetBasicGroup extends TdFunction {
  @override
  Type get returnType => BasicGroup;

  @override
  String get tdType => 'getBasicGroup';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  GetBasicGroup(
    this.basicGroupId,
  );

  GetBasicGroup.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
  }
}

@reflector
class GetBasicGroupFullInfo extends TdFunction {
  @override
  Type get returnType => BasicGroupFullInfo;

  @override
  String get tdType => 'getBasicGroupFullInfo';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  GetBasicGroupFullInfo(
    this.basicGroupId,
  );

  GetBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
  }
}

@reflector
class GetSupergroup extends TdFunction {
  @override
  Type get returnType => Supergroup;

  @override
  String get tdType => 'getSupergroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  GetSupergroup(
    this.supergroupId,
  );

  GetSupergroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class GetSupergroupFullInfo extends TdFunction {
  @override
  Type get returnType => SupergroupFullInfo;

  @override
  String get tdType => 'getSupergroupFullInfo';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  GetSupergroupFullInfo(
    this.supergroupId,
  );

  GetSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class GetSecretChat extends TdFunction {
  @override
  Type get returnType => SecretChat;

  @override
  String get tdType => 'getSecretChat';

  int secretChatId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
  };

  GetSecretChat(
    this.secretChatId,
  );

  GetSecretChat.fromJson(Map<String, dynamic> json) {
    secretChatId = tryConvertToTdObject(json['secret_chat_id']);
  }
}

@reflector
class GetChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'getChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChat(
    this.chatId,
  );

  GetChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class SearchPublicChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'searchPublicChat';

  String username;

  @override
  Map<String, dynamic> get params => {
    'username': username,
  };

  SearchPublicChat(
    this.username,
  );

  SearchPublicChat.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
  }
}

@reflector
class CreatePrivateChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createPrivateChat';

  int userId;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'force': force,
  };

  CreatePrivateChat(
    this.userId,
    this.force,
  );

  CreatePrivateChat.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    force = tryConvertToTdObject(json['force']);
  }
}

@reflector
class CreateBasicGroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createBasicGroupChat';

  int basicGroupId;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
    'force': force,
  };

  CreateBasicGroupChat(
    this.basicGroupId,
    this.force,
  );

  CreateBasicGroupChat.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
    force = tryConvertToTdObject(json['force']);
  }
}

@reflector
class CreateSupergroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createSupergroupChat';

  int supergroupId;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'force': force,
  };

  CreateSupergroupChat(
    this.supergroupId,
    this.force,
  );

  CreateSupergroupChat.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    force = tryConvertToTdObject(json['force']);
  }
}

@reflector
class CreateSecretChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createSecretChat';

  int secretChatId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
  };

  CreateSecretChat(
    this.secretChatId,
  );

  CreateSecretChat.fromJson(Map<String, dynamic> json) {
    secretChatId = tryConvertToTdObject(json['secret_chat_id']);
  }
}

@reflector
class CreateNewBasicGroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createNewBasicGroupChat';

  List<int> userIds;
  String title;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
    'title': title,
  };

  CreateNewBasicGroupChat(
    this.userIds,
    this.title,
  );

  CreateNewBasicGroupChat.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class CreateNewSupergroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createNewSupergroupChat';

  String title;
  bool isChannel;
  String description;
  ChatLocation location;
  bool forImport;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'is_channel': isChannel,
    'description': description,
    'location': location,
    'for_import': forImport,
  };

  CreateNewSupergroupChat(
    this.title,
    this.isChannel,
    this.description,
    this.location,
    this.forImport,
  );

  CreateNewSupergroupChat.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    isChannel = tryConvertToTdObject(json['is_channel']);
    description = tryConvertToTdObject(json['description']);
    location = tryConvertToTdObject(json['location']);
    forImport = tryConvertToTdObject(json['for_import']);
  }
}

@reflector
class CreateNewSecretChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'createNewSecretChat';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  CreateNewSecretChat(
    this.userId,
  );

  CreateNewSecretChat.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'upgradeBasicGroupChatToSupergroupChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  UpgradeBasicGroupChatToSupergroupChat(
    this.chatId,
  );

  UpgradeBasicGroupChatToSupergroupChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class JoinChatByInviteLink extends TdFunction {
  @override
  Type get returnType => Chat;

  @override
  String get tdType => 'joinChatByInviteLink';

  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  JoinChatByInviteLink(
    this.inviteLink,
  );

  JoinChatByInviteLink.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class GetMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessage(
    this.chatId,
    this.messageId,
  );

  GetMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetMessageLocally extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getMessageLocally';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessageLocally(
    this.chatId,
    this.messageId,
  );

  GetMessageLocally.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetRepliedMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getRepliedMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetRepliedMessage(
    this.chatId,
    this.messageId,
  );

  GetRepliedMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetChatPinnedMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getChatPinnedMessage';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatPinnedMessage(
    this.chatId,
  );

  GetChatPinnedMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetCallbackQueryMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getCallbackQueryMessage';

  int chatId;
  int messageId;
  int callbackQueryId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'callback_query_id': callbackQueryId,
  };

  GetCallbackQueryMessage(
    this.chatId,
    this.messageId,
    this.callbackQueryId,
  );

  GetCallbackQueryMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    callbackQueryId = tryConvertToTdObject(json['callback_query_id']);
  }
}

@reflector
class GetChatMessageByDate extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'getChatMessageByDate';

  int chatId;
  int date;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'date': date,
  };

  GetChatMessageByDate(
    this.chatId,
    this.date,
  );

  GetChatMessageByDate.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    date = tryConvertToTdObject(json['date']);
  }
}

@reflector
class SendMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'sendMessage';

  int chatId;
  int messageThreadId;
  int replyToMessageId;
  MessageSendOptions options;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  SendMessage(
    this.chatId,
    this.messageThreadId,
    this.replyToMessageId,
    this.options,
    this.replyMarkup,
    this.inputMessageContent,
  );

  SendMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    options = tryConvertToTdObject(json['options']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class SendBotStartMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'sendBotStartMessage';

  int botUserId;
  int chatId;
  String parameter;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'chat_id': chatId,
    'parameter': parameter,
  };

  SendBotStartMessage(
    this.botUserId,
    this.chatId,
    this.parameter,
  );

  SendBotStartMessage.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    chatId = tryConvertToTdObject(json['chat_id']);
    parameter = tryConvertToTdObject(json['parameter']);
  }
}

@reflector
class SendInlineQueryResultMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'sendInlineQueryResultMessage';

  int chatId;
  int messageThreadId;
  int replyToMessageId;
  MessageSendOptions options;
  int queryId;
  String resultId;
  bool hideViaBot;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options,
    'query_id': queryId,
    'result_id': resultId,
    'hide_via_bot': hideViaBot,
  };

  SendInlineQueryResultMessage(
    this.chatId,
    this.messageThreadId,
    this.replyToMessageId,
    this.options,
    this.queryId,
    this.resultId,
    this.hideViaBot,
  );

  SendInlineQueryResultMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    options = tryConvertToTdObject(json['options']);
    queryId = tryConvertToTdObject(json['query_id']);
    resultId = tryConvertToTdObject(json['result_id']);
    hideViaBot = tryConvertToTdObject(json['hide_via_bot']);
  }
}

@reflector
class AddLocalMessage extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'addLocalMessage';

  int chatId;
  MessageSender sender;
  int replyToMessageId;
  bool disableNotification;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'sender': sender,
    'reply_to_message_id': replyToMessageId,
    'disable_notification': disableNotification,
    'input_message_content': inputMessageContent,
  };

  AddLocalMessage(
    this.chatId,
    this.sender,
    this.replyToMessageId,
    this.disableNotification,
    this.inputMessageContent,
  );

  AddLocalMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    sender = tryConvertToTdObject(json['sender']);
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    disableNotification = tryConvertToTdObject(json['disable_notification']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class EditMessageText extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageText';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditMessageText(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditMessageText.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class EditMessageLiveLocation extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageLiveLocation';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  Location location;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'location': location,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  EditMessageLiveLocation(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.location,
    this.heading,
    this.proximityAlertRadius,
  );

  EditMessageLiveLocation.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    location = tryConvertToTdObject(json['location']);
    heading = tryConvertToTdObject(json['heading']);
    proximityAlertRadius = tryConvertToTdObject(json['proximity_alert_radius']);
  }
}

@reflector
class EditMessageMedia extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageMedia';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  EditMessageMedia(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.inputMessageContent,
  );

  EditMessageMedia.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class EditMessageCaption extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageCaption';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
    'caption': caption,
  };

  EditMessageCaption(
    this.chatId,
    this.messageId,
    this.replyMarkup,
    this.caption,
  );

  EditMessageCaption.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class EditMessageReplyMarkup extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'editMessageReplyMarkup';

  int chatId;
  int messageId;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'reply_markup': replyMarkup,
  };

  EditMessageReplyMarkup(
    this.chatId,
    this.messageId,
    this.replyMarkup,
  );

  EditMessageReplyMarkup.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class SetGameScore extends TdFunction {
  @override
  Type get returnType => Message;

  @override
  String get tdType => 'setGameScore';

  int chatId;
  int messageId;
  bool editMessage;
  int userId;
  int score;
  bool force;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'edit_message': editMessage,
    'user_id': userId,
    'score': score,
    'force': force,
  };

  SetGameScore(
    this.chatId,
    this.messageId,
    this.editMessage,
    this.userId,
    this.score,
    this.force,
  );

  SetGameScore.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    editMessage = tryConvertToTdObject(json['edit_message']);
    userId = tryConvertToTdObject(json['user_id']);
    score = tryConvertToTdObject(json['score']);
    force = tryConvertToTdObject(json['force']);
  }
}

@reflector
class GetMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getMessages';

  int chatId;
  List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
  };

  GetMessages(
    this.chatId,
    this.messageIds,
  );

  GetMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
  }
}

@reflector
class GetChatHistory extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getChatHistory';

  int chatId;
  int fromMessageId;
  int offset;
  int limit;
  bool onlyLocal;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    'only_local': onlyLocal,
  };

  GetChatHistory(
    this.chatId,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.onlyLocal,
  );

  GetChatHistory.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    fromMessageId = tryConvertToTdObject(json['from_message_id']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
    onlyLocal = tryConvertToTdObject(json['only_local']);
  }
}

@reflector
class GetMessageThreadHistory extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getMessageThreadHistory';

  int chatId;
  int messageId;
  int fromMessageId;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
  };

  GetMessageThreadHistory(
    this.chatId,
    this.messageId,
    this.fromMessageId,
    this.offset,
    this.limit,
  );

  GetMessageThreadHistory.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    fromMessageId = tryConvertToTdObject(json['from_message_id']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class SearchChatMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchChatMessages';

  int chatId;
  String query;
  MessageSender sender;
  int fromMessageId;
  int offset;
  int limit;
  SearchMessagesFilter filter;
  int messageThreadId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'sender': sender,
    'from_message_id': fromMessageId,
    'offset': offset,
    'limit': limit,
    'filter': filter,
    'message_thread_id': messageThreadId,
  };

  SearchChatMessages(
    this.chatId,
    this.query,
    this.sender,
    this.fromMessageId,
    this.offset,
    this.limit,
    this.filter,
    this.messageThreadId,
  );

  SearchChatMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    query = tryConvertToTdObject(json['query']);
    sender = tryConvertToTdObject(json['sender']);
    fromMessageId = tryConvertToTdObject(json['from_message_id']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
    filter = tryConvertToTdObject(json['filter']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
  }
}

@reflector
class SearchMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchMessages';

  ChatList chatList;
  String query;
  int offsetDate;
  int offsetChatId;
  int offsetMessageId;
  int limit;
  SearchMessagesFilter filter;
  int minDate;
  int maxDate;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'query': query,
    'offset_date': offsetDate,
    'offset_chat_id': offsetChatId,
    'offset_message_id': offsetMessageId,
    'limit': limit,
    'filter': filter,
    'min_date': minDate,
    'max_date': maxDate,
  };

  SearchMessages(
    this.chatList,
    this.query,
    this.offsetDate,
    this.offsetChatId,
    this.offsetMessageId,
    this.limit,
    this.filter,
    this.minDate,
    this.maxDate,
  );

  SearchMessages.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    query = tryConvertToTdObject(json['query']);
    offsetDate = tryConvertToTdObject(json['offset_date']);
    offsetChatId = tryConvertToTdObject(json['offset_chat_id']);
    offsetMessageId = tryConvertToTdObject(json['offset_message_id']);
    limit = tryConvertToTdObject(json['limit']);
    filter = tryConvertToTdObject(json['filter']);
    minDate = tryConvertToTdObject(json['min_date']);
    maxDate = tryConvertToTdObject(json['max_date']);
  }
}

@reflector
class SearchCallMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchCallMessages';

  int fromMessageId;
  int limit;
  bool onlyMissed;

  @override
  Map<String, dynamic> get params => {
    'from_message_id': fromMessageId,
    'limit': limit,
    'only_missed': onlyMissed,
  };

  SearchCallMessages(
    this.fromMessageId,
    this.limit,
    this.onlyMissed,
  );

  SearchCallMessages.fromJson(Map<String, dynamic> json) {
    fromMessageId = tryConvertToTdObject(json['from_message_id']);
    limit = tryConvertToTdObject(json['limit']);
    onlyMissed = tryConvertToTdObject(json['only_missed']);
  }
}

@reflector
class SearchChatRecentLocationMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'searchChatRecentLocationMessages';

  int chatId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'limit': limit,
  };

  SearchChatRecentLocationMessages(
    this.chatId,
    this.limit,
  );

  SearchChatRecentLocationMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetActiveLiveLocationMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getActiveLiveLocationMessages';

  @override
  Map<String, dynamic> get params => {};

  GetActiveLiveLocationMessages();

  GetActiveLiveLocationMessages.fromJson(Map<String, dynamic> json);
}

@reflector
class GetChatScheduledMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'getChatScheduledMessages';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatScheduledMessages(
    this.chatId,
  );

  GetChatScheduledMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class SendMessageAlbum extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'sendMessageAlbum';

  int chatId;
  int messageThreadId;
  int replyToMessageId;
  MessageSendOptions options;
  List<InputMessageContent> inputMessageContents;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_to_message_id': replyToMessageId,
    'options': options,
    'input_message_contents': inputMessageContents,
  };

  SendMessageAlbum(
    this.chatId,
    this.messageThreadId,
    this.replyToMessageId,
    this.options,
    this.inputMessageContents,
  );

  SendMessageAlbum.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    options = tryConvertToTdObject(json['options']);
    inputMessageContents = tryConvertToTdObject(json['input_message_contents']);
  }
}

@reflector
class ForwardMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'forwardMessages';

  int chatId;
  int fromChatId;
  List<int> messageIds;
  MessageSendOptions options;
  bool sendCopy;
  bool removeCaption;
  bool onlyPreview;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'from_chat_id': fromChatId,
    'message_ids': messageIds,
    'options': options,
    'send_copy': sendCopy,
    'remove_caption': removeCaption,
    'only_preview': onlyPreview,
  };

  ForwardMessages(
    this.chatId,
    this.fromChatId,
    this.messageIds,
    this.options,
    this.sendCopy,
    this.removeCaption,
    this.onlyPreview,
  );

  ForwardMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    fromChatId = tryConvertToTdObject(json['from_chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
    options = tryConvertToTdObject(json['options']);
    sendCopy = tryConvertToTdObject(json['send_copy']);
    removeCaption = tryConvertToTdObject(json['remove_caption']);
    onlyPreview = tryConvertToTdObject(json['only_preview']);
  }
}

@reflector
class ResendMessages extends TdFunction {
  @override
  Type get returnType => Messages;

  @override
  String get tdType => 'resendMessages';

  int chatId;
  List<int> messageIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
  };

  ResendMessages(
    this.chatId,
    this.messageIds,
  );

  ResendMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
  }
}

@reflector
class GetMessageThread extends TdFunction {
  @override
  Type get returnType => MessageThreadInfo;

  @override
  String get tdType => 'getMessageThread';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessageThread(
    this.chatId,
    this.messageId,
  );

  GetMessageThread.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetMessageViewers extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getMessageViewers';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetMessageViewers(
    this.chatId,
    this.messageId,
  );

  GetMessageViewers.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetPollVoters extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getPollVoters';

  int chatId;
  int messageId;
  int optionId;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'option_id': optionId,
    'offset': offset,
    'limit': limit,
  };

  GetPollVoters(
    this.chatId,
    this.messageId,
    this.optionId,
    this.offset,
    this.limit,
  );

  GetPollVoters.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    optionId = tryConvertToTdObject(json['option_id']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetContacts extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getContacts';

  @override
  Map<String, dynamic> get params => {};

  GetContacts();

  GetContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchContacts extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'searchContacts';

  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'limit': limit,
  };

  SearchContacts(
    this.query,
    this.limit,
  );

  SearchContacts.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetRecentInlineBots extends TdFunction {
  @override
  Type get returnType => Users;

  @override
  String get tdType => 'getRecentInlineBots';

  @override
  Map<String, dynamic> get params => {};

  GetRecentInlineBots();

  GetRecentInlineBots.fromJson(Map<String, dynamic> json);
}

@reflector
class GetFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'getFile';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  GetFile(
    this.fileId,
  );

  GetFile.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
  }
}

@reflector
class GetRemoteFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'getRemoteFile';

  String remoteFileId;
  FileType fileType;

  @override
  Map<String, dynamic> get params => {
    'remote_file_id': remoteFileId,
    'file_type': fileType,
  };

  GetRemoteFile(
    this.remoteFileId,
    this.fileType,
  );

  GetRemoteFile.fromJson(Map<String, dynamic> json) {
    remoteFileId = tryConvertToTdObject(json['remote_file_id']);
    fileType = tryConvertToTdObject(json['file_type']);
  }
}

@reflector
class DownloadFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'downloadFile';

  int fileId;
  int priority;
  int offset;
  int limit;
  bool synchronous;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'priority': priority,
    'offset': offset,
    'limit': limit,
    'synchronous': synchronous,
  };

  DownloadFile(
    this.fileId,
    this.priority,
    this.offset,
    this.limit,
    this.synchronous,
  );

  DownloadFile.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
    priority = tryConvertToTdObject(json['priority']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
    synchronous = tryConvertToTdObject(json['synchronous']);
  }
}

@reflector
class UploadFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'uploadFile';

  InputFile file;
  FileType fileType;
  int priority;

  @override
  Map<String, dynamic> get params => {
    'file': file,
    'file_type': fileType,
    'priority': priority,
  };

  UploadFile(
    this.file,
    this.fileType,
    this.priority,
  );

  UploadFile.fromJson(Map<String, dynamic> json) {
    file = tryConvertToTdObject(json['file']);
    fileType = tryConvertToTdObject(json['file_type']);
    priority = tryConvertToTdObject(json['priority']);
  }
}

@reflector
class UploadStickerFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'uploadStickerFile';

  int userId;
  InputSticker sticker;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'sticker': sticker,
  };

  UploadStickerFile(
    this.userId,
    this.sticker,
  );

  UploadStickerFile.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class GetMapThumbnailFile extends TdFunction {
  @override
  Type get returnType => File;

  @override
  String get tdType => 'getMapThumbnailFile';

  Location location;
  int zoom;
  int width;
  int height;
  int scale;
  int chatId;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'zoom': zoom,
    'width': width,
    'height': height,
    'scale': scale,
    'chat_id': chatId,
  };

  GetMapThumbnailFile(
    this.location,
    this.zoom,
    this.width,
    this.height,
    this.scale,
    this.chatId,
  );

  GetMapThumbnailFile.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    zoom = tryConvertToTdObject(json['zoom']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    scale = tryConvertToTdObject(json['scale']);
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getChats';

  ChatList chatList;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'limit': limit,
  };

  GetChats(
    this.chatList,
    this.limit,
  );

  GetChats.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class SearchPublicChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'searchPublicChats';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SearchPublicChats(
    this.query,
  );

  SearchPublicChats.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SearchChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'searchChats';

  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'limit': limit,
  };

  SearchChats(
    this.query,
    this.limit,
  );

  SearchChats.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class SearchChatsOnServer extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'searchChatsOnServer';

  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'limit': limit,
  };

  SearchChatsOnServer(
    this.query,
    this.limit,
  );

  SearchChatsOnServer.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetTopChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getTopChats';

  TopChatCategory category;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'category': category,
    'limit': limit,
  };

  GetTopChats(
    this.category,
    this.limit,
  );

  GetTopChats.fromJson(Map<String, dynamic> json) {
    category = tryConvertToTdObject(json['category']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetRecentlyOpenedChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getRecentlyOpenedChats';

  int limit;

  @override
  Map<String, dynamic> get params => {
    'limit': limit,
  };

  GetRecentlyOpenedChats(
    this.limit,
  );

  GetRecentlyOpenedChats.fromJson(Map<String, dynamic> json) {
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetCreatedPublicChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getCreatedPublicChats';

  PublicChatType type;

  @override
  Map<String, dynamic> get params => {
    'type': type,
  };

  GetCreatedPublicChats(
    this.type,
  );

  GetCreatedPublicChats.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class GetSuitableDiscussionChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getSuitableDiscussionChats';

  @override
  Map<String, dynamic> get params => {};

  GetSuitableDiscussionChats();

  GetSuitableDiscussionChats.fromJson(Map<String, dynamic> json);
}

@reflector
class GetInactiveSupergroupChats extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getInactiveSupergroupChats';

  @override
  Map<String, dynamic> get params => {};

  GetInactiveSupergroupChats();

  GetInactiveSupergroupChats.fromJson(Map<String, dynamic> json);
}

@reflector
class GetGroupsInCommon extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getGroupsInCommon';

  int userId;
  int offsetChatId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'offset_chat_id': offsetChatId,
    'limit': limit,
  };

  GetGroupsInCommon(
    this.userId,
    this.offsetChatId,
    this.limit,
  );

  GetGroupsInCommon.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    offsetChatId = tryConvertToTdObject(json['offset_chat_id']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetChatNotificationSettingsExceptions extends TdFunction {
  @override
  Type get returnType => Chats;

  @override
  String get tdType => 'getChatNotificationSettingsExceptions';

  NotificationSettingsScope scope;
  bool compareSound;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'compare_sound': compareSound,
  };

  GetChatNotificationSettingsExceptions(
    this.scope,
    this.compareSound,
  );

  GetChatNotificationSettingsExceptions.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    compareSound = tryConvertToTdObject(json['compare_sound']);
  }
}

@reflector
class SearchChatsNearby extends TdFunction {
  @override
  Type get returnType => ChatsNearby;

  @override
  String get tdType => 'searchChatsNearby';

  Location location;

  @override
  Map<String, dynamic> get params => {
    'location': location,
  };

  SearchChatsNearby(
    this.location,
  );

  SearchChatsNearby.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
  }
}

@reflector
class CheckChatUsername extends TdFunction {
  @override
  Type get returnType => CheckChatUsernameResult;

  @override
  String get tdType => 'checkChatUsername';

  int chatId;
  String username;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'username': username,
  };

  CheckChatUsername(
    this.chatId,
    this.username,
  );

  CheckChatUsername.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    username = tryConvertToTdObject(json['username']);
  }
}

@reflector
class SearchSecretMessages extends TdFunction {
  @override
  Type get returnType => FoundMessages;

  @override
  String get tdType => 'searchSecretMessages';

  int chatId;
  String query;
  String offset;
  int limit;
  SearchMessagesFilter filter;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'offset': offset,
    'limit': limit,
    'filter': filter,
  };

  SearchSecretMessages(
    this.chatId,
    this.query,
    this.offset,
    this.limit,
    this.filter,
  );

  SearchSecretMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    query = tryConvertToTdObject(json['query']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
    filter = tryConvertToTdObject(json['filter']);
  }
}

@reflector
class GetMessagePublicForwards extends TdFunction {
  @override
  Type get returnType => FoundMessages;

  @override
  String get tdType => 'getMessagePublicForwards';

  int chatId;
  int messageId;
  String offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'offset': offset,
    'limit': limit,
  };

  GetMessagePublicForwards(
    this.chatId,
    this.messageId,
    this.offset,
    this.limit,
  );

  GetMessagePublicForwards.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetChatMessageCount extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  String get tdType => 'getChatMessageCount';

  int chatId;
  SearchMessagesFilter filter;
  bool returnLocal;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'filter': filter,
    'return_local': returnLocal,
  };

  GetChatMessageCount(
    this.chatId,
    this.filter,
    this.returnLocal,
  );

  GetChatMessageCount.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    filter = tryConvertToTdObject(json['filter']);
    returnLocal = tryConvertToTdObject(json['return_local']);
  }
}

@reflector
class GetFileDownloadedPrefixSize extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  String get tdType => 'getFileDownloadedPrefixSize';

  int fileId;
  int offset;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'offset': offset,
  };

  GetFileDownloadedPrefixSize(
    this.fileId,
    this.offset,
  );

  GetFileDownloadedPrefixSize.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
    offset = tryConvertToTdObject(json['offset']);
  }
}

@reflector
class GetImportedContactCount extends TdFunction {
  @override
  Type get returnType => Count;

  @override
  String get tdType => 'getImportedContactCount';

  @override
  Map<String, dynamic> get params => {};

  GetImportedContactCount();

  GetImportedContactCount.fromJson(Map<String, dynamic> json);
}

@reflector
class GetChatSponsoredMessages extends TdFunction {
  @override
  Type get returnType => SponsoredMessages;

  @override
  String get tdType => 'getChatSponsoredMessages';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatSponsoredMessages(
    this.chatId,
  );

  GetChatSponsoredMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetMessageLink extends TdFunction {
  @override
  Type get returnType => MessageLink;

  @override
  String get tdType => 'getMessageLink';

  int chatId;
  int messageId;
  int mediaTimestamp;
  bool forAlbum;
  bool forComment;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'media_timestamp': mediaTimestamp,
    'for_album': forAlbum,
    'for_comment': forComment,
  };

  GetMessageLink(
    this.chatId,
    this.messageId,
    this.mediaTimestamp,
    this.forAlbum,
    this.forComment,
  );

  GetMessageLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    mediaTimestamp = tryConvertToTdObject(json['media_timestamp']);
    forAlbum = tryConvertToTdObject(json['for_album']);
    forComment = tryConvertToTdObject(json['for_comment']);
  }
}

@reflector
class GetMessageEmbeddingCode extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getMessageEmbeddingCode';

  int chatId;
  int messageId;
  bool forAlbum;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'for_album': forAlbum,
  };

  GetMessageEmbeddingCode(
    this.chatId,
    this.messageId,
    this.forAlbum,
  );

  GetMessageEmbeddingCode.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    forAlbum = tryConvertToTdObject(json['for_album']);
  }
}

@reflector
class GetFileMimeType extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getFileMimeType';

  String fileName;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
  };

  GetFileMimeType(
    this.fileName,
  );

  GetFileMimeType.fromJson(Map<String, dynamic> json) {
    fileName = tryConvertToTdObject(json['file_name']);
  }
}

@reflector
class GetFileExtension extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getFileExtension';

  String mimeType;

  @override
  Map<String, dynamic> get params => {
    'mime_type': mimeType,
  };

  GetFileExtension(
    this.mimeType,
  );

  GetFileExtension.fromJson(Map<String, dynamic> json) {
    mimeType = tryConvertToTdObject(json['mime_type']);
  }
}

@reflector
class CleanFileName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'cleanFileName';

  String fileName;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
  };

  CleanFileName(
    this.fileName,
  );

  CleanFileName.fromJson(Map<String, dynamic> json) {
    fileName = tryConvertToTdObject(json['file_name']);
  }
}

@reflector
class GetJsonString extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getJsonString';

  JsonValue jsonValue;

  @override
  Map<String, dynamic> get params => {
    'json_value': jsonValue,
  };

  GetJsonString(
    this.jsonValue,
  );

  GetJsonString.fromJson(Map<String, dynamic> json) {
    jsonValue = tryConvertToTdObject(json['json_value']);
  }
}

@reflector
class GetChatFilterDefaultIconName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getChatFilterDefaultIconName';

  ChatFilter filter;

  @override
  Map<String, dynamic> get params => {
    'filter': filter,
  };

  GetChatFilterDefaultIconName(
    this.filter,
  );

  GetChatFilterDefaultIconName.fromJson(Map<String, dynamic> json) {
    filter = tryConvertToTdObject(json['filter']);
  }
}

@reflector
class GetSuggestedFileName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getSuggestedFileName';

  int fileId;
  String directory;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'directory': directory,
  };

  GetSuggestedFileName(
    this.fileId,
    this.directory,
  );

  GetSuggestedFileName.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
    directory = tryConvertToTdObject(json['directory']);
  }
}

@reflector
class GetMessageImportConfirmationText extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getMessageImportConfirmationText';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetMessageImportConfirmationText(
    this.chatId,
  );

  GetMessageImportConfirmationText.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class JoinGroupCall extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'joinGroupCall';

  int groupCallId;
  MessageSender participantId;
  int audioSourceId;
  String payload;
  bool isMuted;
  bool isMyVideoEnabled;
  String inviteHash;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant_id': participantId,
    'audio_source_id': audioSourceId,
    'payload': payload,
    'is_muted': isMuted,
    'is_my_video_enabled': isMyVideoEnabled,
    'invite_hash': inviteHash,
  };

  JoinGroupCall(
    this.groupCallId,
    this.participantId,
    this.audioSourceId,
    this.payload,
    this.isMuted,
    this.isMyVideoEnabled,
    this.inviteHash,
  );

  JoinGroupCall.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    participantId = tryConvertToTdObject(json['participant_id']);
    audioSourceId = tryConvertToTdObject(json['audio_source_id']);
    payload = tryConvertToTdObject(json['payload']);
    isMuted = tryConvertToTdObject(json['is_muted']);
    isMyVideoEnabled = tryConvertToTdObject(json['is_my_video_enabled']);
    inviteHash = tryConvertToTdObject(json['invite_hash']);
  }
}

@reflector
class StartGroupCallScreenSharing extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'startGroupCallScreenSharing';

  int groupCallId;
  int audioSourceId;
  String payload;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'audio_source_id': audioSourceId,
    'payload': payload,
  };

  StartGroupCallScreenSharing(
    this.groupCallId,
    this.audioSourceId,
    this.payload,
  );

  StartGroupCallScreenSharing.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    audioSourceId = tryConvertToTdObject(json['audio_source_id']);
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class GetPreferredCountryLanguage extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getPreferredCountryLanguage';

  String countryCode;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
  };

  GetPreferredCountryLanguage(
    this.countryCode,
  );

  GetPreferredCountryLanguage.fromJson(Map<String, dynamic> json) {
    countryCode = tryConvertToTdObject(json['country_code']);
  }
}

@reflector
class GetSuggestedStickerSetName extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getSuggestedStickerSetName';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  GetSuggestedStickerSetName(
    this.title,
  );

  GetSuggestedStickerSetName.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class GetCountryCode extends TdFunction {
  @override
  Type get returnType => Text;

  @override
  String get tdType => 'getCountryCode';

  @override
  Map<String, dynamic> get params => {};

  GetCountryCode();

  GetCountryCode.fromJson(Map<String, dynamic> json);
}

@reflector
class GetMessageLinkInfo extends TdFunction {
  @override
  Type get returnType => MessageLinkInfo;

  @override
  String get tdType => 'getMessageLinkInfo';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  GetMessageLinkInfo(
    this.url,
  );

  GetMessageLinkInfo.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class GetTextEntities extends TdFunction {
  @override
  Type get returnType => TextEntities;

  @override
  String get tdType => 'getTextEntities';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  GetTextEntities(
    this.text,
  );

  GetTextEntities.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class ParseTextEntities extends TdFunction {
  @override
  Type get returnType => FormattedText;

  @override
  String get tdType => 'parseTextEntities';

  String text;
  TextParseMode parseMode;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'parse_mode': parseMode,
  };

  ParseTextEntities(
    this.text,
    this.parseMode,
  );

  ParseTextEntities.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    parseMode = tryConvertToTdObject(json['parse_mode']);
  }
}

@reflector
class ParseMarkdown extends TdFunction {
  @override
  Type get returnType => FormattedText;

  @override
  String get tdType => 'parseMarkdown';

  FormattedText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  ParseMarkdown(
    this.text,
  );

  ParseMarkdown.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class GetMarkdownText extends TdFunction {
  @override
  Type get returnType => FormattedText;

  @override
  String get tdType => 'getMarkdownText';

  FormattedText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  GetMarkdownText(
    this.text,
  );

  GetMarkdownText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class GetLanguagePackString extends TdFunction {
  @override
  Type get returnType => LanguagePackStringValue;

  @override
  String get tdType => 'getLanguagePackString';

  String languagePackDatabasePath;
  String localizationTarget;
  String languagePackId;
  String key;

  @override
  Map<String, dynamic> get params => {
    'language_pack_database_path': languagePackDatabasePath,
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'key': key,
  };

  GetLanguagePackString(
    this.languagePackDatabasePath,
    this.localizationTarget,
    this.languagePackId,
    this.key,
  );

  GetLanguagePackString.fromJson(Map<String, dynamic> json) {
    languagePackDatabasePath = tryConvertToTdObject(json['language_pack_database_path']);
    localizationTarget = tryConvertToTdObject(json['localization_target']);
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
    key = tryConvertToTdObject(json['key']);
  }
}

@reflector
class GetJsonValue extends TdFunction {
  @override
  Type get returnType => JsonValue;

  @override
  String get tdType => 'getJsonValue';

  String json;

  @override
  Map<String, dynamic> get params => {
    'json': json,
  };

  GetJsonValue(
    this.json,
  );

  GetJsonValue.fromJson(Map<String, dynamic> json) {
    json = tryConvertToTdObject(json['json']);
  }
}

@reflector
class GetApplicationConfig extends TdFunction {
  @override
  Type get returnType => JsonValue;

  @override
  String get tdType => 'getApplicationConfig';

  @override
  Map<String, dynamic> get params => {};

  GetApplicationConfig();

  GetApplicationConfig.fromJson(Map<String, dynamic> json);
}

@reflector
class GetLoginUrlInfo extends TdFunction {
  @override
  Type get returnType => LoginUrlInfo;

  @override
  String get tdType => 'getLoginUrlInfo';

  int chatId;
  int messageId;
  int buttonId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'button_id': buttonId,
  };

  GetLoginUrlInfo(
    this.chatId,
    this.messageId,
    this.buttonId,
  );

  GetLoginUrlInfo.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    buttonId = tryConvertToTdObject(json['button_id']);
  }
}

@reflector
class GetExternalLinkInfo extends TdFunction {
  @override
  Type get returnType => LoginUrlInfo;

  @override
  String get tdType => 'getExternalLinkInfo';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  GetExternalLinkInfo(
    this.link,
  );

  GetExternalLinkInfo.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
  }
}

@reflector
class GetLoginUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getLoginUrl';

  int chatId;
  int messageId;
  int buttonId;
  bool allowWriteAccess;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'button_id': buttonId,
    'allow_write_access': allowWriteAccess,
  };

  GetLoginUrl(
    this.chatId,
    this.messageId,
    this.buttonId,
    this.allowWriteAccess,
  );

  GetLoginUrl.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    buttonId = tryConvertToTdObject(json['button_id']);
    allowWriteAccess = tryConvertToTdObject(json['allow_write_access']);
  }
}

@reflector
class GetExternalLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getExternalLink';

  String link;
  bool allowWriteAccess;

  @override
  Map<String, dynamic> get params => {
    'link': link,
    'allow_write_access': allowWriteAccess,
  };

  GetExternalLink(
    this.link,
    this.allowWriteAccess,
  );

  GetExternalLink.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
    allowWriteAccess = tryConvertToTdObject(json['allow_write_access']);
  }
}

@reflector
class GetGroupCallInviteLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getGroupCallInviteLink';

  int groupCallId;
  bool canSelfUnmute;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'can_self_unmute': canSelfUnmute,
  };

  GetGroupCallInviteLink(
    this.groupCallId,
    this.canSelfUnmute,
  );

  GetGroupCallInviteLink.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    canSelfUnmute = tryConvertToTdObject(json['can_self_unmute']);
  }
}

@reflector
class GetEmojiSuggestionsUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getEmojiSuggestionsUrl';

  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'language_code': languageCode,
  };

  GetEmojiSuggestionsUrl(
    this.languageCode,
  );

  GetEmojiSuggestionsUrl.fromJson(Map<String, dynamic> json) {
    languageCode = tryConvertToTdObject(json['language_code']);
  }
}

@reflector
class GetBackgroundUrl extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getBackgroundUrl';

  String name;
  BackgroundType type;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'type': type,
  };

  GetBackgroundUrl(
    this.name,
    this.type,
  );

  GetBackgroundUrl.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class GetApplicationDownloadLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getApplicationDownloadLink';

  @override
  Map<String, dynamic> get params => {};

  GetApplicationDownloadLink();

  GetApplicationDownloadLink.fromJson(Map<String, dynamic> json);
}

@reflector
class GetProxyLink extends TdFunction {
  @override
  Type get returnType => HttpUrl;

  @override
  String get tdType => 'getProxyLink';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  GetProxyLink(
    this.proxyId,
  );

  GetProxyLink.fromJson(Map<String, dynamic> json) {
    proxyId = tryConvertToTdObject(json['proxy_id']);
  }
}

@reflector
class GetInlineQueryResults extends TdFunction {
  @override
  Type get returnType => InlineQueryResults;

  @override
  String get tdType => 'getInlineQueryResults';

  int botUserId;
  int chatId;
  Location userLocation;
  String query;
  String offset;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'chat_id': chatId,
    'user_location': userLocation,
    'query': query,
    'offset': offset,
  };

  GetInlineQueryResults(
    this.botUserId,
    this.chatId,
    this.userLocation,
    this.query,
    this.offset,
  );

  GetInlineQueryResults.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    chatId = tryConvertToTdObject(json['chat_id']);
    userLocation = tryConvertToTdObject(json['user_location']);
    query = tryConvertToTdObject(json['query']);
    offset = tryConvertToTdObject(json['offset']);
  }
}

@reflector
class GetCallbackQueryAnswer extends TdFunction {
  @override
  Type get returnType => CallbackQueryAnswer;

  @override
  String get tdType => 'getCallbackQueryAnswer';

  int chatId;
  int messageId;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'payload': payload,
  };

  GetCallbackQueryAnswer(
    this.chatId,
    this.messageId,
    this.payload,
  );

  GetCallbackQueryAnswer.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class GetGameHighScores extends TdFunction {
  @override
  Type get returnType => GameHighScores;

  @override
  String get tdType => 'getGameHighScores';

  int chatId;
  int messageId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'user_id': userId,
  };

  GetGameHighScores(
    this.chatId,
    this.messageId,
    this.userId,
  );

  GetGameHighScores.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class GetInlineGameHighScores extends TdFunction {
  @override
  Type get returnType => GameHighScores;

  @override
  String get tdType => 'getInlineGameHighScores';

  String inlineMessageId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'inline_message_id': inlineMessageId,
    'user_id': userId,
  };

  GetInlineGameHighScores(
    this.inlineMessageId,
    this.userId,
  );

  GetInlineGameHighScores.fromJson(Map<String, dynamic> json) {
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class ClickAnimatedEmojiMessage extends TdFunction {
  @override
  Type get returnType => Sticker;

  @override
  String get tdType => 'clickAnimatedEmojiMessage';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  ClickAnimatedEmojiMessage(
    this.chatId,
    this.messageId,
  );

  ClickAnimatedEmojiMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetInternalLinkType extends TdFunction {
  @override
  Type get returnType => InternalLinkType;

  @override
  String get tdType => 'getInternalLinkType';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  GetInternalLinkType(
    this.link,
  );

  GetInternalLinkType.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
  }
}

@reflector
class GetChatListsToAddChat extends TdFunction {
  @override
  Type get returnType => ChatLists;

  @override
  String get tdType => 'getChatListsToAddChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatListsToAddChat(
    this.chatId,
  );

  GetChatListsToAddChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetChatFilter extends TdFunction {
  @override
  Type get returnType => ChatFilter;

  @override
  String get tdType => 'getChatFilter';

  int chatFilterId;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
  };

  GetChatFilter(
    this.chatFilterId,
  );

  GetChatFilter.fromJson(Map<String, dynamic> json) {
    chatFilterId = tryConvertToTdObject(json['chat_filter_id']);
  }
}

@reflector
class CreateChatFilter extends TdFunction {
  @override
  Type get returnType => ChatFilterInfo;

  @override
  String get tdType => 'createChatFilter';

  ChatFilter filter;

  @override
  Map<String, dynamic> get params => {
    'filter': filter,
  };

  CreateChatFilter(
    this.filter,
  );

  CreateChatFilter.fromJson(Map<String, dynamic> json) {
    filter = tryConvertToTdObject(json['filter']);
  }
}

@reflector
class EditChatFilter extends TdFunction {
  @override
  Type get returnType => ChatFilterInfo;

  @override
  String get tdType => 'editChatFilter';

  int chatFilterId;
  ChatFilter filter;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
    'filter': filter,
  };

  EditChatFilter(
    this.chatFilterId,
    this.filter,
  );

  EditChatFilter.fromJson(Map<String, dynamic> json) {
    chatFilterId = tryConvertToTdObject(json['chat_filter_id']);
    filter = tryConvertToTdObject(json['filter']);
  }
}

@reflector
class GetRecommendedChatFilters extends TdFunction {
  @override
  Type get returnType => RecommendedChatFilters;

  @override
  String get tdType => 'getRecommendedChatFilters';

  @override
  Map<String, dynamic> get params => {};

  GetRecommendedChatFilters();

  GetRecommendedChatFilters.fromJson(Map<String, dynamic> json);
}

@reflector
class CanTransferOwnership extends TdFunction {
  @override
  Type get returnType => CanTransferOwnershipResult;

  @override
  String get tdType => 'canTransferOwnership';

  @override
  Map<String, dynamic> get params => {};

  CanTransferOwnership();

  CanTransferOwnership.fromJson(Map<String, dynamic> json);
}

@reflector
class GetChatMember extends TdFunction {
  @override
  Type get returnType => ChatMember;

  @override
  String get tdType => 'getChatMember';

  int chatId;
  MessageSender memberId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'member_id': memberId,
  };

  GetChatMember(
    this.chatId,
    this.memberId,
  );

  GetChatMember.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    memberId = tryConvertToTdObject(json['member_id']);
  }
}

@reflector
class SearchChatMembers extends TdFunction {
  @override
  Type get returnType => ChatMembers;

  @override
  String get tdType => 'searchChatMembers';

  int chatId;
  String query;
  int limit;
  ChatMembersFilter filter;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'limit': limit,
    'filter': filter,
  };

  SearchChatMembers(
    this.chatId,
    this.query,
    this.limit,
    this.filter,
  );

  SearchChatMembers.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    query = tryConvertToTdObject(json['query']);
    limit = tryConvertToTdObject(json['limit']);
    filter = tryConvertToTdObject(json['filter']);
  }
}

@reflector
class GetSupergroupMembers extends TdFunction {
  @override
  Type get returnType => ChatMembers;

  @override
  String get tdType => 'getSupergroupMembers';

  int supergroupId;
  SupergroupMembersFilter filter;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'filter': filter,
    'offset': offset,
    'limit': limit,
  };

  GetSupergroupMembers(
    this.supergroupId,
    this.filter,
    this.offset,
    this.limit,
  );

  GetSupergroupMembers.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    filter = tryConvertToTdObject(json['filter']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetChatAdministrators extends TdFunction {
  @override
  Type get returnType => ChatAdministrators;

  @override
  String get tdType => 'getChatAdministrators';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatAdministrators(
    this.chatId,
  );

  GetChatAdministrators.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetScopeNotificationSettings extends TdFunction {
  @override
  Type get returnType => ScopeNotificationSettings;

  @override
  String get tdType => 'getScopeNotificationSettings';

  NotificationSettingsScope scope;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
  };

  GetScopeNotificationSettings(
    this.scope,
  );

  GetScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
  }
}

@reflector
class ReadFilePart extends TdFunction {
  @override
  Type get returnType => FilePart;

  @override
  String get tdType => 'readFilePart';

  int fileId;
  int offset;
  int count;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
    'offset': offset,
    'count': count,
  };

  ReadFilePart(
    this.fileId,
    this.offset,
    this.count,
  );

  ReadFilePart.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
    offset = tryConvertToTdObject(json['offset']);
    count = tryConvertToTdObject(json['count']);
  }
}

@reflector
class GetGroupCallStreamSegment extends TdFunction {
  @override
  Type get returnType => FilePart;

  @override
  String get tdType => 'getGroupCallStreamSegment';

  int groupCallId;
  int timeOffset;
  int scale;
  int channelId;
  GroupCallVideoQuality videoQuality;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'time_offset': timeOffset,
    'scale': scale,
    'channel_id': channelId,
    'video_quality': videoQuality,
  };

  GetGroupCallStreamSegment(
    this.groupCallId,
    this.timeOffset,
    this.scale,
    this.channelId,
    this.videoQuality,
  );

  GetGroupCallStreamSegment.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    timeOffset = tryConvertToTdObject(json['time_offset']);
    scale = tryConvertToTdObject(json['scale']);
    channelId = tryConvertToTdObject(json['channel_id']);
    videoQuality = tryConvertToTdObject(json['video_quality']);
  }
}

@reflector
class GetMessageFileType extends TdFunction {
  @override
  Type get returnType => MessageFileType;

  @override
  String get tdType => 'getMessageFileType';

  String messageFileHead;

  @override
  Map<String, dynamic> get params => {
    'message_file_head': messageFileHead,
  };

  GetMessageFileType(
    this.messageFileHead,
  );

  GetMessageFileType.fromJson(Map<String, dynamic> json) {
    messageFileHead = tryConvertToTdObject(json['message_file_head']);
  }
}

@reflector
class ReplacePrimaryChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'replacePrimaryChatInviteLink';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  ReplacePrimaryChatInviteLink(
    this.chatId,
  );

  ReplacePrimaryChatInviteLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class CreateChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'createChatInviteLink';

  int chatId;
  int expireDate;
  int memberLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'expire_date': expireDate,
    'member_limit': memberLimit,
  };

  CreateChatInviteLink(
    this.chatId,
    this.expireDate,
    this.memberLimit,
  );

  CreateChatInviteLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    expireDate = tryConvertToTdObject(json['expire_date']);
    memberLimit = tryConvertToTdObject(json['member_limit']);
  }
}

@reflector
class EditChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'editChatInviteLink';

  int chatId;
  String inviteLink;
  int expireDate;
  int memberLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
    'expire_date': expireDate,
    'member_limit': memberLimit,
  };

  EditChatInviteLink(
    this.chatId,
    this.inviteLink,
    this.expireDate,
    this.memberLimit,
  );

  EditChatInviteLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
    expireDate = tryConvertToTdObject(json['expire_date']);
    memberLimit = tryConvertToTdObject(json['member_limit']);
  }
}

@reflector
class GetChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLink;

  @override
  String get tdType => 'getChatInviteLink';

  int chatId;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  GetChatInviteLink(
    this.chatId,
    this.inviteLink,
  );

  GetChatInviteLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class GetChatInviteLinkCounts extends TdFunction {
  @override
  Type get returnType => ChatInviteLinkCounts;

  @override
  String get tdType => 'getChatInviteLinkCounts';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetChatInviteLinkCounts(
    this.chatId,
  );

  GetChatInviteLinkCounts.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetChatInviteLinks extends TdFunction {
  @override
  Type get returnType => ChatInviteLinks;

  @override
  String get tdType => 'getChatInviteLinks';

  int chatId;
  int creatorUserId;
  bool isRevoked;
  int offsetDate;
  String offsetInviteLink;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'creator_user_id': creatorUserId,
    'is_revoked': isRevoked,
    'offset_date': offsetDate,
    'offset_invite_link': offsetInviteLink,
    'limit': limit,
  };

  GetChatInviteLinks(
    this.chatId,
    this.creatorUserId,
    this.isRevoked,
    this.offsetDate,
    this.offsetInviteLink,
    this.limit,
  );

  GetChatInviteLinks.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    creatorUserId = tryConvertToTdObject(json['creator_user_id']);
    isRevoked = tryConvertToTdObject(json['is_revoked']);
    offsetDate = tryConvertToTdObject(json['offset_date']);
    offsetInviteLink = tryConvertToTdObject(json['offset_invite_link']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class RevokeChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLinks;

  @override
  String get tdType => 'revokeChatInviteLink';

  int chatId;
  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
  };

  RevokeChatInviteLink(
    this.chatId,
    this.inviteLink,
  );

  RevokeChatInviteLink.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class GetChatInviteLinkMembers extends TdFunction {
  @override
  Type get returnType => ChatInviteLinkMembers;

  @override
  String get tdType => 'getChatInviteLinkMembers';

  int chatId;
  String inviteLink;
  ChatInviteLinkMember offsetMember;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'invite_link': inviteLink,
    'offset_member': offsetMember,
    'limit': limit,
  };

  GetChatInviteLinkMembers(
    this.chatId,
    this.inviteLink,
    this.offsetMember,
    this.limit,
  );

  GetChatInviteLinkMembers.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
    offsetMember = tryConvertToTdObject(json['offset_member']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class CheckChatInviteLink extends TdFunction {
  @override
  Type get returnType => ChatInviteLinkInfo;

  @override
  String get tdType => 'checkChatInviteLink';

  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  CheckChatInviteLink(
    this.inviteLink,
  );

  CheckChatInviteLink.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class CreateCall extends TdFunction {
  @override
  Type get returnType => CallId;

  @override
  String get tdType => 'createCall';

  int userId;
  CallProtocol protocol;
  bool isVideo;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'protocol': protocol,
    'is_video': isVideo,
  };

  CreateCall(
    this.userId,
    this.protocol,
    this.isVideo,
  );

  CreateCall.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    protocol = tryConvertToTdObject(json['protocol']);
    isVideo = tryConvertToTdObject(json['is_video']);
  }
}

@reflector
class GetVoiceChatAvailableParticipants extends TdFunction {
  @override
  Type get returnType => MessageSenders;

  @override
  String get tdType => 'getVoiceChatAvailableParticipants';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  GetVoiceChatAvailableParticipants(
    this.chatId,
  );

  GetVoiceChatAvailableParticipants.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class GetBlockedMessageSenders extends TdFunction {
  @override
  Type get returnType => MessageSenders;

  @override
  String get tdType => 'getBlockedMessageSenders';

  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'limit': limit,
  };

  GetBlockedMessageSenders(
    this.offset,
    this.limit,
  );

  GetBlockedMessageSenders.fromJson(Map<String, dynamic> json) {
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class CreateVoiceChat extends TdFunction {
  @override
  Type get returnType => GroupCallId;

  @override
  String get tdType => 'createVoiceChat';

  int chatId;
  String title;
  int startDate;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
    'start_date': startDate,
  };

  CreateVoiceChat(
    this.chatId,
    this.title,
    this.startDate,
  );

  CreateVoiceChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    title = tryConvertToTdObject(json['title']);
    startDate = tryConvertToTdObject(json['start_date']);
  }
}

@reflector
class GetGroupCall extends TdFunction {
  @override
  Type get returnType => GroupCall;

  @override
  String get tdType => 'getGroupCall';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  GetGroupCall(
    this.groupCallId,
  );

  GetGroupCall.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class ImportContacts extends TdFunction {
  @override
  Type get returnType => ImportedContacts;

  @override
  String get tdType => 'importContacts';

  List<Contact> contacts;

  @override
  Map<String, dynamic> get params => {
    'contacts': contacts,
  };

  ImportContacts(
    this.contacts,
  );

  ImportContacts.fromJson(Map<String, dynamic> json) {
    contacts = tryConvertToTdObject(json['contacts']);
  }
}

@reflector
class ChangeImportedContacts extends TdFunction {
  @override
  Type get returnType => ImportedContacts;

  @override
  String get tdType => 'changeImportedContacts';

  List<Contact> contacts;

  @override
  Map<String, dynamic> get params => {
    'contacts': contacts,
  };

  ChangeImportedContacts(
    this.contacts,
  );

  ChangeImportedContacts.fromJson(Map<String, dynamic> json) {
    contacts = tryConvertToTdObject(json['contacts']);
  }
}

@reflector
class GetUserProfilePhotos extends TdFunction {
  @override
  Type get returnType => ChatPhotos;

  @override
  String get tdType => 'getUserProfilePhotos';

  int userId;
  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'offset': offset,
    'limit': limit,
  };

  GetUserProfilePhotos(
    this.userId,
    this.offset,
    this.limit,
  );

  GetUserProfilePhotos.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'getStickers';

  String emoji;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
    'limit': limit,
  };

  GetStickers(
    this.emoji,
    this.limit,
  );

  GetStickers.fromJson(Map<String, dynamic> json) {
    emoji = tryConvertToTdObject(json['emoji']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class SearchStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'searchStickers';

  String emoji;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
    'limit': limit,
  };

  SearchStickers(
    this.emoji,
    this.limit,
  );

  SearchStickers.fromJson(Map<String, dynamic> json) {
    emoji = tryConvertToTdObject(json['emoji']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetRecentStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'getRecentStickers';

  bool isAttached;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
  };

  GetRecentStickers(
    this.isAttached,
  );

  GetRecentStickers.fromJson(Map<String, dynamic> json) {
    isAttached = tryConvertToTdObject(json['is_attached']);
  }
}

@reflector
class AddRecentSticker extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'addRecentSticker';

  bool isAttached;
  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker': sticker,
  };

  AddRecentSticker(
    this.isAttached,
    this.sticker,
  );

  AddRecentSticker.fromJson(Map<String, dynamic> json) {
    isAttached = tryConvertToTdObject(json['is_attached']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class GetFavoriteStickers extends TdFunction {
  @override
  Type get returnType => Stickers;

  @override
  String get tdType => 'getFavoriteStickers';

  @override
  Map<String, dynamic> get params => {};

  GetFavoriteStickers();

  GetFavoriteStickers.fromJson(Map<String, dynamic> json);
}

@reflector
class GetInstalledStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getInstalledStickerSets';

  bool isMasks;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
  };

  GetInstalledStickerSets(
    this.isMasks,
  );

  GetInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = tryConvertToTdObject(json['is_masks']);
  }
}

@reflector
class GetArchivedStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getArchivedStickerSets';

  bool isMasks;
  int offsetStickerSetId;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'offset_sticker_set_id': offsetStickerSetId,
    'limit': limit,
  };

  GetArchivedStickerSets(
    this.isMasks,
    this.offsetStickerSetId,
    this.limit,
  );

  GetArchivedStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = tryConvertToTdObject(json['is_masks']);
    offsetStickerSetId = tryConvertToTdObject(json['offset_sticker_set_id']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetTrendingStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getTrendingStickerSets';

  int offset;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'limit': limit,
  };

  GetTrendingStickerSets(
    this.offset,
    this.limit,
  );

  GetTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    offset = tryConvertToTdObject(json['offset']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetAttachedStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'getAttachedStickerSets';

  int fileId;

  @override
  Map<String, dynamic> get params => {
    'file_id': fileId,
  };

  GetAttachedStickerSets(
    this.fileId,
  );

  GetAttachedStickerSets.fromJson(Map<String, dynamic> json) {
    fileId = tryConvertToTdObject(json['file_id']);
  }
}

@reflector
class SearchInstalledStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'searchInstalledStickerSets';

  bool isMasks;
  String query;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'query': query,
    'limit': limit,
  };

  SearchInstalledStickerSets(
    this.isMasks,
    this.query,
    this.limit,
  );

  SearchInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = tryConvertToTdObject(json['is_masks']);
    query = tryConvertToTdObject(json['query']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class SearchStickerSets extends TdFunction {
  @override
  Type get returnType => StickerSets;

  @override
  String get tdType => 'searchStickerSets';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SearchStickerSets(
    this.query,
  );

  SearchStickerSets.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class GetStickerSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'getStickerSet';

  int setId;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
  };

  GetStickerSet(
    this.setId,
  );

  GetStickerSet.fromJson(Map<String, dynamic> json) {
    setId = tryConvertToTdObject(json['set_id']);
  }
}

@reflector
class SearchStickerSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'searchStickerSet';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  SearchStickerSet(
    this.name,
  );

  SearchStickerSet.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class CreateNewStickerSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'createNewStickerSet';

  int userId;
  String title;
  String name;
  bool isMasks;
  List<InputSticker> stickers;
  String source;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'title': title,
    'name': name,
    'is_masks': isMasks,
    'stickers': stickers,
    'source': source,
  };

  CreateNewStickerSet(
    this.userId,
    this.title,
    this.name,
    this.isMasks,
    this.stickers,
    this.source,
  );

  CreateNewStickerSet.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    title = tryConvertToTdObject(json['title']);
    name = tryConvertToTdObject(json['name']);
    isMasks = tryConvertToTdObject(json['is_masks']);
    stickers = tryConvertToTdObject(json['stickers']);
    source = tryConvertToTdObject(json['source']);
  }
}

@reflector
class AddStickerToSet extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'addStickerToSet';

  int userId;
  String name;
  InputSticker sticker;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'name': name,
    'sticker': sticker,
  };

  AddStickerToSet(
    this.userId,
    this.name,
    this.sticker,
  );

  AddStickerToSet.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    name = tryConvertToTdObject(json['name']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class SetStickerSetThumbnail extends TdFunction {
  @override
  Type get returnType => StickerSet;

  @override
  String get tdType => 'setStickerSetThumbnail';

  int userId;
  String name;
  InputFile thumbnail;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'name': name,
    'thumbnail': thumbnail,
  };

  SetStickerSetThumbnail(
    this.userId,
    this.name,
    this.thumbnail,
  );

  SetStickerSetThumbnail.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    name = tryConvertToTdObject(json['name']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class GetStickerEmojis extends TdFunction {
  @override
  Type get returnType => Emojis;

  @override
  String get tdType => 'getStickerEmojis';

  InputFile sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  GetStickerEmojis(
    this.sticker,
  );

  GetStickerEmojis.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class SearchEmojis extends TdFunction {
  @override
  Type get returnType => Emojis;

  @override
  String get tdType => 'searchEmojis';

  String text;
  bool exactMatch;
  List<String> inputLanguageCodes;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'exact_match': exactMatch,
    'input_language_codes': inputLanguageCodes,
  };

  SearchEmojis(
    this.text,
    this.exactMatch,
    this.inputLanguageCodes,
  );

  SearchEmojis.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    exactMatch = tryConvertToTdObject(json['exact_match']);
    inputLanguageCodes = tryConvertToTdObject(json['input_language_codes']);
  }
}

@reflector
class GetSavedAnimations extends TdFunction {
  @override
  Type get returnType => Animations;

  @override
  String get tdType => 'getSavedAnimations';

  @override
  Map<String, dynamic> get params => {};

  GetSavedAnimations();

  GetSavedAnimations.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchHashtags extends TdFunction {
  @override
  Type get returnType => Hashtags;

  @override
  String get tdType => 'searchHashtags';

  String prefix;
  int limit;

  @override
  Map<String, dynamic> get params => {
    'prefix': prefix,
    'limit': limit,
  };

  SearchHashtags(
    this.prefix,
    this.limit,
  );

  SearchHashtags.fromJson(Map<String, dynamic> json) {
    prefix = tryConvertToTdObject(json['prefix']);
    limit = tryConvertToTdObject(json['limit']);
  }
}

@reflector
class GetWebPagePreview extends TdFunction {
  @override
  Type get returnType => WebPage;

  @override
  String get tdType => 'getWebPagePreview';

  FormattedText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  GetWebPagePreview(
    this.text,
  );

  GetWebPagePreview.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class GetWebPageInstantView extends TdFunction {
  @override
  Type get returnType => WebPageInstantView;

  @override
  String get tdType => 'getWebPageInstantView';

  String url;
  bool forceFull;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'force_full': forceFull,
  };

  GetWebPageInstantView(
    this.url,
    this.forceFull,
  );

  GetWebPageInstantView.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    forceFull = tryConvertToTdObject(json['force_full']);
  }
}

@reflector
class ChangePhoneNumber extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'changePhoneNumber';

  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'settings': settings,
  };

  ChangePhoneNumber(
    this.phoneNumber,
    this.settings,
  );

  ChangePhoneNumber.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    settings = tryConvertToTdObject(json['settings']);
  }
}

@reflector
class ResendChangePhoneNumberCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'resendChangePhoneNumberCode';

  @override
  Map<String, dynamic> get params => {};

  ResendChangePhoneNumberCode();

  ResendChangePhoneNumberCode.fromJson(Map<String, dynamic> json);
}

@reflector
class SendPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'sendPhoneNumberVerificationCode';

  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'settings': settings,
  };

  SendPhoneNumberVerificationCode(
    this.phoneNumber,
    this.settings,
  );

  SendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    settings = tryConvertToTdObject(json['settings']);
  }
}

@reflector
class ResendPhoneNumberVerificationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'resendPhoneNumberVerificationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendPhoneNumberVerificationCode();

  ResendPhoneNumberVerificationCode.fromJson(Map<String, dynamic> json);
}

@reflector
class SendPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'sendPhoneNumberConfirmationCode';

  String hash;
  String phoneNumber;
  PhoneNumberAuthenticationSettings settings;

  @override
  Map<String, dynamic> get params => {
    'hash': hash,
    'phone_number': phoneNumber,
    'settings': settings,
  };

  SendPhoneNumberConfirmationCode(
    this.hash,
    this.phoneNumber,
    this.settings,
  );

  SendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json) {
    hash = tryConvertToTdObject(json['hash']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    settings = tryConvertToTdObject(json['settings']);
  }
}

@reflector
class ResendPhoneNumberConfirmationCode extends TdFunction {
  @override
  Type get returnType => AuthenticationCodeInfo;

  @override
  String get tdType => 'resendPhoneNumberConfirmationCode';

  @override
  Map<String, dynamic> get params => {};

  ResendPhoneNumberConfirmationCode();

  ResendPhoneNumberConfirmationCode.fromJson(Map<String, dynamic> json);
}

@reflector
class GetCommands extends TdFunction {
  @override
  Type get returnType => BotCommands;

  @override
  String get tdType => 'getCommands';

  BotCommandScope scope;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'language_code': languageCode,
  };

  GetCommands(
    this.scope,
    this.languageCode,
  );

  GetCommands.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    languageCode = tryConvertToTdObject(json['language_code']);
  }
}

@reflector
class GetActiveSessions extends TdFunction {
  @override
  Type get returnType => Sessions;

  @override
  String get tdType => 'getActiveSessions';

  @override
  Map<String, dynamic> get params => {};

  GetActiveSessions();

  GetActiveSessions.fromJson(Map<String, dynamic> json);
}

@reflector
class GetConnectedWebsites extends TdFunction {
  @override
  Type get returnType => ConnectedWebsites;

  @override
  String get tdType => 'getConnectedWebsites';

  @override
  Map<String, dynamic> get params => {};

  GetConnectedWebsites();

  GetConnectedWebsites.fromJson(Map<String, dynamic> json);
}

@reflector
class GetChatEventLog extends TdFunction {
  @override
  Type get returnType => ChatEvents;

  @override
  String get tdType => 'getChatEventLog';

  int chatId;
  String query;
  int fromEventId;
  int limit;
  ChatEventLogFilters filters;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'query': query,
    'from_event_id': fromEventId,
    'limit': limit,
    'filters': filters,
    'user_ids': userIds,
  };

  GetChatEventLog(
    this.chatId,
    this.query,
    this.fromEventId,
    this.limit,
    this.filters,
    this.userIds,
  );

  GetChatEventLog.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    query = tryConvertToTdObject(json['query']);
    fromEventId = tryConvertToTdObject(json['from_event_id']);
    limit = tryConvertToTdObject(json['limit']);
    filters = tryConvertToTdObject(json['filters']);
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class GetPaymentForm extends TdFunction {
  @override
  Type get returnType => PaymentForm;

  @override
  String get tdType => 'getPaymentForm';

  int chatId;
  int messageId;
  PaymentFormTheme theme;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'theme': theme,
  };

  GetPaymentForm(
    this.chatId,
    this.messageId,
    this.theme,
  );

  GetPaymentForm.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    theme = tryConvertToTdObject(json['theme']);
  }
}

@reflector
class ValidateOrderInfo extends TdFunction {
  @override
  Type get returnType => ValidatedOrderInfo;

  @override
  String get tdType => 'validateOrderInfo';

  int chatId;
  int messageId;
  OrderInfo orderInfo;
  bool allowSave;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'order_info': orderInfo,
    'allow_save': allowSave,
  };

  ValidateOrderInfo(
    this.chatId,
    this.messageId,
    this.orderInfo,
    this.allowSave,
  );

  ValidateOrderInfo.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    orderInfo = tryConvertToTdObject(json['order_info']);
    allowSave = tryConvertToTdObject(json['allow_save']);
  }
}

@reflector
class SendPaymentForm extends TdFunction {
  @override
  Type get returnType => PaymentResult;

  @override
  String get tdType => 'sendPaymentForm';

  int chatId;
  int messageId;
  int paymentFormId;
  String orderInfoId;
  String shippingOptionId;
  InputCredentials credentials;
  int tipAmount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'payment_form_id': paymentFormId,
    'order_info_id': orderInfoId,
    'shipping_option_id': shippingOptionId,
    'credentials': credentials,
    'tip_amount': tipAmount,
  };

  SendPaymentForm(
    this.chatId,
    this.messageId,
    this.paymentFormId,
    this.orderInfoId,
    this.shippingOptionId,
    this.credentials,
    this.tipAmount,
  );

  SendPaymentForm.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    paymentFormId = tryConvertToTdObject(json['payment_form_id']);
    orderInfoId = tryConvertToTdObject(json['order_info_id']);
    shippingOptionId = tryConvertToTdObject(json['shipping_option_id']);
    credentials = tryConvertToTdObject(json['credentials']);
    tipAmount = tryConvertToTdObject(json['tip_amount']);
  }
}

@reflector
class GetPaymentReceipt extends TdFunction {
  @override
  Type get returnType => PaymentReceipt;

  @override
  String get tdType => 'getPaymentReceipt';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  GetPaymentReceipt(
    this.chatId,
    this.messageId,
  );

  GetPaymentReceipt.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class GetSavedOrderInfo extends TdFunction {
  @override
  Type get returnType => OrderInfo;

  @override
  String get tdType => 'getSavedOrderInfo';

  @override
  Map<String, dynamic> get params => {};

  GetSavedOrderInfo();

  GetSavedOrderInfo.fromJson(Map<String, dynamic> json);
}

@reflector
class GetBackgrounds extends TdFunction {
  @override
  Type get returnType => Backgrounds;

  @override
  String get tdType => 'getBackgrounds';

  bool forDarkTheme;

  @override
  Map<String, dynamic> get params => {
    'for_dark_theme': forDarkTheme,
  };

  GetBackgrounds(
    this.forDarkTheme,
  );

  GetBackgrounds.fromJson(Map<String, dynamic> json) {
    forDarkTheme = tryConvertToTdObject(json['for_dark_theme']);
  }
}

@reflector
class SearchBackground extends TdFunction {
  @override
  Type get returnType => Background;

  @override
  String get tdType => 'searchBackground';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  SearchBackground(
    this.name,
  );

  SearchBackground.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class SetBackground extends TdFunction {
  @override
  Type get returnType => Background;

  @override
  String get tdType => 'setBackground';

  InputBackground background;
  BackgroundType type;
  bool forDarkTheme;

  @override
  Map<String, dynamic> get params => {
    'background': background,
    'type': type,
    'for_dark_theme': forDarkTheme,
  };

  SetBackground(
    this.background,
    this.type,
    this.forDarkTheme,
  );

  SetBackground.fromJson(Map<String, dynamic> json) {
    background = tryConvertToTdObject(json['background']);
    type = tryConvertToTdObject(json['type']);
    forDarkTheme = tryConvertToTdObject(json['for_dark_theme']);
  }
}

@reflector
class GetLocalizationTargetInfo extends TdFunction {
  @override
  Type get returnType => LocalizationTargetInfo;

  @override
  String get tdType => 'getLocalizationTargetInfo';

  bool onlyLocal;

  @override
  Map<String, dynamic> get params => {
    'only_local': onlyLocal,
  };

  GetLocalizationTargetInfo(
    this.onlyLocal,
  );

  GetLocalizationTargetInfo.fromJson(Map<String, dynamic> json) {
    onlyLocal = tryConvertToTdObject(json['only_local']);
  }
}

@reflector
class GetLanguagePackInfo extends TdFunction {
  @override
  Type get returnType => LanguagePackInfo;

  @override
  String get tdType => 'getLanguagePackInfo';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  GetLanguagePackInfo(
    this.languagePackId,
  );

  GetLanguagePackInfo.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
  }
}

@reflector
class GetLanguagePackStrings extends TdFunction {
  @override
  Type get returnType => LanguagePackStrings;

  @override
  String get tdType => 'getLanguagePackStrings';

  String languagePackId;
  List<String> keys;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
    'keys': keys,
  };

  GetLanguagePackStrings(
    this.languagePackId,
    this.keys,
  );

  GetLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
    keys = tryConvertToTdObject(json['keys']);
  }
}

@reflector
class RegisterDevice extends TdFunction {
  @override
  Type get returnType => PushReceiverId;

  @override
  String get tdType => 'registerDevice';

  DeviceToken deviceToken;
  List<int> otherUserIds;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'other_user_ids': otherUserIds,
  };

  RegisterDevice(
    this.deviceToken,
    this.otherUserIds,
  );

  RegisterDevice.fromJson(Map<String, dynamic> json) {
    deviceToken = tryConvertToTdObject(json['device_token']);
    otherUserIds = tryConvertToTdObject(json['other_user_ids']);
  }
}

@reflector
class GetPushReceiverId extends TdFunction {
  @override
  Type get returnType => PushReceiverId;

  @override
  String get tdType => 'getPushReceiverId';

  String payload;

  @override
  Map<String, dynamic> get params => {
    'payload': payload,
  };

  GetPushReceiverId(
    this.payload,
  );

  GetPushReceiverId.fromJson(Map<String, dynamic> json) {
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class GetRecentlyVisitedTMeUrls extends TdFunction {
  @override
  Type get returnType => TMeUrls;

  @override
  String get tdType => 'getRecentlyVisitedTMeUrls';

  String referrer;

  @override
  Map<String, dynamic> get params => {
    'referrer': referrer,
  };

  GetRecentlyVisitedTMeUrls(
    this.referrer,
  );

  GetRecentlyVisitedTMeUrls.fromJson(Map<String, dynamic> json) {
    referrer = tryConvertToTdObject(json['referrer']);
  }
}

@reflector
class GetUserPrivacySettingRules extends TdFunction {
  @override
  Type get returnType => UserPrivacySettingRules;

  @override
  String get tdType => 'getUserPrivacySettingRules';

  UserPrivacySetting setting;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
  };

  GetUserPrivacySettingRules(
    this.setting,
  );

  GetUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    setting = tryConvertToTdObject(json['setting']);
  }
}

@reflector
class GetOption extends TdFunction {
  @override
  Type get returnType => OptionValue;

  @override
  String get tdType => 'getOption';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  GetOption(
    this.name,
  );

  GetOption.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class GetAccountTtl extends TdFunction {
  @override
  Type get returnType => AccountTtl;

  @override
  String get tdType => 'getAccountTtl';

  @override
  Map<String, dynamic> get params => {};

  GetAccountTtl();

  GetAccountTtl.fromJson(Map<String, dynamic> json);
}

@reflector
class GetChatStatistics extends TdFunction {
  @override
  Type get returnType => ChatStatistics;

  @override
  String get tdType => 'getChatStatistics';

  int chatId;
  bool isDark;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_dark': isDark,
  };

  GetChatStatistics(
    this.chatId,
    this.isDark,
  );

  GetChatStatistics.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isDark = tryConvertToTdObject(json['is_dark']);
  }
}

@reflector
class GetMessageStatistics extends TdFunction {
  @override
  Type get returnType => MessageStatistics;

  @override
  String get tdType => 'getMessageStatistics';

  int chatId;
  int messageId;
  bool isDark;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'is_dark': isDark,
  };

  GetMessageStatistics(
    this.chatId,
    this.messageId,
    this.isDark,
  );

  GetMessageStatistics.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    isDark = tryConvertToTdObject(json['is_dark']);
  }
}

@reflector
class GetStatisticalGraph extends TdFunction {
  @override
  Type get returnType => StatisticalGraph;

  @override
  String get tdType => 'getStatisticalGraph';

  int chatId;
  String token;
  int x;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'token': token,
    'x': x,
  };

  GetStatisticalGraph(
    this.chatId,
    this.token,
    this.x,
  );

  GetStatisticalGraph.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    token = tryConvertToTdObject(json['token']);
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class GetStorageStatistics extends TdFunction {
  @override
  Type get returnType => StorageStatistics;

  @override
  String get tdType => 'getStorageStatistics';

  int chatLimit;

  @override
  Map<String, dynamic> get params => {
    'chat_limit': chatLimit,
  };

  GetStorageStatistics(
    this.chatLimit,
  );

  GetStorageStatistics.fromJson(Map<String, dynamic> json) {
    chatLimit = tryConvertToTdObject(json['chat_limit']);
  }
}

@reflector
class OptimizeStorage extends TdFunction {
  @override
  Type get returnType => StorageStatistics;

  @override
  String get tdType => 'optimizeStorage';

  int size;
  int ttl;
  int count;
  int immunityDelay;
  List<FileType> fileTypes;
  List<int> chatIds;
  List<int> excludeChatIds;
  bool returnDeletedFileStatistics;
  int chatLimit;

  @override
  Map<String, dynamic> get params => {
    'size': size,
    'ttl': ttl,
    'count': count,
    'immunity_delay': immunityDelay,
    'file_types': fileTypes,
    'chat_ids': chatIds,
    'exclude_chat_ids': excludeChatIds,
    'return_deleted_file_statistics': returnDeletedFileStatistics,
    'chat_limit': chatLimit,
  };

  OptimizeStorage(
    this.size,
    this.ttl,
    this.count,
    this.immunityDelay,
    this.fileTypes,
    this.chatIds,
    this.excludeChatIds,
    this.returnDeletedFileStatistics,
    this.chatLimit,
  );

  OptimizeStorage.fromJson(Map<String, dynamic> json) {
    size = tryConvertToTdObject(json['size']);
    ttl = tryConvertToTdObject(json['ttl']);
    count = tryConvertToTdObject(json['count']);
    immunityDelay = tryConvertToTdObject(json['immunity_delay']);
    fileTypes = tryConvertToTdObject(json['file_types']);
    chatIds = tryConvertToTdObject(json['chat_ids']);
    excludeChatIds = tryConvertToTdObject(json['exclude_chat_ids']);
    returnDeletedFileStatistics = tryConvertToTdObject(json['return_deleted_file_statistics']);
    chatLimit = tryConvertToTdObject(json['chat_limit']);
  }
}

@reflector
class GetStorageStatisticsFast extends TdFunction {
  @override
  Type get returnType => StorageStatisticsFast;

  @override
  String get tdType => 'getStorageStatisticsFast';

  @override
  Map<String, dynamic> get params => {};

  GetStorageStatisticsFast();

  GetStorageStatisticsFast.fromJson(Map<String, dynamic> json);
}

@reflector
class GetDatabaseStatistics extends TdFunction {
  @override
  Type get returnType => DatabaseStatistics;

  @override
  String get tdType => 'getDatabaseStatistics';

  @override
  Map<String, dynamic> get params => {};

  GetDatabaseStatistics();

  GetDatabaseStatistics.fromJson(Map<String, dynamic> json);
}

@reflector
class GetNetworkStatistics extends TdFunction {
  @override
  Type get returnType => NetworkStatistics;

  @override
  String get tdType => 'getNetworkStatistics';

  bool onlyCurrent;

  @override
  Map<String, dynamic> get params => {
    'only_current': onlyCurrent,
  };

  GetNetworkStatistics(
    this.onlyCurrent,
  );

  GetNetworkStatistics.fromJson(Map<String, dynamic> json) {
    onlyCurrent = tryConvertToTdObject(json['only_current']);
  }
}

@reflector
class GetAutoDownloadSettingsPresets extends TdFunction {
  @override
  Type get returnType => AutoDownloadSettingsPresets;

  @override
  String get tdType => 'getAutoDownloadSettingsPresets';

  @override
  Map<String, dynamic> get params => {};

  GetAutoDownloadSettingsPresets();

  GetAutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json);
}

@reflector
class GetBankCardInfo extends TdFunction {
  @override
  Type get returnType => BankCardInfo;

  @override
  String get tdType => 'getBankCardInfo';

  String bankCardNumber;

  @override
  Map<String, dynamic> get params => {
    'bank_card_number': bankCardNumber,
  };

  GetBankCardInfo(
    this.bankCardNumber,
  );

  GetBankCardInfo.fromJson(Map<String, dynamic> json) {
    bankCardNumber = tryConvertToTdObject(json['bank_card_number']);
  }
}

@reflector
class GetPassportElement extends TdFunction {
  @override
  Type get returnType => PassportElement;

  @override
  String get tdType => 'getPassportElement';

  PassportElementType type;
  String password;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'password': password,
  };

  GetPassportElement(
    this.type,
    this.password,
  );

  GetPassportElement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class SetPassportElement extends TdFunction {
  @override
  Type get returnType => PassportElement;

  @override
  String get tdType => 'setPassportElement';

  InputPassportElement element;
  String password;

  @override
  Map<String, dynamic> get params => {
    'element': element,
    'password': password,
  };

  SetPassportElement(
    this.element,
    this.password,
  );

  SetPassportElement.fromJson(Map<String, dynamic> json) {
    element = tryConvertToTdObject(json['element']);
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class GetAllPassportElements extends TdFunction {
  @override
  Type get returnType => PassportElements;

  @override
  String get tdType => 'getAllPassportElements';

  String password;

  @override
  Map<String, dynamic> get params => {
    'password': password,
  };

  GetAllPassportElements(
    this.password,
  );

  GetAllPassportElements.fromJson(Map<String, dynamic> json) {
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class GetPassportAuthorizationForm extends TdFunction {
  @override
  Type get returnType => PassportAuthorizationForm;

  @override
  String get tdType => 'getPassportAuthorizationForm';

  int botUserId;
  String scope;
  String publicKey;
  String nonce;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'scope': scope,
    'public_key': publicKey,
    'nonce': nonce,
  };

  GetPassportAuthorizationForm(
    this.botUserId,
    this.scope,
    this.publicKey,
    this.nonce,
  );

  GetPassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    scope = tryConvertToTdObject(json['scope']);
    publicKey = tryConvertToTdObject(json['public_key']);
    nonce = tryConvertToTdObject(json['nonce']);
  }
}

@reflector
class GetPassportAuthorizationFormAvailableElements extends TdFunction {
  @override
  Type get returnType => PassportElementsWithErrors;

  @override
  String get tdType => 'getPassportAuthorizationFormAvailableElements';

  int autorizationFormId;
  String password;

  @override
  Map<String, dynamic> get params => {
    'autorization_form_id': autorizationFormId,
    'password': password,
  };

  GetPassportAuthorizationFormAvailableElements(
    this.autorizationFormId,
    this.password,
  );

  GetPassportAuthorizationFormAvailableElements.fromJson(Map<String, dynamic> json) {
    autorizationFormId = tryConvertToTdObject(json['autorization_form_id']);
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class CheckStickerSetName extends TdFunction {
  @override
  Type get returnType => CheckStickerSetNameResult;

  @override
  String get tdType => 'checkStickerSetName';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  CheckStickerSetName(
    this.name,
  );

  CheckStickerSetName.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class SendCustomRequest extends TdFunction {
  @override
  Type get returnType => CustomRequestResult;

  @override
  String get tdType => 'sendCustomRequest';

  String method;
  String parameters;

  @override
  Map<String, dynamic> get params => {
    'method': method,
    'parameters': parameters,
  };

  SendCustomRequest(
    this.method,
    this.parameters,
  );

  SendCustomRequest.fromJson(Map<String, dynamic> json) {
    method = tryConvertToTdObject(json['method']);
    parameters = tryConvertToTdObject(json['parameters']);
  }
}

@reflector
class GetCountries extends TdFunction {
  @override
  Type get returnType => Countries;

  @override
  String get tdType => 'getCountries';

  @override
  Map<String, dynamic> get params => {};

  GetCountries();

  GetCountries.fromJson(Map<String, dynamic> json);
}

@reflector
class GetPhoneNumberInfo extends TdFunction {
  @override
  Type get returnType => PhoneNumberInfo;

  @override
  String get tdType => 'getPhoneNumberInfo';

  String phoneNumberPrefix;

  @override
  Map<String, dynamic> get params => {
    'phone_number_prefix': phoneNumberPrefix,
  };

  GetPhoneNumberInfo(
    this.phoneNumberPrefix,
  );

  GetPhoneNumberInfo.fromJson(Map<String, dynamic> json) {
    phoneNumberPrefix = tryConvertToTdObject(json['phone_number_prefix']);
  }
}

@reflector
class GetPhoneNumberInfoSync extends TdFunction {
  @override
  Type get returnType => PhoneNumberInfo;

  @override
  String get tdType => 'getPhoneNumberInfoSync';

  String languageCode;
  String phoneNumberPrefix;

  @override
  Map<String, dynamic> get params => {
    'language_code': languageCode,
    'phone_number_prefix': phoneNumberPrefix,
  };

  GetPhoneNumberInfoSync(
    this.languageCode,
    this.phoneNumberPrefix,
  );

  GetPhoneNumberInfoSync.fromJson(Map<String, dynamic> json) {
    languageCode = tryConvertToTdObject(json['language_code']);
    phoneNumberPrefix = tryConvertToTdObject(json['phone_number_prefix']);
  }
}

@reflector
class GetDeepLinkInfo extends TdFunction {
  @override
  Type get returnType => DeepLinkInfo;

  @override
  String get tdType => 'getDeepLinkInfo';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  GetDeepLinkInfo(
    this.link,
  );

  GetDeepLinkInfo.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
  }
}

@reflector
class AddProxy extends TdFunction {
  @override
  Type get returnType => Proxy;

  @override
  String get tdType => 'addProxy';

  String server;
  int port;
  bool enable;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'server': server,
    'port': port,
    'enable': enable,
    'type': type,
  };

  AddProxy(
    this.server,
    this.port,
    this.enable,
    this.type,
  );

  AddProxy.fromJson(Map<String, dynamic> json) {
    server = tryConvertToTdObject(json['server']);
    port = tryConvertToTdObject(json['port']);
    enable = tryConvertToTdObject(json['enable']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class EditProxy extends TdFunction {
  @override
  Type get returnType => Proxy;

  @override
  String get tdType => 'editProxy';

  int proxyId;
  String server;
  int port;
  bool enable;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
    'server': server,
    'port': port,
    'enable': enable,
    'type': type,
  };

  EditProxy(
    this.proxyId,
    this.server,
    this.port,
    this.enable,
    this.type,
  );

  EditProxy.fromJson(Map<String, dynamic> json) {
    proxyId = tryConvertToTdObject(json['proxy_id']);
    server = tryConvertToTdObject(json['server']);
    port = tryConvertToTdObject(json['port']);
    enable = tryConvertToTdObject(json['enable']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class GetProxies extends TdFunction {
  @override
  Type get returnType => Proxies;

  @override
  String get tdType => 'getProxies';

  @override
  Map<String, dynamic> get params => {};

  GetProxies();

  GetProxies.fromJson(Map<String, dynamic> json);
}

@reflector
class PingProxy extends TdFunction {
  @override
  Type get returnType => Seconds;

  @override
  String get tdType => 'pingProxy';

  int proxyId;

  @override
  Map<String, dynamic> get params => {
    'proxy_id': proxyId,
  };

  PingProxy(
    this.proxyId,
  );

  PingProxy.fromJson(Map<String, dynamic> json) {
    proxyId = tryConvertToTdObject(json['proxy_id']);
  }
}

@reflector
class GetLogStream extends TdFunction {
  @override
  Type get returnType => LogStream;

  @override
  String get tdType => 'getLogStream';

  @override
  Map<String, dynamic> get params => {};

  GetLogStream();

  GetLogStream.fromJson(Map<String, dynamic> json);
}

@reflector
class GetLogVerbosityLevel extends TdFunction {
  @override
  Type get returnType => LogVerbosityLevel;

  @override
  String get tdType => 'getLogVerbosityLevel';

  @override
  Map<String, dynamic> get params => {};

  GetLogVerbosityLevel();

  GetLogVerbosityLevel.fromJson(Map<String, dynamic> json);
}

@reflector
class GetLogTagVerbosityLevel extends TdFunction {
  @override
  Type get returnType => LogVerbosityLevel;

  @override
  String get tdType => 'getLogTagVerbosityLevel';

  String tag;

  @override
  Map<String, dynamic> get params => {
    'tag': tag,
  };

  GetLogTagVerbosityLevel(
    this.tag,
  );

  GetLogTagVerbosityLevel.fromJson(Map<String, dynamic> json) {
    tag = tryConvertToTdObject(json['tag']);
  }
}

@reflector
class GetLogTags extends TdFunction {
  @override
  Type get returnType => LogTags;

  @override
  String get tdType => 'getLogTags';

  @override
  Map<String, dynamic> get params => {};

  GetLogTags();

  GetLogTags.fromJson(Map<String, dynamic> json);
}

@reflector
class TestCallString extends TdFunction {
  @override
  Type get returnType => TestString;

  @override
  String get tdType => 'testCallString';

  String x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallString(
    this.x,
  );

  TestCallString.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestCallBytes extends TdFunction {
  @override
  Type get returnType => TestBytes;

  @override
  String get tdType => 'testCallBytes';

  String x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallBytes(
    this.x,
  );

  TestCallBytes.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestCallVectorInt extends TdFunction {
  @override
  Type get returnType => TestVectorInt;

  @override
  String get tdType => 'testCallVectorInt';

  List<int> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorInt(
    this.x,
  );

  TestCallVectorInt.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestCallVectorIntObject extends TdFunction {
  @override
  Type get returnType => TestVectorIntObject;

  @override
  String get tdType => 'testCallVectorIntObject';

  List<TestInt> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorIntObject(
    this.x,
  );

  TestCallVectorIntObject.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestCallVectorString extends TdFunction {
  @override
  Type get returnType => TestVectorString;

  @override
  String get tdType => 'testCallVectorString';

  List<String> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorString(
    this.x,
  );

  TestCallVectorString.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestCallVectorStringObject extends TdFunction {
  @override
  Type get returnType => TestVectorStringObject;

  @override
  String get tdType => 'testCallVectorStringObject';

  List<TestString> x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestCallVectorStringObject(
    this.x,
  );

  TestCallVectorStringObject.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestSquareInt extends TdFunction {
  @override
  Type get returnType => TestInt;

  @override
  String get tdType => 'testSquareInt';

  int x;

  @override
  Map<String, dynamic> get params => {
    'x': x,
  };

  TestSquareInt(
    this.x,
  );

  TestSquareInt.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
  }
}

@reflector
class TestUseUpdate extends TdFunction {
  @override
  Type get returnType => Update;

  @override
  String get tdType => 'testUseUpdate';

  @override
  Map<String, dynamic> get params => {};

  TestUseUpdate();

  TestUseUpdate.fromJson(Map<String, dynamic> json);
}

@reflector
class TestReturnError extends TdFunction {
  @override
  Type get returnType => Error;

  @override
  String get tdType => 'testReturnError';

  Error error;

  @override
  Map<String, dynamic> get params => {
    'error': error,
  };

  TestReturnError(
    this.error,
  );

  TestReturnError.fromJson(Map<String, dynamic> json) {
    error = tryConvertToTdObject(json['error']);
  }
}
