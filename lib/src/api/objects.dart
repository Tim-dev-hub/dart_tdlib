import 'base_classes.dart';
import 'utils.dart';

@reflector
class Error extends TdObject {
  @override
  String get tdType => 'error';

  int code;
  String message;

  @override
  Map<String, dynamic> get params => {
    'code': code,
    'message': message,
  };

  Error({
    this.code,
    this.message,
  });

  Error.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class Ok extends TdObject {
  @override
  String get tdType => 'ok';

  @override
  Map<String, dynamic> get params => {};

  Ok();

  Ok.fromJson(Map<String, dynamic> json);
}

@reflector
class TdlibParameters extends TdObject {
  @override
  String get tdType => 'tdlibParameters';

  bool useTestDc;
  String databaseDirectory;
  String filesDirectory;
  bool useFileDatabase;
  bool useChatInfoDatabase;
  bool useMessageDatabase;
  bool useSecretChats;
  int apiId;
  String apiHash;
  String systemLanguageCode;
  String deviceModel;
  String systemVersion;
  String applicationVersion;
  bool enableStorageOptimizer;
  bool ignoreFileNames;

  @override
  Map<String, dynamic> get params => {
    'use_test_dc': useTestDc,
    'database_directory': databaseDirectory,
    'files_directory': filesDirectory,
    'use_file_database': useFileDatabase,
    'use_chat_info_database': useChatInfoDatabase,
    'use_message_database': useMessageDatabase,
    'use_secret_chats': useSecretChats,
    'api_id': apiId,
    'api_hash': apiHash,
    'system_language_code': systemLanguageCode,
    'device_model': deviceModel,
    'system_version': systemVersion,
    'application_version': applicationVersion,
    'enable_storage_optimizer': enableStorageOptimizer,
    'ignore_file_names': ignoreFileNames,
  };

  TdlibParameters({
    this.useTestDc,
    this.databaseDirectory,
    this.filesDirectory,
    this.useFileDatabase,
    this.useChatInfoDatabase,
    this.useMessageDatabase,
    this.useSecretChats,
    this.apiId,
    this.apiHash,
    this.systemLanguageCode,
    this.deviceModel,
    this.systemVersion,
    this.applicationVersion,
    this.enableStorageOptimizer,
    this.ignoreFileNames,
  });

  TdlibParameters.fromJson(Map<String, dynamic> json) {
    useTestDc = tryConvertToTdObject(json['use_test_dc']);
    databaseDirectory = tryConvertToTdObject(json['database_directory']);
    filesDirectory = tryConvertToTdObject(json['files_directory']);
    useFileDatabase = tryConvertToTdObject(json['use_file_database']);
    useChatInfoDatabase = tryConvertToTdObject(json['use_chat_info_database']);
    useMessageDatabase = tryConvertToTdObject(json['use_message_database']);
    useSecretChats = tryConvertToTdObject(json['use_secret_chats']);
    apiId = tryConvertToTdObject(json['api_id']);
    apiHash = tryConvertToTdObject(json['api_hash']);
    systemLanguageCode = tryConvertToTdObject(json['system_language_code']);
    deviceModel = tryConvertToTdObject(json['device_model']);
    systemVersion = tryConvertToTdObject(json['system_version']);
    applicationVersion = tryConvertToTdObject(json['application_version']);
    enableStorageOptimizer = tryConvertToTdObject(json['enable_storage_optimizer']);
    ignoreFileNames = tryConvertToTdObject(json['ignore_file_names']);
  }
}

abstract class AuthenticationCodeType extends TdObject {}

@reflector
class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeTelegramMessage';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeTelegramMessage({
    this.length,
  });

  AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeSms';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeSms({
    this.length,
  });

  AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeCall';

  int length;

  @override
  Map<String, dynamic> get params => {
    'length': length,
  };

  AuthenticationCodeTypeCall({
    this.length,
  });

  AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  @override
  String get tdType => 'authenticationCodeTypeFlashCall';

  String pattern;

  @override
  Map<String, dynamic> get params => {
    'pattern': pattern,
  };

  AuthenticationCodeTypeFlashCall({
    this.pattern,
  });

  AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) {
    pattern = tryConvertToTdObject(json['pattern']);
  }
}

@reflector
class AuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'authenticationCodeInfo';

  String phoneNumber;
  AuthenticationCodeType type;
  AuthenticationCodeType nextType;
  int timeout;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'type': type,
    'next_type': nextType,
    'timeout': timeout,
  };

  AuthenticationCodeInfo({
    this.phoneNumber,
    this.type,
    this.nextType,
    this.timeout,
  });

  AuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    type = tryConvertToTdObject(json['type']);
    nextType = tryConvertToTdObject(json['next_type']);
    timeout = tryConvertToTdObject(json['timeout']);
  }
}

@reflector
class EmailAddressAuthenticationCodeInfo extends TdObject {
  @override
  String get tdType => 'emailAddressAuthenticationCodeInfo';

  String emailAddressPattern;
  int length;

  @override
  Map<String, dynamic> get params => {
    'email_address_pattern': emailAddressPattern,
    'length': length,
  };

  EmailAddressAuthenticationCodeInfo({
    this.emailAddressPattern,
    this.length,
  });

  EmailAddressAuthenticationCodeInfo.fromJson(Map<String, dynamic> json) {
    emailAddressPattern = tryConvertToTdObject(json['email_address_pattern']);
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class TextEntity extends TdObject {
  @override
  String get tdType => 'textEntity';

  int offset;
  int length;
  TextEntityType type;

  @override
  Map<String, dynamic> get params => {
    'offset': offset,
    'length': length,
    'type': type,
  };

  TextEntity({
    this.offset,
    this.length,
    this.type,
  });

  TextEntity.fromJson(Map<String, dynamic> json) {
    offset = tryConvertToTdObject(json['offset']);
    length = tryConvertToTdObject(json['length']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class TextEntities extends TdObject {
  @override
  String get tdType => 'textEntities';

  List<TextEntity> entities;

  @override
  Map<String, dynamic> get params => {
    'entities': entities,
  };

  TextEntities({
    this.entities,
  });

  TextEntities.fromJson(Map<String, dynamic> json) {
    entities = tryConvertToTdObject(json['entities']);
  }
}

@reflector
class FormattedText extends TdObject {
  @override
  String get tdType => 'formattedText';

  String text;
  List<TextEntity> entities;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'entities': entities,
  };

  FormattedText({
    this.text,
    this.entities,
  });

  FormattedText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    entities = tryConvertToTdObject(json['entities']);
  }
}

@reflector
class TermsOfService extends TdObject {
  @override
  String get tdType => 'termsOfService';

  FormattedText text;
  int minUserAge;
  bool showPopup;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'min_user_age': minUserAge,
    'show_popup': showPopup,
  };

  TermsOfService({
    this.text,
    this.minUserAge,
    this.showPopup,
  });

  TermsOfService.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    minUserAge = tryConvertToTdObject(json['min_user_age']);
    showPopup = tryConvertToTdObject(json['show_popup']);
  }
}

abstract class AuthorizationState extends TdObject {}

@reflector
class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitTdlibParameters';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateWaitTdlibParameters();

  AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateWaitEncryptionKey extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitEncryptionKey';

  bool isEncrypted;

  @override
  Map<String, dynamic> get params => {
    'is_encrypted': isEncrypted,
  };

  AuthorizationStateWaitEncryptionKey({
    this.isEncrypted,
  });

  AuthorizationStateWaitEncryptionKey.fromJson(Map<String, dynamic> json) {
    isEncrypted = tryConvertToTdObject(json['is_encrypted']);
  }
}

@reflector
class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateWaitPhoneNumber();

  AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateWaitCode extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitCode';

  AuthenticationCodeInfo codeInfo;

  @override
  Map<String, dynamic> get params => {
    'code_info': codeInfo,
  };

  AuthorizationStateWaitCode({
    this.codeInfo,
  });

  AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) {
    codeInfo = tryConvertToTdObject(json['code_info']);
  }
}

@reflector
class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitOtherDeviceConfirmation';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  AuthorizationStateWaitOtherDeviceConfirmation({
    this.link,
  });

  AuthorizationStateWaitOtherDeviceConfirmation.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
  }
}

@reflector
class AuthorizationStateWaitRegistration extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitRegistration';

  TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service': termsOfService,
  };

  AuthorizationStateWaitRegistration({
    this.termsOfService,
  });

  AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json) {
    termsOfService = tryConvertToTdObject(json['terms_of_service']);
  }
}

@reflector
class AuthorizationStateWaitPassword extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateWaitPassword';

  String passwordHint;
  bool hasRecoveryEmailAddress;
  String recoveryEmailAddressPattern;

  @override
  Map<String, dynamic> get params => {
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'recovery_email_address_pattern': recoveryEmailAddressPattern,
  };

  AuthorizationStateWaitPassword({
    this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.recoveryEmailAddressPattern,
  });

  AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) {
    passwordHint = tryConvertToTdObject(json['password_hint']);
    hasRecoveryEmailAddress = tryConvertToTdObject(json['has_recovery_email_address']);
    recoveryEmailAddressPattern = tryConvertToTdObject(json['recovery_email_address_pattern']);
  }
}

@reflector
class AuthorizationStateReady extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateReady';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateReady();

  AuthorizationStateReady.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateLoggingOut extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateLoggingOut';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateLoggingOut();

  AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateClosing extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateClosing';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateClosing();

  AuthorizationStateClosing.fromJson(Map<String, dynamic> json);
}

@reflector
class AuthorizationStateClosed extends AuthorizationState {
  @override
  String get tdType => 'authorizationStateClosed';

  @override
  Map<String, dynamic> get params => {};

  AuthorizationStateClosed();

  AuthorizationStateClosed.fromJson(Map<String, dynamic> json);
}

@reflector
class PasswordState extends TdObject {
  @override
  String get tdType => 'passwordState';

  bool hasPassword;
  String passwordHint;
  bool hasRecoveryEmailAddress;
  bool hasPassportData;
  EmailAddressAuthenticationCodeInfo recoveryEmailAddressCodeInfo;
  int pendingResetDate;

  @override
  Map<String, dynamic> get params => {
    'has_password': hasPassword,
    'password_hint': passwordHint,
    'has_recovery_email_address': hasRecoveryEmailAddress,
    'has_passport_data': hasPassportData,
    'recovery_email_address_code_info': recoveryEmailAddressCodeInfo,
    'pending_reset_date': pendingResetDate,
  };

  PasswordState({
    this.hasPassword,
    this.passwordHint,
    this.hasRecoveryEmailAddress,
    this.hasPassportData,
    this.recoveryEmailAddressCodeInfo,
    this.pendingResetDate,
  });

  PasswordState.fromJson(Map<String, dynamic> json) {
    hasPassword = tryConvertToTdObject(json['has_password']);
    passwordHint = tryConvertToTdObject(json['password_hint']);
    hasRecoveryEmailAddress = tryConvertToTdObject(json['has_recovery_email_address']);
    hasPassportData = tryConvertToTdObject(json['has_passport_data']);
    recoveryEmailAddressCodeInfo = tryConvertToTdObject(json['recovery_email_address_code_info']);
    pendingResetDate = tryConvertToTdObject(json['pending_reset_date']);
  }
}

@reflector
class RecoveryEmailAddress extends TdObject {
  @override
  String get tdType => 'recoveryEmailAddress';

  String recoveryEmailAddress;

  @override
  Map<String, dynamic> get params => {
    'recovery_email_address': recoveryEmailAddress,
  };

  RecoveryEmailAddress({
    this.recoveryEmailAddress,
  });

  RecoveryEmailAddress.fromJson(Map<String, dynamic> json) {
    recoveryEmailAddress = tryConvertToTdObject(json['recovery_email_address']);
  }
}

@reflector
class TemporaryPasswordState extends TdObject {
  @override
  String get tdType => 'temporaryPasswordState';

  bool hasPassword;
  int validFor;

  @override
  Map<String, dynamic> get params => {
    'has_password': hasPassword,
    'valid_for': validFor,
  };

  TemporaryPasswordState({
    this.hasPassword,
    this.validFor,
  });

  TemporaryPasswordState.fromJson(Map<String, dynamic> json) {
    hasPassword = tryConvertToTdObject(json['has_password']);
    validFor = tryConvertToTdObject(json['valid_for']);
  }
}

@reflector
class LocalFile extends TdObject {
  @override
  String get tdType => 'localFile';

  String path;
  bool canBeDownloaded;
  bool canBeDeleted;
  bool isDownloadingActive;
  bool isDownloadingCompleted;
  int downloadOffset;
  int downloadedPrefixSize;
  int downloadedSize;

  @override
  Map<String, dynamic> get params => {
    'path': path,
    'can_be_downloaded': canBeDownloaded,
    'can_be_deleted': canBeDeleted,
    'is_downloading_active': isDownloadingActive,
    'is_downloading_completed': isDownloadingCompleted,
    'download_offset': downloadOffset,
    'downloaded_prefix_size': downloadedPrefixSize,
    'downloaded_size': downloadedSize,
  };

  LocalFile({
    this.path,
    this.canBeDownloaded,
    this.canBeDeleted,
    this.isDownloadingActive,
    this.isDownloadingCompleted,
    this.downloadOffset,
    this.downloadedPrefixSize,
    this.downloadedSize,
  });

  LocalFile.fromJson(Map<String, dynamic> json) {
    path = tryConvertToTdObject(json['path']);
    canBeDownloaded = tryConvertToTdObject(json['can_be_downloaded']);
    canBeDeleted = tryConvertToTdObject(json['can_be_deleted']);
    isDownloadingActive = tryConvertToTdObject(json['is_downloading_active']);
    isDownloadingCompleted = tryConvertToTdObject(json['is_downloading_completed']);
    downloadOffset = tryConvertToTdObject(json['download_offset']);
    downloadedPrefixSize = tryConvertToTdObject(json['downloaded_prefix_size']);
    downloadedSize = tryConvertToTdObject(json['downloaded_size']);
  }
}

@reflector
class RemoteFile extends TdObject {
  @override
  String get tdType => 'remoteFile';

  String id;
  String uniqueId;
  bool isUploadingActive;
  bool isUploadingCompleted;
  int uploadedSize;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'unique_id': uniqueId,
    'is_uploading_active': isUploadingActive,
    'is_uploading_completed': isUploadingCompleted,
    'uploaded_size': uploadedSize,
  };

  RemoteFile({
    this.id,
    this.uniqueId,
    this.isUploadingActive,
    this.isUploadingCompleted,
    this.uploadedSize,
  });

  RemoteFile.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    uniqueId = tryConvertToTdObject(json['unique_id']);
    isUploadingActive = tryConvertToTdObject(json['is_uploading_active']);
    isUploadingCompleted = tryConvertToTdObject(json['is_uploading_completed']);
    uploadedSize = tryConvertToTdObject(json['uploaded_size']);
  }
}

@reflector
class File extends TdObject {
  @override
  String get tdType => 'file';

  int id;
  int size;
  int expectedSize;
  LocalFile local;
  RemoteFile remote;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'size': size,
    'expected_size': expectedSize,
    'local': local,
    'remote': remote,
  };

  File({
    this.id,
    this.size,
    this.expectedSize,
    this.local,
    this.remote,
  });

  File.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    size = tryConvertToTdObject(json['size']);
    expectedSize = tryConvertToTdObject(json['expected_size']);
    local = tryConvertToTdObject(json['local']);
    remote = tryConvertToTdObject(json['remote']);
  }
}

abstract class InputFile extends TdObject {}

@reflector
class InputFileId extends InputFile {
  @override
  String get tdType => 'inputFileId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  InputFileId({
    this.id,
  });

  InputFileId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

@reflector
class InputFileRemote extends InputFile {
  @override
  String get tdType => 'inputFileRemote';

  String id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  InputFileRemote({
    this.id,
  });

  InputFileRemote.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

@reflector
class InputFileLocal extends InputFile {
  @override
  String get tdType => 'inputFileLocal';

  String path;

  @override
  Map<String, dynamic> get params => {
    'path': path,
  };

  InputFileLocal({
    this.path,
  });

  InputFileLocal.fromJson(Map<String, dynamic> json) {
    path = tryConvertToTdObject(json['path']);
  }
}

@reflector
class InputFileGenerated extends InputFile {
  @override
  String get tdType => 'inputFileGenerated';

  String originalPath;
  String conversion;
  int expectedSize;

  @override
  Map<String, dynamic> get params => {
    'original_path': originalPath,
    'conversion': conversion,
    'expected_size': expectedSize,
  };

  InputFileGenerated({
    this.originalPath,
    this.conversion,
    this.expectedSize,
  });

  InputFileGenerated.fromJson(Map<String, dynamic> json) {
    originalPath = tryConvertToTdObject(json['original_path']);
    conversion = tryConvertToTdObject(json['conversion']);
    expectedSize = tryConvertToTdObject(json['expected_size']);
  }
}

@reflector
class PhotoSize extends TdObject {
  @override
  String get tdType => 'photoSize';

  String type;
  File photo;
  int width;
  int height;
  List<int> progressiveSizes;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'photo': photo,
    'width': width,
    'height': height,
    'progressive_sizes': progressiveSizes,
  };

  PhotoSize({
    this.type,
    this.photo,
    this.width,
    this.height,
    this.progressiveSizes,
  });

  PhotoSize.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    photo = tryConvertToTdObject(json['photo']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    progressiveSizes = tryConvertToTdObject(json['progressive_sizes']);
  }
}

@reflector
class Minithumbnail extends TdObject {
  @override
  String get tdType => 'minithumbnail';

  int width;
  int height;
  String data;

  @override
  Map<String, dynamic> get params => {
    'width': width,
    'height': height,
    'data': data,
  };

  Minithumbnail({
    this.width,
    this.height,
    this.data,
  });

  Minithumbnail.fromJson(Map<String, dynamic> json) {
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    data = tryConvertToTdObject(json['data']);
  }
}

abstract class ThumbnailFormat extends TdObject {}

@reflector
class ThumbnailFormatJpeg extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatJpeg';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatJpeg();

  ThumbnailFormatJpeg.fromJson(Map<String, dynamic> json);
}

@reflector
class ThumbnailFormatPng extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatPng';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatPng();

  ThumbnailFormatPng.fromJson(Map<String, dynamic> json);
}

@reflector
class ThumbnailFormatWebp extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatWebp';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatWebp();

  ThumbnailFormatWebp.fromJson(Map<String, dynamic> json);
}

@reflector
class ThumbnailFormatGif extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatGif';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatGif();

  ThumbnailFormatGif.fromJson(Map<String, dynamic> json);
}

@reflector
class ThumbnailFormatTgs extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatTgs';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatTgs();

  ThumbnailFormatTgs.fromJson(Map<String, dynamic> json);
}

@reflector
class ThumbnailFormatMpeg4 extends ThumbnailFormat {
  @override
  String get tdType => 'thumbnailFormatMpeg4';

  @override
  Map<String, dynamic> get params => {};

  ThumbnailFormatMpeg4();

  ThumbnailFormatMpeg4.fromJson(Map<String, dynamic> json);
}

@reflector
class Thumbnail extends TdObject {
  @override
  String get tdType => 'thumbnail';

  ThumbnailFormat format;
  int width;
  int height;
  File file;

  @override
  Map<String, dynamic> get params => {
    'format': format,
    'width': width,
    'height': height,
    'file': file,
  };

  Thumbnail({
    this.format,
    this.width,
    this.height,
    this.file,
  });

  Thumbnail.fromJson(Map<String, dynamic> json) {
    format = tryConvertToTdObject(json['format']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    file = tryConvertToTdObject(json['file']);
  }
}

abstract class MaskPoint extends TdObject {}

@reflector
class MaskPointForehead extends MaskPoint {
  @override
  String get tdType => 'maskPointForehead';

  @override
  Map<String, dynamic> get params => {};

  MaskPointForehead();

  MaskPointForehead.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPointEyes extends MaskPoint {
  @override
  String get tdType => 'maskPointEyes';

  @override
  Map<String, dynamic> get params => {};

  MaskPointEyes();

  MaskPointEyes.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPointMouth extends MaskPoint {
  @override
  String get tdType => 'maskPointMouth';

  @override
  Map<String, dynamic> get params => {};

  MaskPointMouth();

  MaskPointMouth.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPointChin extends MaskPoint {
  @override
  String get tdType => 'maskPointChin';

  @override
  Map<String, dynamic> get params => {};

  MaskPointChin();

  MaskPointChin.fromJson(Map<String, dynamic> json);
}

@reflector
class MaskPosition extends TdObject {
  @override
  String get tdType => 'maskPosition';

  MaskPoint point;
  double xShift;
  double yShift;
  double scale;

  @override
  Map<String, dynamic> get params => {
    'point': point,
    'x_shift': xShift,
    'y_shift': yShift,
    'scale': scale,
  };

  MaskPosition({
    this.point,
    this.xShift,
    this.yShift,
    this.scale,
  });

  MaskPosition.fromJson(Map<String, dynamic> json) {
    point = tryConvertToTdObject(json['point']);
    xShift = tryConvertToTdObject(json['x_shift']);
    yShift = tryConvertToTdObject(json['y_shift']);
    scale = tryConvertToTdObject(json['scale']);
  }
}

@reflector
class ClosedVectorPath extends TdObject {
  @override
  String get tdType => 'closedVectorPath';

  List<VectorPathCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'commands': commands,
  };

  ClosedVectorPath({
    this.commands,
  });

  ClosedVectorPath.fromJson(Map<String, dynamic> json) {
    commands = tryConvertToTdObject(json['commands']);
  }
}

@reflector
class PollOption extends TdObject {
  @override
  String get tdType => 'pollOption';

  String text;
  int voterCount;
  int votePercentage;
  bool isChosen;
  bool isBeingChosen;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'voter_count': voterCount,
    'vote_percentage': votePercentage,
    'is_chosen': isChosen,
    'is_being_chosen': isBeingChosen,
  };

  PollOption({
    this.text,
    this.voterCount,
    this.votePercentage,
    this.isChosen,
    this.isBeingChosen,
  });

  PollOption.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    voterCount = tryConvertToTdObject(json['voter_count']);
    votePercentage = tryConvertToTdObject(json['vote_percentage']);
    isChosen = tryConvertToTdObject(json['is_chosen']);
    isBeingChosen = tryConvertToTdObject(json['is_being_chosen']);
  }
}

abstract class PollType extends TdObject {}

@reflector
class PollTypeRegular extends PollType {
  @override
  String get tdType => 'pollTypeRegular';

  bool allowMultipleAnswers;

  @override
  Map<String, dynamic> get params => {
    'allow_multiple_answers': allowMultipleAnswers,
  };

  PollTypeRegular({
    this.allowMultipleAnswers,
  });

  PollTypeRegular.fromJson(Map<String, dynamic> json) {
    allowMultipleAnswers = tryConvertToTdObject(json['allow_multiple_answers']);
  }
}

@reflector
class PollTypeQuiz extends PollType {
  @override
  String get tdType => 'pollTypeQuiz';

  int correctOptionId;
  FormattedText explanation;

  @override
  Map<String, dynamic> get params => {
    'correct_option_id': correctOptionId,
    'explanation': explanation,
  };

  PollTypeQuiz({
    this.correctOptionId,
    this.explanation,
  });

  PollTypeQuiz.fromJson(Map<String, dynamic> json) {
    correctOptionId = tryConvertToTdObject(json['correct_option_id']);
    explanation = tryConvertToTdObject(json['explanation']);
  }
}

@reflector
class Animation extends TdObject {
  @override
  String get tdType => 'animation';

  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  bool hasStickers;
  Minithumbnail minithumbnail;
  Thumbnail thumbnail;
  File animation;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'animation': animation,
  };

  Animation({
    this.duration,
    this.width,
    this.height,
    this.fileName,
    this.mimeType,
    this.hasStickers,
    this.minithumbnail,
    this.thumbnail,
    this.animation,
  });

  Animation.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    hasStickers = tryConvertToTdObject(json['has_stickers']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class Audio extends TdObject {
  @override
  String get tdType => 'audio';

  int duration;
  String title;
  String performer;
  String fileName;
  String mimeType;
  Minithumbnail albumCoverMinithumbnail;
  Thumbnail albumCoverThumbnail;
  File audio;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'title': title,
    'performer': performer,
    'file_name': fileName,
    'mime_type': mimeType,
    'album_cover_minithumbnail': albumCoverMinithumbnail,
    'album_cover_thumbnail': albumCoverThumbnail,
    'audio': audio,
  };

  Audio({
    this.duration,
    this.title,
    this.performer,
    this.fileName,
    this.mimeType,
    this.albumCoverMinithumbnail,
    this.albumCoverThumbnail,
    this.audio,
  });

  Audio.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    title = tryConvertToTdObject(json['title']);
    performer = tryConvertToTdObject(json['performer']);
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    albumCoverMinithumbnail = tryConvertToTdObject(json['album_cover_minithumbnail']);
    albumCoverThumbnail = tryConvertToTdObject(json['album_cover_thumbnail']);
    audio = tryConvertToTdObject(json['audio']);
  }
}

@reflector
class Document extends TdObject {
  @override
  String get tdType => 'document';

  String fileName;
  String mimeType;
  Minithumbnail minithumbnail;
  Thumbnail thumbnail;
  File document;

  @override
  Map<String, dynamic> get params => {
    'file_name': fileName,
    'mime_type': mimeType,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'document': document,
  };

  Document({
    this.fileName,
    this.mimeType,
    this.minithumbnail,
    this.thumbnail,
    this.document,
  });

  Document.fromJson(Map<String, dynamic> json) {
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    document = tryConvertToTdObject(json['document']);
  }
}

@reflector
class Photo extends TdObject {
  @override
  String get tdType => 'photo';

  bool hasStickers;
  Minithumbnail minithumbnail;
  List<PhotoSize> sizes;

  @override
  Map<String, dynamic> get params => {
    'has_stickers': hasStickers,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
  };

  Photo({
    this.hasStickers,
    this.minithumbnail,
    this.sizes,
  });

  Photo.fromJson(Map<String, dynamic> json) {
    hasStickers = tryConvertToTdObject(json['has_stickers']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    sizes = tryConvertToTdObject(json['sizes']);
  }
}

@reflector
class Sticker extends TdObject {
  @override
  String get tdType => 'sticker';

  int setId;
  int width;
  int height;
  String emoji;
  bool isAnimated;
  bool isMask;
  MaskPosition maskPosition;
  List<ClosedVectorPath> outline;
  Thumbnail thumbnail;
  File sticker;

  @override
  Map<String, dynamic> get params => {
    'set_id': setId,
    'width': width,
    'height': height,
    'emoji': emoji,
    'is_animated': isAnimated,
    'is_mask': isMask,
    'mask_position': maskPosition,
    'outline': outline,
    'thumbnail': thumbnail,
    'sticker': sticker,
  };

  Sticker({
    this.setId,
    this.width,
    this.height,
    this.emoji,
    this.isAnimated,
    this.isMask,
    this.maskPosition,
    this.outline,
    this.thumbnail,
    this.sticker,
  });

  Sticker.fromJson(Map<String, dynamic> json) {
    setId = tryConvertToTdObject(json['set_id']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    emoji = tryConvertToTdObject(json['emoji']);
    isAnimated = tryConvertToTdObject(json['is_animated']);
    isMask = tryConvertToTdObject(json['is_mask']);
    maskPosition = tryConvertToTdObject(json['mask_position']);
    outline = tryConvertToTdObject(json['outline']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class Video extends TdObject {
  @override
  String get tdType => 'video';

  int duration;
  int width;
  int height;
  String fileName;
  String mimeType;
  bool hasStickers;
  bool supportsStreaming;
  Minithumbnail minithumbnail;
  Thumbnail thumbnail;
  File video;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'width': width,
    'height': height,
    'file_name': fileName,
    'mime_type': mimeType,
    'has_stickers': hasStickers,
    'supports_streaming': supportsStreaming,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  Video({
    this.duration,
    this.width,
    this.height,
    this.fileName,
    this.mimeType,
    this.hasStickers,
    this.supportsStreaming,
    this.minithumbnail,
    this.thumbnail,
    this.video,
  });

  Video.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    fileName = tryConvertToTdObject(json['file_name']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    hasStickers = tryConvertToTdObject(json['has_stickers']);
    supportsStreaming = tryConvertToTdObject(json['supports_streaming']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    video = tryConvertToTdObject(json['video']);
  }
}

@reflector
class VideoNote extends TdObject {
  @override
  String get tdType => 'videoNote';

  int duration;
  int length;
  Minithumbnail minithumbnail;
  Thumbnail thumbnail;
  File video;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'length': length,
    'minithumbnail': minithumbnail,
    'thumbnail': thumbnail,
    'video': video,
  };

  VideoNote({
    this.duration,
    this.length,
    this.minithumbnail,
    this.thumbnail,
    this.video,
  });

  VideoNote.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    length = tryConvertToTdObject(json['length']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    video = tryConvertToTdObject(json['video']);
  }
}

@reflector
class VoiceNote extends TdObject {
  @override
  String get tdType => 'voiceNote';

  int duration;
  String waveform;
  String mimeType;
  File voice;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
    'waveform': waveform,
    'mime_type': mimeType,
    'voice': voice,
  };

  VoiceNote({
    this.duration,
    this.waveform,
    this.mimeType,
    this.voice,
  });

  VoiceNote.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
    waveform = tryConvertToTdObject(json['waveform']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    voice = tryConvertToTdObject(json['voice']);
  }
}

@reflector
class Contact extends TdObject {
  @override
  String get tdType => 'contact';

  String phoneNumber;
  String firstName;
  String lastName;
  String vcard;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
    'first_name': firstName,
    'last_name': lastName,
    'vcard': vcard,
    'user_id': userId,
  };

  Contact({
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.vcard,
    this.userId,
  });

  Contact.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    firstName = tryConvertToTdObject(json['first_name']);
    lastName = tryConvertToTdObject(json['last_name']);
    vcard = tryConvertToTdObject(json['vcard']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class Location extends TdObject {
  @override
  String get tdType => 'location';

  double latitude;
  double longitude;
  double horizontalAccuracy;

  @override
  Map<String, dynamic> get params => {
    'latitude': latitude,
    'longitude': longitude,
    'horizontal_accuracy': horizontalAccuracy,
  };

  Location({
    this.latitude,
    this.longitude,
    this.horizontalAccuracy,
  });

  Location.fromJson(Map<String, dynamic> json) {
    latitude = tryConvertToTdObject(json['latitude']);
    longitude = tryConvertToTdObject(json['longitude']);
    horizontalAccuracy = tryConvertToTdObject(json['horizontal_accuracy']);
  }
}

@reflector
class Venue extends TdObject {
  @override
  String get tdType => 'venue';

  Location location;
  String title;
  String address;
  String provider;
  String id;
  String type;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'title': title,
    'address': address,
    'provider': provider,
    'id': id,
    'type': type,
  };

  Venue({
    this.location,
    this.title,
    this.address,
    this.provider,
    this.id,
    this.type,
  });

  Venue.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    title = tryConvertToTdObject(json['title']);
    address = tryConvertToTdObject(json['address']);
    provider = tryConvertToTdObject(json['provider']);
    id = tryConvertToTdObject(json['id']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class Game extends TdObject {
  @override
  String get tdType => 'game';

  int id;
  String shortName;
  String title;
  FormattedText text;
  String description;
  Photo photo;
  Animation animation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'short_name': shortName,
    'title': title,
    'text': text,
    'description': description,
    'photo': photo,
    'animation': animation,
  };

  Game({
    this.id,
    this.shortName,
    this.title,
    this.text,
    this.description,
    this.photo,
    this.animation,
  });

  Game.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    shortName = tryConvertToTdObject(json['short_name']);
    title = tryConvertToTdObject(json['title']);
    text = tryConvertToTdObject(json['text']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class Poll extends TdObject {
  @override
  String get tdType => 'poll';

  int id;
  String question;
  List<PollOption> options;
  int totalVoterCount;
  List<int> recentVoterUserIds;
  bool isAnonymous;
  PollType type;
  int openPeriod;
  int closeDate;
  bool isClosed;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'question': question,
    'options': options,
    'total_voter_count': totalVoterCount,
    'recent_voter_user_ids': recentVoterUserIds,
    'is_anonymous': isAnonymous,
    'type': type,
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
  };

  Poll({
    this.id,
    this.question,
    this.options,
    this.totalVoterCount,
    this.recentVoterUserIds,
    this.isAnonymous,
    this.type,
    this.openPeriod,
    this.closeDate,
    this.isClosed,
  });

  Poll.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    question = tryConvertToTdObject(json['question']);
    options = tryConvertToTdObject(json['options']);
    totalVoterCount = tryConvertToTdObject(json['total_voter_count']);
    recentVoterUserIds = tryConvertToTdObject(json['recent_voter_user_ids']);
    isAnonymous = tryConvertToTdObject(json['is_anonymous']);
    type = tryConvertToTdObject(json['type']);
    openPeriod = tryConvertToTdObject(json['open_period']);
    closeDate = tryConvertToTdObject(json['close_date']);
    isClosed = tryConvertToTdObject(json['is_closed']);
  }
}

@reflector
class ProfilePhoto extends TdObject {
  @override
  String get tdType => 'profilePhoto';

  int id;
  File small;
  File big;
  Minithumbnail minithumbnail;
  bool hasAnimation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'small': small,
    'big': big,
    'minithumbnail': minithumbnail,
    'has_animation': hasAnimation,
  };

  ProfilePhoto({
    this.id,
    this.small,
    this.big,
    this.minithumbnail,
    this.hasAnimation,
  });

  ProfilePhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    small = tryConvertToTdObject(json['small']);
    big = tryConvertToTdObject(json['big']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    hasAnimation = tryConvertToTdObject(json['has_animation']);
  }
}

@reflector
class ChatPhotoInfo extends TdObject {
  @override
  String get tdType => 'chatPhotoInfo';

  File small;
  File big;
  Minithumbnail minithumbnail;
  bool hasAnimation;

  @override
  Map<String, dynamic> get params => {
    'small': small,
    'big': big,
    'minithumbnail': minithumbnail,
    'has_animation': hasAnimation,
  };

  ChatPhotoInfo({
    this.small,
    this.big,
    this.minithumbnail,
    this.hasAnimation,
  });

  ChatPhotoInfo.fromJson(Map<String, dynamic> json) {
    small = tryConvertToTdObject(json['small']);
    big = tryConvertToTdObject(json['big']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    hasAnimation = tryConvertToTdObject(json['has_animation']);
  }
}

abstract class UserType extends TdObject {}

@reflector
class UserTypeRegular extends UserType {
  @override
  String get tdType => 'userTypeRegular';

  @override
  Map<String, dynamic> get params => {};

  UserTypeRegular();

  UserTypeRegular.fromJson(Map<String, dynamic> json);
}

@reflector
class UserTypeDeleted extends UserType {
  @override
  String get tdType => 'userTypeDeleted';

  @override
  Map<String, dynamic> get params => {};

  UserTypeDeleted();

  UserTypeDeleted.fromJson(Map<String, dynamic> json);
}

@reflector
class UserTypeBot extends UserType {
  @override
  String get tdType => 'userTypeBot';

  bool canJoinGroups;
  bool canReadAllGroupMessages;
  bool isInline;
  String inlineQueryPlaceholder;
  bool needLocation;

  @override
  Map<String, dynamic> get params => {
    'can_join_groups': canJoinGroups,
    'can_read_all_group_messages': canReadAllGroupMessages,
    'is_inline': isInline,
    'inline_query_placeholder': inlineQueryPlaceholder,
    'need_location': needLocation,
  };

  UserTypeBot({
    this.canJoinGroups,
    this.canReadAllGroupMessages,
    this.isInline,
    this.inlineQueryPlaceholder,
    this.needLocation,
  });

  UserTypeBot.fromJson(Map<String, dynamic> json) {
    canJoinGroups = tryConvertToTdObject(json['can_join_groups']);
    canReadAllGroupMessages = tryConvertToTdObject(json['can_read_all_group_messages']);
    isInline = tryConvertToTdObject(json['is_inline']);
    inlineQueryPlaceholder = tryConvertToTdObject(json['inline_query_placeholder']);
    needLocation = tryConvertToTdObject(json['need_location']);
  }
}

@reflector
class UserTypeUnknown extends UserType {
  @override
  String get tdType => 'userTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  UserTypeUnknown();

  UserTypeUnknown.fromJson(Map<String, dynamic> json);
}

@reflector
class BotCommand extends TdObject {
  @override
  String get tdType => 'botCommand';

  String command;
  String description;

  @override
  Map<String, dynamic> get params => {
    'command': command,
    'description': description,
  };

  BotCommand({
    this.command,
    this.description,
  });

  BotCommand.fromJson(Map<String, dynamic> json) {
    command = tryConvertToTdObject(json['command']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class BotCommands extends TdObject {
  @override
  String get tdType => 'botCommands';

  int botUserId;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'commands': commands,
  };

  BotCommands({
    this.botUserId,
    this.commands,
  });

  BotCommands.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    commands = tryConvertToTdObject(json['commands']);
  }
}

@reflector
class ChatLocation extends TdObject {
  @override
  String get tdType => 'chatLocation';

  Location location;
  String address;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'address': address,
  };

  ChatLocation({
    this.location,
    this.address,
  });

  ChatLocation.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    address = tryConvertToTdObject(json['address']);
  }
}

@reflector
class AnimatedChatPhoto extends TdObject {
  @override
  String get tdType => 'animatedChatPhoto';

  int length;
  File file;
  double mainFrameTimestamp;

  @override
  Map<String, dynamic> get params => {
    'length': length,
    'file': file,
    'main_frame_timestamp': mainFrameTimestamp,
  };

  AnimatedChatPhoto({
    this.length,
    this.file,
    this.mainFrameTimestamp,
  });

  AnimatedChatPhoto.fromJson(Map<String, dynamic> json) {
    length = tryConvertToTdObject(json['length']);
    file = tryConvertToTdObject(json['file']);
    mainFrameTimestamp = tryConvertToTdObject(json['main_frame_timestamp']);
  }
}

@reflector
class ChatPhoto extends TdObject {
  @override
  String get tdType => 'chatPhoto';

  int id;
  int addedDate;
  Minithumbnail minithumbnail;
  List<PhotoSize> sizes;
  AnimatedChatPhoto animation;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'added_date': addedDate,
    'minithumbnail': minithumbnail,
    'sizes': sizes,
    'animation': animation,
  };

  ChatPhoto({
    this.id,
    this.addedDate,
    this.minithumbnail,
    this.sizes,
    this.animation,
  });

  ChatPhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    addedDate = tryConvertToTdObject(json['added_date']);
    minithumbnail = tryConvertToTdObject(json['minithumbnail']);
    sizes = tryConvertToTdObject(json['sizes']);
    animation = tryConvertToTdObject(json['animation']);
  }
}

@reflector
class ChatPhotos extends TdObject {
  @override
  String get tdType => 'chatPhotos';

  int totalCount;
  List<ChatPhoto> photos;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'photos': photos,
  };

  ChatPhotos({
    this.totalCount,
    this.photos,
  });

  ChatPhotos.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    photos = tryConvertToTdObject(json['photos']);
  }
}

abstract class InputChatPhoto extends TdObject {}

@reflector
class InputChatPhotoPrevious extends InputChatPhoto {
  @override
  String get tdType => 'inputChatPhotoPrevious';

  int chatPhotoId;

  @override
  Map<String, dynamic> get params => {
    'chat_photo_id': chatPhotoId,
  };

  InputChatPhotoPrevious({
    this.chatPhotoId,
  });

  InputChatPhotoPrevious.fromJson(Map<String, dynamic> json) {
    chatPhotoId = tryConvertToTdObject(json['chat_photo_id']);
  }
}

@reflector
class InputChatPhotoStatic extends InputChatPhoto {
  @override
  String get tdType => 'inputChatPhotoStatic';

  InputFile photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  InputChatPhotoStatic({
    this.photo,
  });

  InputChatPhotoStatic.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class InputChatPhotoAnimation extends InputChatPhoto {
  @override
  String get tdType => 'inputChatPhotoAnimation';

  InputFile animation;
  double mainFrameTimestamp;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'main_frame_timestamp': mainFrameTimestamp,
  };

  InputChatPhotoAnimation({
    this.animation,
    this.mainFrameTimestamp,
  });

  InputChatPhotoAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    mainFrameTimestamp = tryConvertToTdObject(json['main_frame_timestamp']);
  }
}

@reflector
class User extends TdObject {
  @override
  String get tdType => 'user';

  int id;
  String firstName;
  String lastName;
  String username;
  String phoneNumber;
  UserStatus status;
  ProfilePhoto profilePhoto;
  bool isContact;
  bool isMutualContact;
  bool isVerified;
  bool isSupport;
  String restrictionReason;
  bool isScam;
  bool isFake;
  bool haveAccess;
  UserType type;
  String languageCode;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'first_name': firstName,
    'last_name': lastName,
    'username': username,
    'phone_number': phoneNumber,
    'status': status,
    'profile_photo': profilePhoto,
    'is_contact': isContact,
    'is_mutual_contact': isMutualContact,
    'is_verified': isVerified,
    'is_support': isSupport,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'is_fake': isFake,
    'have_access': haveAccess,
    'type': type,
    'language_code': languageCode,
  };

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.phoneNumber,
    this.status,
    this.profilePhoto,
    this.isContact,
    this.isMutualContact,
    this.isVerified,
    this.isSupport,
    this.restrictionReason,
    this.isScam,
    this.isFake,
    this.haveAccess,
    this.type,
    this.languageCode,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    firstName = tryConvertToTdObject(json['first_name']);
    lastName = tryConvertToTdObject(json['last_name']);
    username = tryConvertToTdObject(json['username']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    status = tryConvertToTdObject(json['status']);
    profilePhoto = tryConvertToTdObject(json['profile_photo']);
    isContact = tryConvertToTdObject(json['is_contact']);
    isMutualContact = tryConvertToTdObject(json['is_mutual_contact']);
    isVerified = tryConvertToTdObject(json['is_verified']);
    isSupport = tryConvertToTdObject(json['is_support']);
    restrictionReason = tryConvertToTdObject(json['restriction_reason']);
    isScam = tryConvertToTdObject(json['is_scam']);
    isFake = tryConvertToTdObject(json['is_fake']);
    haveAccess = tryConvertToTdObject(json['have_access']);
    type = tryConvertToTdObject(json['type']);
    languageCode = tryConvertToTdObject(json['language_code']);
  }
}

@reflector
class UserFullInfo extends TdObject {
  @override
  String get tdType => 'userFullInfo';

  ChatPhoto photo;
  bool isBlocked;
  bool canBeCalled;
  bool supportsVideoCalls;
  bool hasPrivateCalls;
  bool needPhoneNumberPrivacyException;
  String bio;
  String shareText;
  String description;
  int groupInCommonCount;
  List<BotCommand> commands;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'is_blocked': isBlocked,
    'can_be_called': canBeCalled,
    'supports_video_calls': supportsVideoCalls,
    'has_private_calls': hasPrivateCalls,
    'need_phone_number_privacy_exception': needPhoneNumberPrivacyException,
    'bio': bio,
    'share_text': shareText,
    'description': description,
    'group_in_common_count': groupInCommonCount,
    'commands': commands,
  };

  UserFullInfo({
    this.photo,
    this.isBlocked,
    this.canBeCalled,
    this.supportsVideoCalls,
    this.hasPrivateCalls,
    this.needPhoneNumberPrivacyException,
    this.bio,
    this.shareText,
    this.description,
    this.groupInCommonCount,
    this.commands,
  });

  UserFullInfo.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    isBlocked = tryConvertToTdObject(json['is_blocked']);
    canBeCalled = tryConvertToTdObject(json['can_be_called']);
    supportsVideoCalls = tryConvertToTdObject(json['supports_video_calls']);
    hasPrivateCalls = tryConvertToTdObject(json['has_private_calls']);
    needPhoneNumberPrivacyException = tryConvertToTdObject(json['need_phone_number_privacy_exception']);
    bio = tryConvertToTdObject(json['bio']);
    shareText = tryConvertToTdObject(json['share_text']);
    description = tryConvertToTdObject(json['description']);
    groupInCommonCount = tryConvertToTdObject(json['group_in_common_count']);
    commands = tryConvertToTdObject(json['commands']);
  }
}

@reflector
class Users extends TdObject {
  @override
  String get tdType => 'users';

  int totalCount;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'user_ids': userIds,
  };

  Users({
    this.totalCount,
    this.userIds,
  });

  Users.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class ChatAdministrator extends TdObject {
  @override
  String get tdType => 'chatAdministrator';

  int userId;
  String customTitle;
  bool isOwner;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'custom_title': customTitle,
    'is_owner': isOwner,
  };

  ChatAdministrator({
    this.userId,
    this.customTitle,
    this.isOwner,
  });

  ChatAdministrator.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    customTitle = tryConvertToTdObject(json['custom_title']);
    isOwner = tryConvertToTdObject(json['is_owner']);
  }
}

@reflector
class ChatAdministrators extends TdObject {
  @override
  String get tdType => 'chatAdministrators';

  List<ChatAdministrator> administrators;

  @override
  Map<String, dynamic> get params => {
    'administrators': administrators,
  };

  ChatAdministrators({
    this.administrators,
  });

  ChatAdministrators.fromJson(Map<String, dynamic> json) {
    administrators = tryConvertToTdObject(json['administrators']);
  }
}

@reflector
class ChatPermissions extends TdObject {
  @override
  String get tdType => 'chatPermissions';

  bool canSendMessages;
  bool canSendMediaMessages;
  bool canSendPolls;
  bool canSendOtherMessages;
  bool canAddWebPagePreviews;
  bool canChangeInfo;
  bool canInviteUsers;
  bool canPinMessages;

  @override
  Map<String, dynamic> get params => {
    'can_send_messages': canSendMessages,
    'can_send_media_messages': canSendMediaMessages,
    'can_send_polls': canSendPolls,
    'can_send_other_messages': canSendOtherMessages,
    'can_add_web_page_previews': canAddWebPagePreviews,
    'can_change_info': canChangeInfo,
    'can_invite_users': canInviteUsers,
    'can_pin_messages': canPinMessages,
  };

  ChatPermissions({
    this.canSendMessages,
    this.canSendMediaMessages,
    this.canSendPolls,
    this.canSendOtherMessages,
    this.canAddWebPagePreviews,
    this.canChangeInfo,
    this.canInviteUsers,
    this.canPinMessages,
  });

  ChatPermissions.fromJson(Map<String, dynamic> json) {
    canSendMessages = tryConvertToTdObject(json['can_send_messages']);
    canSendMediaMessages = tryConvertToTdObject(json['can_send_media_messages']);
    canSendPolls = tryConvertToTdObject(json['can_send_polls']);
    canSendOtherMessages = tryConvertToTdObject(json['can_send_other_messages']);
    canAddWebPagePreviews = tryConvertToTdObject(json['can_add_web_page_previews']);
    canChangeInfo = tryConvertToTdObject(json['can_change_info']);
    canInviteUsers = tryConvertToTdObject(json['can_invite_users']);
    canPinMessages = tryConvertToTdObject(json['can_pin_messages']);
  }
}

abstract class ChatMemberStatus extends TdObject {}

@reflector
class ChatMemberStatusCreator extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusCreator';

  String customTitle;
  bool isAnonymous;
  bool isMember;

  @override
  Map<String, dynamic> get params => {
    'custom_title': customTitle,
    'is_anonymous': isAnonymous,
    'is_member': isMember,
  };

  ChatMemberStatusCreator({
    this.customTitle,
    this.isAnonymous,
    this.isMember,
  });

  ChatMemberStatusCreator.fromJson(Map<String, dynamic> json) {
    customTitle = tryConvertToTdObject(json['custom_title']);
    isAnonymous = tryConvertToTdObject(json['is_anonymous']);
    isMember = tryConvertToTdObject(json['is_member']);
  }
}

@reflector
class ChatMemberStatusAdministrator extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusAdministrator';

  String customTitle;
  bool canBeEdited;
  bool canManageChat;
  bool canChangeInfo;
  bool canPostMessages;
  bool canEditMessages;
  bool canDeleteMessages;
  bool canInviteUsers;
  bool canRestrictMembers;
  bool canPinMessages;
  bool canPromoteMembers;
  bool canManageVoiceChats;
  bool isAnonymous;

  @override
  Map<String, dynamic> get params => {
    'custom_title': customTitle,
    'can_be_edited': canBeEdited,
    'can_manage_chat': canManageChat,
    'can_change_info': canChangeInfo,
    'can_post_messages': canPostMessages,
    'can_edit_messages': canEditMessages,
    'can_delete_messages': canDeleteMessages,
    'can_invite_users': canInviteUsers,
    'can_restrict_members': canRestrictMembers,
    'can_pin_messages': canPinMessages,
    'can_promote_members': canPromoteMembers,
    'can_manage_voice_chats': canManageVoiceChats,
    'is_anonymous': isAnonymous,
  };

  ChatMemberStatusAdministrator({
    this.customTitle,
    this.canBeEdited,
    this.canManageChat,
    this.canChangeInfo,
    this.canPostMessages,
    this.canEditMessages,
    this.canDeleteMessages,
    this.canInviteUsers,
    this.canRestrictMembers,
    this.canPinMessages,
    this.canPromoteMembers,
    this.canManageVoiceChats,
    this.isAnonymous,
  });

  ChatMemberStatusAdministrator.fromJson(Map<String, dynamic> json) {
    customTitle = tryConvertToTdObject(json['custom_title']);
    canBeEdited = tryConvertToTdObject(json['can_be_edited']);
    canManageChat = tryConvertToTdObject(json['can_manage_chat']);
    canChangeInfo = tryConvertToTdObject(json['can_change_info']);
    canPostMessages = tryConvertToTdObject(json['can_post_messages']);
    canEditMessages = tryConvertToTdObject(json['can_edit_messages']);
    canDeleteMessages = tryConvertToTdObject(json['can_delete_messages']);
    canInviteUsers = tryConvertToTdObject(json['can_invite_users']);
    canRestrictMembers = tryConvertToTdObject(json['can_restrict_members']);
    canPinMessages = tryConvertToTdObject(json['can_pin_messages']);
    canPromoteMembers = tryConvertToTdObject(json['can_promote_members']);
    canManageVoiceChats = tryConvertToTdObject(json['can_manage_voice_chats']);
    isAnonymous = tryConvertToTdObject(json['is_anonymous']);
  }
}

@reflector
class ChatMemberStatusMember extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusMember';

  @override
  Map<String, dynamic> get params => {};

  ChatMemberStatusMember();

  ChatMemberStatusMember.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMemberStatusRestricted extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusRestricted';

  bool isMember;
  int restrictedUntilDate;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'is_member': isMember,
    'restricted_until_date': restrictedUntilDate,
    'permissions': permissions,
  };

  ChatMemberStatusRestricted({
    this.isMember,
    this.restrictedUntilDate,
    this.permissions,
  });

  ChatMemberStatusRestricted.fromJson(Map<String, dynamic> json) {
    isMember = tryConvertToTdObject(json['is_member']);
    restrictedUntilDate = tryConvertToTdObject(json['restricted_until_date']);
    permissions = tryConvertToTdObject(json['permissions']);
  }
}

@reflector
class ChatMemberStatusLeft extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusLeft';

  @override
  Map<String, dynamic> get params => {};

  ChatMemberStatusLeft();

  ChatMemberStatusLeft.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMemberStatusBanned extends ChatMemberStatus {
  @override
  String get tdType => 'chatMemberStatusBanned';

  int bannedUntilDate;

  @override
  Map<String, dynamic> get params => {
    'banned_until_date': bannedUntilDate,
  };

  ChatMemberStatusBanned({
    this.bannedUntilDate,
  });

  ChatMemberStatusBanned.fromJson(Map<String, dynamic> json) {
    bannedUntilDate = tryConvertToTdObject(json['banned_until_date']);
  }
}

@reflector
class ChatMember extends TdObject {
  @override
  String get tdType => 'chatMember';

  MessageSender memberId;
  int inviterUserId;
  int joinedChatDate;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'member_id': memberId,
    'inviter_user_id': inviterUserId,
    'joined_chat_date': joinedChatDate,
    'status': status,
  };

  ChatMember({
    this.memberId,
    this.inviterUserId,
    this.joinedChatDate,
    this.status,
  });

  ChatMember.fromJson(Map<String, dynamic> json) {
    memberId = tryConvertToTdObject(json['member_id']);
    inviterUserId = tryConvertToTdObject(json['inviter_user_id']);
    joinedChatDate = tryConvertToTdObject(json['joined_chat_date']);
    status = tryConvertToTdObject(json['status']);
  }
}

@reflector
class ChatMembers extends TdObject {
  @override
  String get tdType => 'chatMembers';

  int totalCount;
  List<ChatMember> members;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'members': members,
  };

  ChatMembers({
    this.totalCount,
    this.members,
  });

  ChatMembers.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    members = tryConvertToTdObject(json['members']);
  }
}

abstract class ChatMembersFilter extends TdObject {}

@reflector
class ChatMembersFilterContacts extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterContacts';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterContacts();

  ChatMembersFilterContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterAdministrators extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterAdministrators';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterAdministrators();

  ChatMembersFilterAdministrators.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterMembers extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterMembers';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterMembers();

  ChatMembersFilterMembers.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterMention extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterMention';

  int messageThreadId;

  @override
  Map<String, dynamic> get params => {
    'message_thread_id': messageThreadId,
  };

  ChatMembersFilterMention({
    this.messageThreadId,
  });

  ChatMembersFilterMention.fromJson(Map<String, dynamic> json) {
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
  }
}

@reflector
class ChatMembersFilterRestricted extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterRestricted';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterRestricted();

  ChatMembersFilterRestricted.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterBanned extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterBanned';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterBanned();

  ChatMembersFilterBanned.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatMembersFilterBots extends ChatMembersFilter {
  @override
  String get tdType => 'chatMembersFilterBots';

  @override
  Map<String, dynamic> get params => {};

  ChatMembersFilterBots();

  ChatMembersFilterBots.fromJson(Map<String, dynamic> json);
}

abstract class SupergroupMembersFilter extends TdObject {}

@reflector
class SupergroupMembersFilterRecent extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterRecent';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterRecent();

  SupergroupMembersFilterRecent.fromJson(Map<String, dynamic> json);
}

@reflector
class SupergroupMembersFilterContacts extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterContacts';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterContacts({
    this.query,
  });

  SupergroupMembersFilterContacts.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterAdministrators extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterAdministrators';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterAdministrators();

  SupergroupMembersFilterAdministrators.fromJson(Map<String, dynamic> json);
}

@reflector
class SupergroupMembersFilterSearch extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterSearch';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterSearch({
    this.query,
  });

  SupergroupMembersFilterSearch.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterRestricted extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterRestricted';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterRestricted({
    this.query,
  });

  SupergroupMembersFilterRestricted.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterBanned extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterBanned';

  String query;

  @override
  Map<String, dynamic> get params => {
    'query': query,
  };

  SupergroupMembersFilterBanned({
    this.query,
  });

  SupergroupMembersFilterBanned.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
  }
}

@reflector
class SupergroupMembersFilterMention extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterMention';

  String query;
  int messageThreadId;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'message_thread_id': messageThreadId,
  };

  SupergroupMembersFilterMention({
    this.query,
    this.messageThreadId,
  });

  SupergroupMembersFilterMention.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
  }
}

@reflector
class SupergroupMembersFilterBots extends SupergroupMembersFilter {
  @override
  String get tdType => 'supergroupMembersFilterBots';

  @override
  Map<String, dynamic> get params => {};

  SupergroupMembersFilterBots();

  SupergroupMembersFilterBots.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatInviteLink extends TdObject {
  @override
  String get tdType => 'chatInviteLink';

  String inviteLink;
  int creatorUserId;
  int date;
  int editDate;
  int expireDate;
  int memberLimit;
  int memberCount;
  bool isPrimary;
  bool isRevoked;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
    'creator_user_id': creatorUserId,
    'date': date,
    'edit_date': editDate,
    'expire_date': expireDate,
    'member_limit': memberLimit,
    'member_count': memberCount,
    'is_primary': isPrimary,
    'is_revoked': isRevoked,
  };

  ChatInviteLink({
    this.inviteLink,
    this.creatorUserId,
    this.date,
    this.editDate,
    this.expireDate,
    this.memberLimit,
    this.memberCount,
    this.isPrimary,
    this.isRevoked,
  });

  ChatInviteLink.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
    creatorUserId = tryConvertToTdObject(json['creator_user_id']);
    date = tryConvertToTdObject(json['date']);
    editDate = tryConvertToTdObject(json['edit_date']);
    expireDate = tryConvertToTdObject(json['expire_date']);
    memberLimit = tryConvertToTdObject(json['member_limit']);
    memberCount = tryConvertToTdObject(json['member_count']);
    isPrimary = tryConvertToTdObject(json['is_primary']);
    isRevoked = tryConvertToTdObject(json['is_revoked']);
  }
}

@reflector
class ChatInviteLinks extends TdObject {
  @override
  String get tdType => 'chatInviteLinks';

  int totalCount;
  List<ChatInviteLink> inviteLinks;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'invite_links': inviteLinks,
  };

  ChatInviteLinks({
    this.totalCount,
    this.inviteLinks,
  });

  ChatInviteLinks.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    inviteLinks = tryConvertToTdObject(json['invite_links']);
  }
}

@reflector
class ChatInviteLinkCount extends TdObject {
  @override
  String get tdType => 'chatInviteLinkCount';

  int userId;
  int inviteLinkCount;
  int revokedInviteLinkCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'invite_link_count': inviteLinkCount,
    'revoked_invite_link_count': revokedInviteLinkCount,
  };

  ChatInviteLinkCount({
    this.userId,
    this.inviteLinkCount,
    this.revokedInviteLinkCount,
  });

  ChatInviteLinkCount.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    inviteLinkCount = tryConvertToTdObject(json['invite_link_count']);
    revokedInviteLinkCount = tryConvertToTdObject(json['revoked_invite_link_count']);
  }
}

@reflector
class ChatInviteLinkCounts extends TdObject {
  @override
  String get tdType => 'chatInviteLinkCounts';

  List<ChatInviteLinkCount> inviteLinkCounts;

  @override
  Map<String, dynamic> get params => {
    'invite_link_counts': inviteLinkCounts,
  };

  ChatInviteLinkCounts({
    this.inviteLinkCounts,
  });

  ChatInviteLinkCounts.fromJson(Map<String, dynamic> json) {
    inviteLinkCounts = tryConvertToTdObject(json['invite_link_counts']);
  }
}

@reflector
class ChatInviteLinkMember extends TdObject {
  @override
  String get tdType => 'chatInviteLinkMember';

  int userId;
  int joinedChatDate;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'joined_chat_date': joinedChatDate,
  };

  ChatInviteLinkMember({
    this.userId,
    this.joinedChatDate,
  });

  ChatInviteLinkMember.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    joinedChatDate = tryConvertToTdObject(json['joined_chat_date']);
  }
}

@reflector
class ChatInviteLinkMembers extends TdObject {
  @override
  String get tdType => 'chatInviteLinkMembers';

  int totalCount;
  List<ChatInviteLinkMember> members;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'members': members,
  };

  ChatInviteLinkMembers({
    this.totalCount,
    this.members,
  });

  ChatInviteLinkMembers.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    members = tryConvertToTdObject(json['members']);
  }
}

@reflector
class ChatInviteLinkInfo extends TdObject {
  @override
  String get tdType => 'chatInviteLinkInfo';

  int chatId;
  int accessibleFor;
  ChatType type;
  String title;
  ChatPhotoInfo photo;
  int memberCount;
  List<int> memberUserIds;
  bool isPublic;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'accessible_for': accessibleFor,
    'type': type,
    'title': title,
    'photo': photo,
    'member_count': memberCount,
    'member_user_ids': memberUserIds,
    'is_public': isPublic,
  };

  ChatInviteLinkInfo({
    this.chatId,
    this.accessibleFor,
    this.type,
    this.title,
    this.photo,
    this.memberCount,
    this.memberUserIds,
    this.isPublic,
  });

  ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    accessibleFor = tryConvertToTdObject(json['accessible_for']);
    type = tryConvertToTdObject(json['type']);
    title = tryConvertToTdObject(json['title']);
    photo = tryConvertToTdObject(json['photo']);
    memberCount = tryConvertToTdObject(json['member_count']);
    memberUserIds = tryConvertToTdObject(json['member_user_ids']);
    isPublic = tryConvertToTdObject(json['is_public']);
  }
}

@reflector
class BasicGroup extends TdObject {
  @override
  String get tdType => 'basicGroup';

  int id;
  int memberCount;
  ChatMemberStatus status;
  bool isActive;
  int upgradedToSupergroupId;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'member_count': memberCount,
    'status': status,
    'is_active': isActive,
    'upgraded_to_supergroup_id': upgradedToSupergroupId,
  };

  BasicGroup({
    this.id,
    this.memberCount,
    this.status,
    this.isActive,
    this.upgradedToSupergroupId,
  });

  BasicGroup.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    memberCount = tryConvertToTdObject(json['member_count']);
    status = tryConvertToTdObject(json['status']);
    isActive = tryConvertToTdObject(json['is_active']);
    upgradedToSupergroupId = tryConvertToTdObject(json['upgraded_to_supergroup_id']);
  }
}

@reflector
class BasicGroupFullInfo extends TdObject {
  @override
  String get tdType => 'basicGroupFullInfo';

  ChatPhoto photo;
  String description;
  int creatorUserId;
  List<ChatMember> members;
  ChatInviteLink inviteLink;
  List<BotCommands> botCommands;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'description': description,
    'creator_user_id': creatorUserId,
    'members': members,
    'invite_link': inviteLink,
    'bot_commands': botCommands,
  };

  BasicGroupFullInfo({
    this.photo,
    this.description,
    this.creatorUserId,
    this.members,
    this.inviteLink,
    this.botCommands,
  });

  BasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    description = tryConvertToTdObject(json['description']);
    creatorUserId = tryConvertToTdObject(json['creator_user_id']);
    members = tryConvertToTdObject(json['members']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
    botCommands = tryConvertToTdObject(json['bot_commands']);
  }
}

@reflector
class Supergroup extends TdObject {
  @override
  String get tdType => 'supergroup';

  int id;
  String username;
  int date;
  ChatMemberStatus status;
  int memberCount;
  bool hasLinkedChat;
  bool hasLocation;
  bool signMessages;
  bool isSlowModeEnabled;
  bool isChannel;
  bool isBroadcastGroup;
  bool isVerified;
  String restrictionReason;
  bool isScam;
  bool isFake;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'username': username,
    'date': date,
    'status': status,
    'member_count': memberCount,
    'has_linked_chat': hasLinkedChat,
    'has_location': hasLocation,
    'sign_messages': signMessages,
    'is_slow_mode_enabled': isSlowModeEnabled,
    'is_channel': isChannel,
    'is_broadcast_group': isBroadcastGroup,
    'is_verified': isVerified,
    'restriction_reason': restrictionReason,
    'is_scam': isScam,
    'is_fake': isFake,
  };

  Supergroup({
    this.id,
    this.username,
    this.date,
    this.status,
    this.memberCount,
    this.hasLinkedChat,
    this.hasLocation,
    this.signMessages,
    this.isSlowModeEnabled,
    this.isChannel,
    this.isBroadcastGroup,
    this.isVerified,
    this.restrictionReason,
    this.isScam,
    this.isFake,
  });

  Supergroup.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    username = tryConvertToTdObject(json['username']);
    date = tryConvertToTdObject(json['date']);
    status = tryConvertToTdObject(json['status']);
    memberCount = tryConvertToTdObject(json['member_count']);
    hasLinkedChat = tryConvertToTdObject(json['has_linked_chat']);
    hasLocation = tryConvertToTdObject(json['has_location']);
    signMessages = tryConvertToTdObject(json['sign_messages']);
    isSlowModeEnabled = tryConvertToTdObject(json['is_slow_mode_enabled']);
    isChannel = tryConvertToTdObject(json['is_channel']);
    isBroadcastGroup = tryConvertToTdObject(json['is_broadcast_group']);
    isVerified = tryConvertToTdObject(json['is_verified']);
    restrictionReason = tryConvertToTdObject(json['restriction_reason']);
    isScam = tryConvertToTdObject(json['is_scam']);
    isFake = tryConvertToTdObject(json['is_fake']);
  }
}

@reflector
class SupergroupFullInfo extends TdObject {
  @override
  String get tdType => 'supergroupFullInfo';

  ChatPhoto photo;
  String description;
  int memberCount;
  int administratorCount;
  int restrictedCount;
  int bannedCount;
  int linkedChatId;
  int slowModeDelay;
  double slowModeDelayExpiresIn;
  bool canGetMembers;
  bool canSetUsername;
  bool canSetStickerSet;
  bool canSetLocation;
  bool canGetStatistics;
  bool isAllHistoryAvailable;
  int stickerSetId;
  ChatLocation location;
  ChatInviteLink inviteLink;
  List<BotCommands> botCommands;
  int upgradedFromBasicGroupId;
  int upgradedFromMaxMessageId;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'description': description,
    'member_count': memberCount,
    'administrator_count': administratorCount,
    'restricted_count': restrictedCount,
    'banned_count': bannedCount,
    'linked_chat_id': linkedChatId,
    'slow_mode_delay': slowModeDelay,
    'slow_mode_delay_expires_in': slowModeDelayExpiresIn,
    'can_get_members': canGetMembers,
    'can_set_username': canSetUsername,
    'can_set_sticker_set': canSetStickerSet,
    'can_set_location': canSetLocation,
    'can_get_statistics': canGetStatistics,
    'is_all_history_available': isAllHistoryAvailable,
    'sticker_set_id': stickerSetId,
    'location': location,
    'invite_link': inviteLink,
    'bot_commands': botCommands,
    'upgraded_from_basic_group_id': upgradedFromBasicGroupId,
    'upgraded_from_max_message_id': upgradedFromMaxMessageId,
  };

  SupergroupFullInfo({
    this.photo,
    this.description,
    this.memberCount,
    this.administratorCount,
    this.restrictedCount,
    this.bannedCount,
    this.linkedChatId,
    this.slowModeDelay,
    this.slowModeDelayExpiresIn,
    this.canGetMembers,
    this.canSetUsername,
    this.canSetStickerSet,
    this.canSetLocation,
    this.canGetStatistics,
    this.isAllHistoryAvailable,
    this.stickerSetId,
    this.location,
    this.inviteLink,
    this.botCommands,
    this.upgradedFromBasicGroupId,
    this.upgradedFromMaxMessageId,
  });

  SupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    description = tryConvertToTdObject(json['description']);
    memberCount = tryConvertToTdObject(json['member_count']);
    administratorCount = tryConvertToTdObject(json['administrator_count']);
    restrictedCount = tryConvertToTdObject(json['restricted_count']);
    bannedCount = tryConvertToTdObject(json['banned_count']);
    linkedChatId = tryConvertToTdObject(json['linked_chat_id']);
    slowModeDelay = tryConvertToTdObject(json['slow_mode_delay']);
    slowModeDelayExpiresIn = tryConvertToTdObject(json['slow_mode_delay_expires_in']);
    canGetMembers = tryConvertToTdObject(json['can_get_members']);
    canSetUsername = tryConvertToTdObject(json['can_set_username']);
    canSetStickerSet = tryConvertToTdObject(json['can_set_sticker_set']);
    canSetLocation = tryConvertToTdObject(json['can_set_location']);
    canGetStatistics = tryConvertToTdObject(json['can_get_statistics']);
    isAllHistoryAvailable = tryConvertToTdObject(json['is_all_history_available']);
    stickerSetId = tryConvertToTdObject(json['sticker_set_id']);
    location = tryConvertToTdObject(json['location']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
    botCommands = tryConvertToTdObject(json['bot_commands']);
    upgradedFromBasicGroupId = tryConvertToTdObject(json['upgraded_from_basic_group_id']);
    upgradedFromMaxMessageId = tryConvertToTdObject(json['upgraded_from_max_message_id']);
  }
}

abstract class SecretChatState extends TdObject {}

@reflector
class SecretChatStatePending extends SecretChatState {
  @override
  String get tdType => 'secretChatStatePending';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStatePending();

  SecretChatStatePending.fromJson(Map<String, dynamic> json);
}

@reflector
class SecretChatStateReady extends SecretChatState {
  @override
  String get tdType => 'secretChatStateReady';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStateReady();

  SecretChatStateReady.fromJson(Map<String, dynamic> json);
}

@reflector
class SecretChatStateClosed extends SecretChatState {
  @override
  String get tdType => 'secretChatStateClosed';

  @override
  Map<String, dynamic> get params => {};

  SecretChatStateClosed();

  SecretChatStateClosed.fromJson(Map<String, dynamic> json);
}

@reflector
class SecretChat extends TdObject {
  @override
  String get tdType => 'secretChat';

  int id;
  int userId;
  SecretChatState state;
  bool isOutbound;
  String keyHash;
  int layer;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'user_id': userId,
    'state': state,
    'is_outbound': isOutbound,
    'key_hash': keyHash,
    'layer': layer,
  };

  SecretChat({
    this.id,
    this.userId,
    this.state,
    this.isOutbound,
    this.keyHash,
    this.layer,
  });

  SecretChat.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    userId = tryConvertToTdObject(json['user_id']);
    state = tryConvertToTdObject(json['state']);
    isOutbound = tryConvertToTdObject(json['is_outbound']);
    keyHash = tryConvertToTdObject(json['key_hash']);
    layer = tryConvertToTdObject(json['layer']);
  }
}

abstract class MessageSender extends TdObject {}

@reflector
class MessageSenderUser extends MessageSender {
  @override
  String get tdType => 'messageSenderUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  MessageSenderUser({
    this.userId,
  });

  MessageSenderUser.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class MessageSenderChat extends MessageSender {
  @override
  String get tdType => 'messageSenderChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  MessageSenderChat({
    this.chatId,
  });

  MessageSenderChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class MessageSenders extends TdObject {
  @override
  String get tdType => 'messageSenders';

  int totalCount;
  List<MessageSender> senders;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'senders': senders,
  };

  MessageSenders({
    this.totalCount,
    this.senders,
  });

  MessageSenders.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    senders = tryConvertToTdObject(json['senders']);
  }
}

abstract class MessageForwardOrigin extends TdObject {}

@reflector
class MessageForwardOriginUser extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginUser';

  int senderUserId;

  @override
  Map<String, dynamic> get params => {
    'sender_user_id': senderUserId,
  };

  MessageForwardOriginUser({
    this.senderUserId,
  });

  MessageForwardOriginUser.fromJson(Map<String, dynamic> json) {
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
  }
}

@reflector
class MessageForwardOriginChat extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginChat';

  int senderChatId;
  String authorSignature;

  @override
  Map<String, dynamic> get params => {
    'sender_chat_id': senderChatId,
    'author_signature': authorSignature,
  };

  MessageForwardOriginChat({
    this.senderChatId,
    this.authorSignature,
  });

  MessageForwardOriginChat.fromJson(Map<String, dynamic> json) {
    senderChatId = tryConvertToTdObject(json['sender_chat_id']);
    authorSignature = tryConvertToTdObject(json['author_signature']);
  }
}

@reflector
class MessageForwardOriginHiddenUser extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginHiddenUser';

  String senderName;

  @override
  Map<String, dynamic> get params => {
    'sender_name': senderName,
  };

  MessageForwardOriginHiddenUser({
    this.senderName,
  });

  MessageForwardOriginHiddenUser.fromJson(Map<String, dynamic> json) {
    senderName = tryConvertToTdObject(json['sender_name']);
  }
}

@reflector
class MessageForwardOriginChannel extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginChannel';

  int chatId;
  int messageId;
  String authorSignature;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'author_signature': authorSignature,
  };

  MessageForwardOriginChannel({
    this.chatId,
    this.messageId,
    this.authorSignature,
  });

  MessageForwardOriginChannel.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    authorSignature = tryConvertToTdObject(json['author_signature']);
  }
}

@reflector
class MessageForwardOriginMessageImport extends MessageForwardOrigin {
  @override
  String get tdType => 'messageForwardOriginMessageImport';

  String senderName;

  @override
  Map<String, dynamic> get params => {
    'sender_name': senderName,
  };

  MessageForwardOriginMessageImport({
    this.senderName,
  });

  MessageForwardOriginMessageImport.fromJson(Map<String, dynamic> json) {
    senderName = tryConvertToTdObject(json['sender_name']);
  }
}

@reflector
class MessageForwardInfo extends TdObject {
  @override
  String get tdType => 'messageForwardInfo';

  MessageForwardOrigin origin;
  int date;
  String publicServiceAnnouncementType;
  int fromChatId;
  int fromMessageId;

  @override
  Map<String, dynamic> get params => {
    'origin': origin,
    'date': date,
    'public_service_announcement_type': publicServiceAnnouncementType,
    'from_chat_id': fromChatId,
    'from_message_id': fromMessageId,
  };

  MessageForwardInfo({
    this.origin,
    this.date,
    this.publicServiceAnnouncementType,
    this.fromChatId,
    this.fromMessageId,
  });

  MessageForwardInfo.fromJson(Map<String, dynamic> json) {
    origin = tryConvertToTdObject(json['origin']);
    date = tryConvertToTdObject(json['date']);
    publicServiceAnnouncementType = tryConvertToTdObject(json['public_service_announcement_type']);
    fromChatId = tryConvertToTdObject(json['from_chat_id']);
    fromMessageId = tryConvertToTdObject(json['from_message_id']);
  }
}

@reflector
class MessageReplyInfo extends TdObject {
  @override
  String get tdType => 'messageReplyInfo';

  int replyCount;
  List<MessageSender> recentRepliers;
  int lastReadInboxMessageId;
  int lastReadOutboxMessageId;
  int lastMessageId;

  @override
  Map<String, dynamic> get params => {
    'reply_count': replyCount,
    'recent_repliers': recentRepliers,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'last_message_id': lastMessageId,
  };

  MessageReplyInfo({
    this.replyCount,
    this.recentRepliers,
    this.lastReadInboxMessageId,
    this.lastReadOutboxMessageId,
    this.lastMessageId,
  });

  MessageReplyInfo.fromJson(Map<String, dynamic> json) {
    replyCount = tryConvertToTdObject(json['reply_count']);
    recentRepliers = tryConvertToTdObject(json['recent_repliers']);
    lastReadInboxMessageId = tryConvertToTdObject(json['last_read_inbox_message_id']);
    lastReadOutboxMessageId = tryConvertToTdObject(json['last_read_outbox_message_id']);
    lastMessageId = tryConvertToTdObject(json['last_message_id']);
  }
}

@reflector
class MessageInteractionInfo extends TdObject {
  @override
  String get tdType => 'messageInteractionInfo';

  int viewCount;
  int forwardCount;
  MessageReplyInfo replyInfo;

  @override
  Map<String, dynamic> get params => {
    'view_count': viewCount,
    'forward_count': forwardCount,
    'reply_info': replyInfo,
  };

  MessageInteractionInfo({
    this.viewCount,
    this.forwardCount,
    this.replyInfo,
  });

  MessageInteractionInfo.fromJson(Map<String, dynamic> json) {
    viewCount = tryConvertToTdObject(json['view_count']);
    forwardCount = tryConvertToTdObject(json['forward_count']);
    replyInfo = tryConvertToTdObject(json['reply_info']);
  }
}

abstract class MessageSendingState extends TdObject {}

@reflector
class MessageSendingStatePending extends MessageSendingState {
  @override
  String get tdType => 'messageSendingStatePending';

  @override
  Map<String, dynamic> get params => {};

  MessageSendingStatePending();

  MessageSendingStatePending.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageSendingStateFailed extends MessageSendingState {
  @override
  String get tdType => 'messageSendingStateFailed';

  int errorCode;
  String errorMessage;
  bool canRetry;
  double retryAfter;

  @override
  Map<String, dynamic> get params => {
    'error_code': errorCode,
    'error_message': errorMessage,
    'can_retry': canRetry,
    'retry_after': retryAfter,
  };

  MessageSendingStateFailed({
    this.errorCode,
    this.errorMessage,
    this.canRetry,
    this.retryAfter,
  });

  MessageSendingStateFailed.fromJson(Map<String, dynamic> json) {
    errorCode = tryConvertToTdObject(json['error_code']);
    errorMessage = tryConvertToTdObject(json['error_message']);
    canRetry = tryConvertToTdObject(json['can_retry']);
    retryAfter = tryConvertToTdObject(json['retry_after']);
  }
}

@reflector
class Message extends TdObject {
  @override
  String get tdType => 'message';

  int id;
  MessageSender sender;
  int chatId;
  MessageSendingState sendingState;
  MessageSchedulingState schedulingState;
  bool isOutgoing;
  bool isPinned;
  bool canBeEdited;
  bool canBeForwarded;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool canGetStatistics;
  bool canGetMessageThread;
  bool canGetViewers;
  bool canGetMediaTimestampLinks;
  bool hasTimestampedMedia;
  bool isChannelPost;
  bool containsUnreadMention;
  int date;
  int editDate;
  MessageForwardInfo forwardInfo;
  MessageInteractionInfo interactionInfo;
  int replyInChatId;
  int replyToMessageId;
  int messageThreadId;
  int ttl;
  double ttlExpiresIn;
  int viaBotUserId;
  String authorSignature;
  int mediaAlbumId;
  String restrictionReason;
  MessageContent content;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender': sender,
    'chat_id': chatId,
    'sending_state': sendingState,
    'scheduling_state': schedulingState,
    'is_outgoing': isOutgoing,
    'is_pinned': isPinned,
    'can_be_edited': canBeEdited,
    'can_be_forwarded': canBeForwarded,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_get_statistics': canGetStatistics,
    'can_get_message_thread': canGetMessageThread,
    'can_get_viewers': canGetViewers,
    'can_get_media_timestamp_links': canGetMediaTimestampLinks,
    'has_timestamped_media': hasTimestampedMedia,
    'is_channel_post': isChannelPost,
    'contains_unread_mention': containsUnreadMention,
    'date': date,
    'edit_date': editDate,
    'forward_info': forwardInfo,
    'interaction_info': interactionInfo,
    'reply_in_chat_id': replyInChatId,
    'reply_to_message_id': replyToMessageId,
    'message_thread_id': messageThreadId,
    'ttl': ttl,
    'ttl_expires_in': ttlExpiresIn,
    'via_bot_user_id': viaBotUserId,
    'author_signature': authorSignature,
    'media_album_id': mediaAlbumId,
    'restriction_reason': restrictionReason,
    'content': content,
    'reply_markup': replyMarkup,
  };

  Message({
    this.id,
    this.sender,
    this.chatId,
    this.sendingState,
    this.schedulingState,
    this.isOutgoing,
    this.isPinned,
    this.canBeEdited,
    this.canBeForwarded,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.canGetStatistics,
    this.canGetMessageThread,
    this.canGetViewers,
    this.canGetMediaTimestampLinks,
    this.hasTimestampedMedia,
    this.isChannelPost,
    this.containsUnreadMention,
    this.date,
    this.editDate,
    this.forwardInfo,
    this.interactionInfo,
    this.replyInChatId,
    this.replyToMessageId,
    this.messageThreadId,
    this.ttl,
    this.ttlExpiresIn,
    this.viaBotUserId,
    this.authorSignature,
    this.mediaAlbumId,
    this.restrictionReason,
    this.content,
    this.replyMarkup,
  });

  Message.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    sender = tryConvertToTdObject(json['sender']);
    chatId = tryConvertToTdObject(json['chat_id']);
    sendingState = tryConvertToTdObject(json['sending_state']);
    schedulingState = tryConvertToTdObject(json['scheduling_state']);
    isOutgoing = tryConvertToTdObject(json['is_outgoing']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
    canBeEdited = tryConvertToTdObject(json['can_be_edited']);
    canBeForwarded = tryConvertToTdObject(json['can_be_forwarded']);
    canBeDeletedOnlyForSelf = tryConvertToTdObject(json['can_be_deleted_only_for_self']);
    canBeDeletedForAllUsers = tryConvertToTdObject(json['can_be_deleted_for_all_users']);
    canGetStatistics = tryConvertToTdObject(json['can_get_statistics']);
    canGetMessageThread = tryConvertToTdObject(json['can_get_message_thread']);
    canGetViewers = tryConvertToTdObject(json['can_get_viewers']);
    canGetMediaTimestampLinks = tryConvertToTdObject(json['can_get_media_timestamp_links']);
    hasTimestampedMedia = tryConvertToTdObject(json['has_timestamped_media']);
    isChannelPost = tryConvertToTdObject(json['is_channel_post']);
    containsUnreadMention = tryConvertToTdObject(json['contains_unread_mention']);
    date = tryConvertToTdObject(json['date']);
    editDate = tryConvertToTdObject(json['edit_date']);
    forwardInfo = tryConvertToTdObject(json['forward_info']);
    interactionInfo = tryConvertToTdObject(json['interaction_info']);
    replyInChatId = tryConvertToTdObject(json['reply_in_chat_id']);
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    ttl = tryConvertToTdObject(json['ttl']);
    ttlExpiresIn = tryConvertToTdObject(json['ttl_expires_in']);
    viaBotUserId = tryConvertToTdObject(json['via_bot_user_id']);
    authorSignature = tryConvertToTdObject(json['author_signature']);
    mediaAlbumId = tryConvertToTdObject(json['media_album_id']);
    restrictionReason = tryConvertToTdObject(json['restriction_reason']);
    content = tryConvertToTdObject(json['content']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class Messages extends TdObject {
  @override
  String get tdType => 'messages';

  int totalCount;
  List<Message> messages;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'messages': messages,
  };

  Messages({
    this.totalCount,
    this.messages,
  });

  Messages.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    messages = tryConvertToTdObject(json['messages']);
  }
}

@reflector
class FoundMessages extends TdObject {
  @override
  String get tdType => 'foundMessages';

  int totalCount;
  List<Message> messages;
  String nextOffset;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'messages': messages,
    'next_offset': nextOffset,
  };

  FoundMessages({
    this.totalCount,
    this.messages,
    this.nextOffset,
  });

  FoundMessages.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    messages = tryConvertToTdObject(json['messages']);
    nextOffset = tryConvertToTdObject(json['next_offset']);
  }
}

@reflector
class SponsoredMessage extends TdObject {
  @override
  String get tdType => 'sponsoredMessage';

  int id;
  int sponsorChatId;
  InternalLinkType link;
  MessageContent content;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sponsor_chat_id': sponsorChatId,
    'link': link,
    'content': content,
  };

  SponsoredMessage({
    this.id,
    this.sponsorChatId,
    this.link,
    this.content,
  });

  SponsoredMessage.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    sponsorChatId = tryConvertToTdObject(json['sponsor_chat_id']);
    link = tryConvertToTdObject(json['link']);
    content = tryConvertToTdObject(json['content']);
  }
}

@reflector
class SponsoredMessages extends TdObject {
  @override
  String get tdType => 'sponsoredMessages';

  List<SponsoredMessage> messages;

  @override
  Map<String, dynamic> get params => {
    'messages': messages,
  };

  SponsoredMessages({
    this.messages,
  });

  SponsoredMessages.fromJson(Map<String, dynamic> json) {
    messages = tryConvertToTdObject(json['messages']);
  }
}

abstract class NotificationSettingsScope extends TdObject {}

@reflector
class NotificationSettingsScopePrivateChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopePrivateChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopePrivateChats();

  NotificationSettingsScopePrivateChats.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationSettingsScopeGroupChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopeGroupChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopeGroupChats();

  NotificationSettingsScopeGroupChats.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationSettingsScopeChannelChats extends NotificationSettingsScope {
  @override
  String get tdType => 'notificationSettingsScopeChannelChats';

  @override
  Map<String, dynamic> get params => {};

  NotificationSettingsScopeChannelChats();

  NotificationSettingsScopeChannelChats.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatNotificationSettings extends TdObject {
  @override
  String get tdType => 'chatNotificationSettings';

  bool useDefaultMuteFor;
  int muteFor;
  bool useDefaultSound;
  String sound;
  bool useDefaultShowPreview;
  bool showPreview;
  bool useDefaultDisablePinnedMessageNotifications;
  bool disablePinnedMessageNotifications;
  bool useDefaultDisableMentionNotifications;
  bool disableMentionNotifications;

  @override
  Map<String, dynamic> get params => {
    'use_default_mute_for': useDefaultMuteFor,
    'mute_for': muteFor,
    'use_default_sound': useDefaultSound,
    'sound': sound,
    'use_default_show_preview': useDefaultShowPreview,
    'show_preview': showPreview,
    'use_default_disable_pinned_message_notifications': useDefaultDisablePinnedMessageNotifications,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'use_default_disable_mention_notifications': useDefaultDisableMentionNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  ChatNotificationSettings({
    this.useDefaultMuteFor,
    this.muteFor,
    this.useDefaultSound,
    this.sound,
    this.useDefaultShowPreview,
    this.showPreview,
    this.useDefaultDisablePinnedMessageNotifications,
    this.disablePinnedMessageNotifications,
    this.useDefaultDisableMentionNotifications,
    this.disableMentionNotifications,
  });

  ChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    useDefaultMuteFor = tryConvertToTdObject(json['use_default_mute_for']);
    muteFor = tryConvertToTdObject(json['mute_for']);
    useDefaultSound = tryConvertToTdObject(json['use_default_sound']);
    sound = tryConvertToTdObject(json['sound']);
    useDefaultShowPreview = tryConvertToTdObject(json['use_default_show_preview']);
    showPreview = tryConvertToTdObject(json['show_preview']);
    useDefaultDisablePinnedMessageNotifications = tryConvertToTdObject(json['use_default_disable_pinned_message_notifications']);
    disablePinnedMessageNotifications = tryConvertToTdObject(json['disable_pinned_message_notifications']);
    useDefaultDisableMentionNotifications = tryConvertToTdObject(json['use_default_disable_mention_notifications']);
    disableMentionNotifications = tryConvertToTdObject(json['disable_mention_notifications']);
  }
}

@reflector
class ScopeNotificationSettings extends TdObject {
  @override
  String get tdType => 'scopeNotificationSettings';

  int muteFor;
  String sound;
  bool showPreview;
  bool disablePinnedMessageNotifications;
  bool disableMentionNotifications;

  @override
  Map<String, dynamic> get params => {
    'mute_for': muteFor,
    'sound': sound,
    'show_preview': showPreview,
    'disable_pinned_message_notifications': disablePinnedMessageNotifications,
    'disable_mention_notifications': disableMentionNotifications,
  };

  ScopeNotificationSettings({
    this.muteFor,
    this.sound,
    this.showPreview,
    this.disablePinnedMessageNotifications,
    this.disableMentionNotifications,
  });

  ScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    muteFor = tryConvertToTdObject(json['mute_for']);
    sound = tryConvertToTdObject(json['sound']);
    showPreview = tryConvertToTdObject(json['show_preview']);
    disablePinnedMessageNotifications = tryConvertToTdObject(json['disable_pinned_message_notifications']);
    disableMentionNotifications = tryConvertToTdObject(json['disable_mention_notifications']);
  }
}

@reflector
class DraftMessage extends TdObject {
  @override
  String get tdType => 'draftMessage';

  int replyToMessageId;
  int date;
  InputMessageContent inputMessageText;

  @override
  Map<String, dynamic> get params => {
    'reply_to_message_id': replyToMessageId,
    'date': date,
    'input_message_text': inputMessageText,
  };

  DraftMessage({
    this.replyToMessageId,
    this.date,
    this.inputMessageText,
  });

  DraftMessage.fromJson(Map<String, dynamic> json) {
    replyToMessageId = tryConvertToTdObject(json['reply_to_message_id']);
    date = tryConvertToTdObject(json['date']);
    inputMessageText = tryConvertToTdObject(json['input_message_text']);
  }
}

abstract class ChatType extends TdObject {}

@reflector
class ChatTypePrivate extends ChatType {
  @override
  String get tdType => 'chatTypePrivate';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  ChatTypePrivate({
    this.userId,
  });

  ChatTypePrivate.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class ChatTypeBasicGroup extends ChatType {
  @override
  String get tdType => 'chatTypeBasicGroup';

  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
  };

  ChatTypeBasicGroup({
    this.basicGroupId,
  });

  ChatTypeBasicGroup.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
  }
}

@reflector
class ChatTypeSupergroup extends ChatType {
  @override
  String get tdType => 'chatTypeSupergroup';

  int supergroupId;
  bool isChannel;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'is_channel': isChannel,
  };

  ChatTypeSupergroup({
    this.supergroupId,
    this.isChannel,
  });

  ChatTypeSupergroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    isChannel = tryConvertToTdObject(json['is_channel']);
  }
}

@reflector
class ChatTypeSecret extends ChatType {
  @override
  String get tdType => 'chatTypeSecret';

  int secretChatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'secret_chat_id': secretChatId,
    'user_id': userId,
  };

  ChatTypeSecret({
    this.secretChatId,
    this.userId,
  });

  ChatTypeSecret.fromJson(Map<String, dynamic> json) {
    secretChatId = tryConvertToTdObject(json['secret_chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class ChatFilter extends TdObject {
  @override
  String get tdType => 'chatFilter';

  String title;
  String iconName;
  List<int> pinnedChatIds;
  List<int> includedChatIds;
  List<int> excludedChatIds;
  bool excludeMuted;
  bool excludeRead;
  bool excludeArchived;
  bool includeContacts;
  bool includeNonContacts;
  bool includeBots;
  bool includeGroups;
  bool includeChannels;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'icon_name': iconName,
    'pinned_chat_ids': pinnedChatIds,
    'included_chat_ids': includedChatIds,
    'excluded_chat_ids': excludedChatIds,
    'exclude_muted': excludeMuted,
    'exclude_read': excludeRead,
    'exclude_archived': excludeArchived,
    'include_contacts': includeContacts,
    'include_non_contacts': includeNonContacts,
    'include_bots': includeBots,
    'include_groups': includeGroups,
    'include_channels': includeChannels,
  };

  ChatFilter({
    this.title,
    this.iconName,
    this.pinnedChatIds,
    this.includedChatIds,
    this.excludedChatIds,
    this.excludeMuted,
    this.excludeRead,
    this.excludeArchived,
    this.includeContacts,
    this.includeNonContacts,
    this.includeBots,
    this.includeGroups,
    this.includeChannels,
  });

  ChatFilter.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    iconName = tryConvertToTdObject(json['icon_name']);
    pinnedChatIds = tryConvertToTdObject(json['pinned_chat_ids']);
    includedChatIds = tryConvertToTdObject(json['included_chat_ids']);
    excludedChatIds = tryConvertToTdObject(json['excluded_chat_ids']);
    excludeMuted = tryConvertToTdObject(json['exclude_muted']);
    excludeRead = tryConvertToTdObject(json['exclude_read']);
    excludeArchived = tryConvertToTdObject(json['exclude_archived']);
    includeContacts = tryConvertToTdObject(json['include_contacts']);
    includeNonContacts = tryConvertToTdObject(json['include_non_contacts']);
    includeBots = tryConvertToTdObject(json['include_bots']);
    includeGroups = tryConvertToTdObject(json['include_groups']);
    includeChannels = tryConvertToTdObject(json['include_channels']);
  }
}

@reflector
class ChatFilterInfo extends TdObject {
  @override
  String get tdType => 'chatFilterInfo';

  int id;
  String title;
  String iconName;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'icon_name': iconName,
  };

  ChatFilterInfo({
    this.id,
    this.title,
    this.iconName,
  });

  ChatFilterInfo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    iconName = tryConvertToTdObject(json['icon_name']);
  }
}

@reflector
class RecommendedChatFilter extends TdObject {
  @override
  String get tdType => 'recommendedChatFilter';

  ChatFilter filter;
  String description;

  @override
  Map<String, dynamic> get params => {
    'filter': filter,
    'description': description,
  };

  RecommendedChatFilter({
    this.filter,
    this.description,
  });

  RecommendedChatFilter.fromJson(Map<String, dynamic> json) {
    filter = tryConvertToTdObject(json['filter']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class RecommendedChatFilters extends TdObject {
  @override
  String get tdType => 'recommendedChatFilters';

  List<RecommendedChatFilter> chatFilters;

  @override
  Map<String, dynamic> get params => {
    'chat_filters': chatFilters,
  };

  RecommendedChatFilters({
    this.chatFilters,
  });

  RecommendedChatFilters.fromJson(Map<String, dynamic> json) {
    chatFilters = tryConvertToTdObject(json['chat_filters']);
  }
}

abstract class ChatList extends TdObject {}

@reflector
class ChatListMain extends ChatList {
  @override
  String get tdType => 'chatListMain';

  @override
  Map<String, dynamic> get params => {};

  ChatListMain();

  ChatListMain.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatListArchive extends ChatList {
  @override
  String get tdType => 'chatListArchive';

  @override
  Map<String, dynamic> get params => {};

  ChatListArchive();

  ChatListArchive.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatListFilter extends ChatList {
  @override
  String get tdType => 'chatListFilter';

  int chatFilterId;

  @override
  Map<String, dynamic> get params => {
    'chat_filter_id': chatFilterId,
  };

  ChatListFilter({
    this.chatFilterId,
  });

  ChatListFilter.fromJson(Map<String, dynamic> json) {
    chatFilterId = tryConvertToTdObject(json['chat_filter_id']);
  }
}

@reflector
class ChatLists extends TdObject {
  @override
  String get tdType => 'chatLists';

  List<ChatList> chatLists;

  @override
  Map<String, dynamic> get params => {
    'chat_lists': chatLists,
  };

  ChatLists({
    this.chatLists,
  });

  ChatLists.fromJson(Map<String, dynamic> json) {
    chatLists = tryConvertToTdObject(json['chat_lists']);
  }
}

abstract class ChatSource extends TdObject {}

@reflector
class ChatSourceMtprotoProxy extends ChatSource {
  @override
  String get tdType => 'chatSourceMtprotoProxy';

  @override
  Map<String, dynamic> get params => {};

  ChatSourceMtprotoProxy();

  ChatSourceMtprotoProxy.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatSourcePublicServiceAnnouncement extends ChatSource {
  @override
  String get tdType => 'chatSourcePublicServiceAnnouncement';

  String type;
  String text;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'text': text,
  };

  ChatSourcePublicServiceAnnouncement({
    this.type,
    this.text,
  });

  ChatSourcePublicServiceAnnouncement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class ChatPosition extends TdObject {
  @override
  String get tdType => 'chatPosition';

  ChatList list;
  int order;
  bool isPinned;
  ChatSource source;

  @override
  Map<String, dynamic> get params => {
    'list': list,
    'order': order,
    'is_pinned': isPinned,
    'source': source,
  };

  ChatPosition({
    this.list,
    this.order,
    this.isPinned,
    this.source,
  });

  ChatPosition.fromJson(Map<String, dynamic> json) {
    list = tryConvertToTdObject(json['list']);
    order = tryConvertToTdObject(json['order']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
    source = tryConvertToTdObject(json['source']);
  }
}

@reflector
class VoiceChat extends TdObject {
  @override
  String get tdType => 'voiceChat';

  int groupCallId;
  bool hasParticipants;
  MessageSender defaultParticipantId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'has_participants': hasParticipants,
    'default_participant_id': defaultParticipantId,
  };

  VoiceChat({
    this.groupCallId,
    this.hasParticipants,
    this.defaultParticipantId,
  });

  VoiceChat.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    hasParticipants = tryConvertToTdObject(json['has_participants']);
    defaultParticipantId = tryConvertToTdObject(json['default_participant_id']);
  }
}

@reflector
class Chat extends TdObject {
  @override
  String get tdType => 'chat';

  int id;
  ChatType type;
  String title;
  ChatPhotoInfo photo;
  ChatPermissions permissions;
  Message lastMessage;
  List<ChatPosition> positions;
  bool isMarkedAsUnread;
  bool isBlocked;
  bool hasScheduledMessages;
  bool canBeDeletedOnlyForSelf;
  bool canBeDeletedForAllUsers;
  bool canBeReported;
  bool defaultDisableNotification;
  int unreadCount;
  int lastReadInboxMessageId;
  int lastReadOutboxMessageId;
  int unreadMentionCount;
  ChatNotificationSettings notificationSettings;
  int messageTtlSetting;
  String themeName;
  ChatActionBar actionBar;
  VoiceChat voiceChat;
  int replyMarkupMessageId;
  DraftMessage draftMessage;
  String clientData;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'type': type,
    'title': title,
    'photo': photo,
    'permissions': permissions,
    'last_message': lastMessage,
    'positions': positions,
    'is_marked_as_unread': isMarkedAsUnread,
    'is_blocked': isBlocked,
    'has_scheduled_messages': hasScheduledMessages,
    'can_be_deleted_only_for_self': canBeDeletedOnlyForSelf,
    'can_be_deleted_for_all_users': canBeDeletedForAllUsers,
    'can_be_reported': canBeReported,
    'default_disable_notification': defaultDisableNotification,
    'unread_count': unreadCount,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
    'unread_mention_count': unreadMentionCount,
    'notification_settings': notificationSettings,
    'message_ttl_setting': messageTtlSetting,
    'theme_name': themeName,
    'action_bar': actionBar,
    'voice_chat': voiceChat,
    'reply_markup_message_id': replyMarkupMessageId,
    'draft_message': draftMessage,
    'client_data': clientData,
  };

  Chat({
    this.id,
    this.type,
    this.title,
    this.photo,
    this.permissions,
    this.lastMessage,
    this.positions,
    this.isMarkedAsUnread,
    this.isBlocked,
    this.hasScheduledMessages,
    this.canBeDeletedOnlyForSelf,
    this.canBeDeletedForAllUsers,
    this.canBeReported,
    this.defaultDisableNotification,
    this.unreadCount,
    this.lastReadInboxMessageId,
    this.lastReadOutboxMessageId,
    this.unreadMentionCount,
    this.notificationSettings,
    this.messageTtlSetting,
    this.themeName,
    this.actionBar,
    this.voiceChat,
    this.replyMarkupMessageId,
    this.draftMessage,
    this.clientData,
  });

  Chat.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    type = tryConvertToTdObject(json['type']);
    title = tryConvertToTdObject(json['title']);
    photo = tryConvertToTdObject(json['photo']);
    permissions = tryConvertToTdObject(json['permissions']);
    lastMessage = tryConvertToTdObject(json['last_message']);
    positions = tryConvertToTdObject(json['positions']);
    isMarkedAsUnread = tryConvertToTdObject(json['is_marked_as_unread']);
    isBlocked = tryConvertToTdObject(json['is_blocked']);
    hasScheduledMessages = tryConvertToTdObject(json['has_scheduled_messages']);
    canBeDeletedOnlyForSelf = tryConvertToTdObject(json['can_be_deleted_only_for_self']);
    canBeDeletedForAllUsers = tryConvertToTdObject(json['can_be_deleted_for_all_users']);
    canBeReported = tryConvertToTdObject(json['can_be_reported']);
    defaultDisableNotification = tryConvertToTdObject(json['default_disable_notification']);
    unreadCount = tryConvertToTdObject(json['unread_count']);
    lastReadInboxMessageId = tryConvertToTdObject(json['last_read_inbox_message_id']);
    lastReadOutboxMessageId = tryConvertToTdObject(json['last_read_outbox_message_id']);
    unreadMentionCount = tryConvertToTdObject(json['unread_mention_count']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
    messageTtlSetting = tryConvertToTdObject(json['message_ttl_setting']);
    themeName = tryConvertToTdObject(json['theme_name']);
    actionBar = tryConvertToTdObject(json['action_bar']);
    voiceChat = tryConvertToTdObject(json['voice_chat']);
    replyMarkupMessageId = tryConvertToTdObject(json['reply_markup_message_id']);
    draftMessage = tryConvertToTdObject(json['draft_message']);
    clientData = tryConvertToTdObject(json['client_data']);
  }
}

@reflector
class Chats extends TdObject {
  @override
  String get tdType => 'chats';

  int totalCount;
  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'chat_ids': chatIds,
  };

  Chats({
    this.totalCount,
    this.chatIds,
  });

  Chats.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    chatIds = tryConvertToTdObject(json['chat_ids']);
  }
}

@reflector
class ChatNearby extends TdObject {
  @override
  String get tdType => 'chatNearby';

  int chatId;
  int distance;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'distance': distance,
  };

  ChatNearby({
    this.chatId,
    this.distance,
  });

  ChatNearby.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    distance = tryConvertToTdObject(json['distance']);
  }
}

@reflector
class ChatsNearby extends TdObject {
  @override
  String get tdType => 'chatsNearby';

  List<ChatNearby> usersNearby;
  List<ChatNearby> supergroupsNearby;

  @override
  Map<String, dynamic> get params => {
    'users_nearby': usersNearby,
    'supergroups_nearby': supergroupsNearby,
  };

  ChatsNearby({
    this.usersNearby,
    this.supergroupsNearby,
  });

  ChatsNearby.fromJson(Map<String, dynamic> json) {
    usersNearby = tryConvertToTdObject(json['users_nearby']);
    supergroupsNearby = tryConvertToTdObject(json['supergroups_nearby']);
  }
}

abstract class PublicChatType extends TdObject {}

@reflector
class PublicChatTypeHasUsername extends PublicChatType {
  @override
  String get tdType => 'publicChatTypeHasUsername';

  @override
  Map<String, dynamic> get params => {};

  PublicChatTypeHasUsername();

  PublicChatTypeHasUsername.fromJson(Map<String, dynamic> json);
}

@reflector
class PublicChatTypeIsLocationBased extends PublicChatType {
  @override
  String get tdType => 'publicChatTypeIsLocationBased';

  @override
  Map<String, dynamic> get params => {};

  PublicChatTypeIsLocationBased();

  PublicChatTypeIsLocationBased.fromJson(Map<String, dynamic> json);
}

abstract class ChatActionBar extends TdObject {}

@reflector
class ChatActionBarReportSpam extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarReportSpam';

  bool canUnarchive;

  @override
  Map<String, dynamic> get params => {
    'can_unarchive': canUnarchive,
  };

  ChatActionBarReportSpam({
    this.canUnarchive,
  });

  ChatActionBarReportSpam.fromJson(Map<String, dynamic> json) {
    canUnarchive = tryConvertToTdObject(json['can_unarchive']);
  }
}

@reflector
class ChatActionBarReportUnrelatedLocation extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarReportUnrelatedLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarReportUnrelatedLocation();

  ChatActionBarReportUnrelatedLocation.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionBarInviteMembers extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarInviteMembers';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarInviteMembers();

  ChatActionBarInviteMembers.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionBarReportAddBlock extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarReportAddBlock';

  bool canUnarchive;
  int distance;

  @override
  Map<String, dynamic> get params => {
    'can_unarchive': canUnarchive,
    'distance': distance,
  };

  ChatActionBarReportAddBlock({
    this.canUnarchive,
    this.distance,
  });

  ChatActionBarReportAddBlock.fromJson(Map<String, dynamic> json) {
    canUnarchive = tryConvertToTdObject(json['can_unarchive']);
    distance = tryConvertToTdObject(json['distance']);
  }
}

@reflector
class ChatActionBarAddContact extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarAddContact';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarAddContact();

  ChatActionBarAddContact.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionBarSharePhoneNumber extends ChatActionBar {
  @override
  String get tdType => 'chatActionBarSharePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  ChatActionBarSharePhoneNumber();

  ChatActionBarSharePhoneNumber.fromJson(Map<String, dynamic> json);
}

abstract class KeyboardButtonType extends TdObject {}

@reflector
class KeyboardButtonTypeText extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeText';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeText();

  KeyboardButtonTypeText.fromJson(Map<String, dynamic> json);
}

@reflector
class KeyboardButtonTypeRequestPhoneNumber extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeRequestPhoneNumber();

  KeyboardButtonTypeRequestPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class KeyboardButtonTypeRequestLocation extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestLocation';

  @override
  Map<String, dynamic> get params => {};

  KeyboardButtonTypeRequestLocation();

  KeyboardButtonTypeRequestLocation.fromJson(Map<String, dynamic> json);
}

@reflector
class KeyboardButtonTypeRequestPoll extends KeyboardButtonType {
  @override
  String get tdType => 'keyboardButtonTypeRequestPoll';

  bool forceRegular;
  bool forceQuiz;

  @override
  Map<String, dynamic> get params => {
    'force_regular': forceRegular,
    'force_quiz': forceQuiz,
  };

  KeyboardButtonTypeRequestPoll({
    this.forceRegular,
    this.forceQuiz,
  });

  KeyboardButtonTypeRequestPoll.fromJson(Map<String, dynamic> json) {
    forceRegular = tryConvertToTdObject(json['force_regular']);
    forceQuiz = tryConvertToTdObject(json['force_quiz']);
  }
}

@reflector
class KeyboardButton extends TdObject {
  @override
  String get tdType => 'keyboardButton';

  String text;
  KeyboardButtonType type;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'type': type,
  };

  KeyboardButton({
    this.text,
    this.type,
  });

  KeyboardButton.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    type = tryConvertToTdObject(json['type']);
  }
}

abstract class InlineKeyboardButtonType extends TdObject {}

@reflector
class InlineKeyboardButtonTypeUrl extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  InlineKeyboardButtonTypeUrl({
    this.url,
  });

  InlineKeyboardButtonTypeUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class InlineKeyboardButtonTypeLoginUrl extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeLoginUrl';

  String url;
  int id;
  String forwardText;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'id': id,
    'forward_text': forwardText,
  };

  InlineKeyboardButtonTypeLoginUrl({
    this.url,
    this.id,
    this.forwardText,
  });

  InlineKeyboardButtonTypeLoginUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    id = tryConvertToTdObject(json['id']);
    forwardText = tryConvertToTdObject(json['forward_text']);
  }
}

@reflector
class InlineKeyboardButtonTypeCallback extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallback';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InlineKeyboardButtonTypeCallback({
    this.data,
  });

  InlineKeyboardButtonTypeCallback.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class InlineKeyboardButtonTypeCallbackWithPassword extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallbackWithPassword';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InlineKeyboardButtonTypeCallbackWithPassword({
    this.data,
  });

  InlineKeyboardButtonTypeCallbackWithPassword.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class InlineKeyboardButtonTypeCallbackGame extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeCallbackGame';

  @override
  Map<String, dynamic> get params => {};

  InlineKeyboardButtonTypeCallbackGame();

  InlineKeyboardButtonTypeCallbackGame.fromJson(Map<String, dynamic> json);
}

@reflector
class InlineKeyboardButtonTypeSwitchInline extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeSwitchInline';

  String query;
  bool inCurrentChat;

  @override
  Map<String, dynamic> get params => {
    'query': query,
    'in_current_chat': inCurrentChat,
  };

  InlineKeyboardButtonTypeSwitchInline({
    this.query,
    this.inCurrentChat,
  });

  InlineKeyboardButtonTypeSwitchInline.fromJson(Map<String, dynamic> json) {
    query = tryConvertToTdObject(json['query']);
    inCurrentChat = tryConvertToTdObject(json['in_current_chat']);
  }
}

@reflector
class InlineKeyboardButtonTypeBuy extends InlineKeyboardButtonType {
  @override
  String get tdType => 'inlineKeyboardButtonTypeBuy';

  @override
  Map<String, dynamic> get params => {};

  InlineKeyboardButtonTypeBuy();

  InlineKeyboardButtonTypeBuy.fromJson(Map<String, dynamic> json);
}

@reflector
class InlineKeyboardButton extends TdObject {
  @override
  String get tdType => 'inlineKeyboardButton';

  String text;
  InlineKeyboardButtonType type;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'type': type,
  };

  InlineKeyboardButton({
    this.text,
    this.type,
  });

  InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    type = tryConvertToTdObject(json['type']);
  }
}

abstract class ReplyMarkup extends TdObject {}

@reflector
class ReplyMarkupRemoveKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupRemoveKeyboard';

  bool isPersonal;

  @override
  Map<String, dynamic> get params => {
    'is_personal': isPersonal,
  };

  ReplyMarkupRemoveKeyboard({
    this.isPersonal,
  });

  ReplyMarkupRemoveKeyboard.fromJson(Map<String, dynamic> json) {
    isPersonal = tryConvertToTdObject(json['is_personal']);
  }
}

@reflector
class ReplyMarkupForceReply extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupForceReply';

  bool isPersonal;
  String inputFieldPlaceholder;

  @override
  Map<String, dynamic> get params => {
    'is_personal': isPersonal,
    'input_field_placeholder': inputFieldPlaceholder,
  };

  ReplyMarkupForceReply({
    this.isPersonal,
    this.inputFieldPlaceholder,
  });

  ReplyMarkupForceReply.fromJson(Map<String, dynamic> json) {
    isPersonal = tryConvertToTdObject(json['is_personal']);
    inputFieldPlaceholder = tryConvertToTdObject(json['input_field_placeholder']);
  }
}

@reflector
class ReplyMarkupShowKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupShowKeyboard';

  List<List<KeyboardButton>> rows;
  bool resizeKeyboard;
  bool oneTime;
  bool isPersonal;
  String inputFieldPlaceholder;

  @override
  Map<String, dynamic> get params => {
    'rows': rows,
    'resize_keyboard': resizeKeyboard,
    'one_time': oneTime,
    'is_personal': isPersonal,
    'input_field_placeholder': inputFieldPlaceholder,
  };

  ReplyMarkupShowKeyboard({
    this.rows,
    this.resizeKeyboard,
    this.oneTime,
    this.isPersonal,
    this.inputFieldPlaceholder,
  });

  ReplyMarkupShowKeyboard.fromJson(Map<String, dynamic> json) {
    rows = tryConvertToTdObject(json['rows']);
    resizeKeyboard = tryConvertToTdObject(json['resize_keyboard']);
    oneTime = tryConvertToTdObject(json['one_time']);
    isPersonal = tryConvertToTdObject(json['is_personal']);
    inputFieldPlaceholder = tryConvertToTdObject(json['input_field_placeholder']);
  }
}

@reflector
class ReplyMarkupInlineKeyboard extends ReplyMarkup {
  @override
  String get tdType => 'replyMarkupInlineKeyboard';

  List<List<InlineKeyboardButton>> rows;

  @override
  Map<String, dynamic> get params => {
    'rows': rows,
  };

  ReplyMarkupInlineKeyboard({
    this.rows,
  });

  ReplyMarkupInlineKeyboard.fromJson(Map<String, dynamic> json) {
    rows = tryConvertToTdObject(json['rows']);
  }
}

abstract class LoginUrlInfo extends TdObject {}

@reflector
class LoginUrlInfoOpen extends LoginUrlInfo {
  @override
  String get tdType => 'loginUrlInfoOpen';

  String url;
  bool skipConfirm;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'skip_confirm': skipConfirm,
  };

  LoginUrlInfoOpen({
    this.url,
    this.skipConfirm,
  });

  LoginUrlInfoOpen.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    skipConfirm = tryConvertToTdObject(json['skip_confirm']);
  }
}

@reflector
class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  @override
  String get tdType => 'loginUrlInfoRequestConfirmation';

  String url;
  String domain;
  int botUserId;
  bool requestWriteAccess;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'domain': domain,
    'bot_user_id': botUserId,
    'request_write_access': requestWriteAccess,
  };

  LoginUrlInfoRequestConfirmation({
    this.url,
    this.domain,
    this.botUserId,
    this.requestWriteAccess,
  });

  LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    domain = tryConvertToTdObject(json['domain']);
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    requestWriteAccess = tryConvertToTdObject(json['request_write_access']);
  }
}

@reflector
class MessageThreadInfo extends TdObject {
  @override
  String get tdType => 'messageThreadInfo';

  int chatId;
  int messageThreadId;
  MessageReplyInfo replyInfo;
  int unreadMessageCount;
  List<Message> messages;
  DraftMessage draftMessage;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'reply_info': replyInfo,
    'unread_message_count': unreadMessageCount,
    'messages': messages,
    'draft_message': draftMessage,
  };

  MessageThreadInfo({
    this.chatId,
    this.messageThreadId,
    this.replyInfo,
    this.unreadMessageCount,
    this.messages,
    this.draftMessage,
  });

  MessageThreadInfo.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    replyInfo = tryConvertToTdObject(json['reply_info']);
    unreadMessageCount = tryConvertToTdObject(json['unread_message_count']);
    messages = tryConvertToTdObject(json['messages']);
    draftMessage = tryConvertToTdObject(json['draft_message']);
  }
}

abstract class RichText extends TdObject {}

@reflector
class RichTextPlain extends RichText {
  @override
  String get tdType => 'richTextPlain';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextPlain({
    this.text,
  });

  RichTextPlain.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextBold extends RichText {
  @override
  String get tdType => 'richTextBold';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextBold({
    this.text,
  });

  RichTextBold.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextItalic extends RichText {
  @override
  String get tdType => 'richTextItalic';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextItalic({
    this.text,
  });

  RichTextItalic.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextUnderline extends RichText {
  @override
  String get tdType => 'richTextUnderline';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextUnderline({
    this.text,
  });

  RichTextUnderline.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextStrikethrough extends RichText {
  @override
  String get tdType => 'richTextStrikethrough';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextStrikethrough({
    this.text,
  });

  RichTextStrikethrough.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextFixed extends RichText {
  @override
  String get tdType => 'richTextFixed';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextFixed({
    this.text,
  });

  RichTextFixed.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextUrl extends RichText {
  @override
  String get tdType => 'richTextUrl';

  RichText text;
  String url;
  bool isCached;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'url': url,
    'is_cached': isCached,
  };

  RichTextUrl({
    this.text,
    this.url,
    this.isCached,
  });

  RichTextUrl.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    url = tryConvertToTdObject(json['url']);
    isCached = tryConvertToTdObject(json['is_cached']);
  }
}

@reflector
class RichTextEmailAddress extends RichText {
  @override
  String get tdType => 'richTextEmailAddress';

  RichText text;
  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'email_address': emailAddress,
  };

  RichTextEmailAddress({
    this.text,
    this.emailAddress,
  });

  RichTextEmailAddress.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

@reflector
class RichTextSubscript extends RichText {
  @override
  String get tdType => 'richTextSubscript';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextSubscript({
    this.text,
  });

  RichTextSubscript.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextSuperscript extends RichText {
  @override
  String get tdType => 'richTextSuperscript';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextSuperscript({
    this.text,
  });

  RichTextSuperscript.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextMarked extends RichText {
  @override
  String get tdType => 'richTextMarked';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  RichTextMarked({
    this.text,
  });

  RichTextMarked.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class RichTextPhoneNumber extends RichText {
  @override
  String get tdType => 'richTextPhoneNumber';

  RichText text;
  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'phone_number': phoneNumber,
  };

  RichTextPhoneNumber({
    this.text,
    this.phoneNumber,
  });

  RichTextPhoneNumber.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class RichTextIcon extends RichText {
  @override
  String get tdType => 'richTextIcon';

  Document document;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'width': width,
    'height': height,
  };

  RichTextIcon({
    this.document,
    this.width,
    this.height,
  });

  RichTextIcon.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
  }
}

@reflector
class RichTextReference extends RichText {
  @override
  String get tdType => 'richTextReference';

  RichText text;
  String anchorName;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'anchor_name': anchorName,
    'url': url,
  };

  RichTextReference({
    this.text,
    this.anchorName,
    this.url,
  });

  RichTextReference.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    anchorName = tryConvertToTdObject(json['anchor_name']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class RichTextAnchor extends RichText {
  @override
  String get tdType => 'richTextAnchor';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  RichTextAnchor({
    this.name,
  });

  RichTextAnchor.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class RichTextAnchorLink extends RichText {
  @override
  String get tdType => 'richTextAnchorLink';

  RichText text;
  String anchorName;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'anchor_name': anchorName,
    'url': url,
  };

  RichTextAnchorLink({
    this.text,
    this.anchorName,
    this.url,
  });

  RichTextAnchorLink.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    anchorName = tryConvertToTdObject(json['anchor_name']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class RichTexts extends RichText {
  @override
  String get tdType => 'richTexts';

  List<RichText> texts;

  @override
  Map<String, dynamic> get params => {
    'texts': texts,
  };

  RichTexts({
    this.texts,
  });

  RichTexts.fromJson(Map<String, dynamic> json) {
    texts = tryConvertToTdObject(json['texts']);
  }
}

@reflector
class PageBlockCaption extends TdObject {
  @override
  String get tdType => 'pageBlockCaption';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockCaption({
    this.text,
    this.credit,
  });

  PageBlockCaption.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    credit = tryConvertToTdObject(json['credit']);
  }
}

@reflector
class PageBlockListItem extends TdObject {
  @override
  String get tdType => 'pageBlockListItem';

  String label;
  List<PageBlock> pageBlocks;

  @override
  Map<String, dynamic> get params => {
    'label': label,
    'page_blocks': pageBlocks,
  };

  PageBlockListItem({
    this.label,
    this.pageBlocks,
  });

  PageBlockListItem.fromJson(Map<String, dynamic> json) {
    label = tryConvertToTdObject(json['label']);
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
  }
}

abstract class PageBlockHorizontalAlignment extends TdObject {}

@reflector
class PageBlockHorizontalAlignmentLeft extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentLeft';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentLeft();

  PageBlockHorizontalAlignmentLeft.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockHorizontalAlignmentCenter extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentCenter';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentCenter();

  PageBlockHorizontalAlignmentCenter.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockHorizontalAlignmentRight extends PageBlockHorizontalAlignment {
  @override
  String get tdType => 'pageBlockHorizontalAlignmentRight';

  @override
  Map<String, dynamic> get params => {};

  PageBlockHorizontalAlignmentRight();

  PageBlockHorizontalAlignmentRight.fromJson(Map<String, dynamic> json);
}

abstract class PageBlockVerticalAlignment extends TdObject {}

@reflector
class PageBlockVerticalAlignmentTop extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentTop';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentTop();

  PageBlockVerticalAlignmentTop.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockVerticalAlignmentMiddle extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentMiddle';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentMiddle();

  PageBlockVerticalAlignmentMiddle.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockVerticalAlignmentBottom extends PageBlockVerticalAlignment {
  @override
  String get tdType => 'pageBlockVerticalAlignmentBottom';

  @override
  Map<String, dynamic> get params => {};

  PageBlockVerticalAlignmentBottom();

  PageBlockVerticalAlignmentBottom.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockTableCell extends TdObject {
  @override
  String get tdType => 'pageBlockTableCell';

  RichText text;
  bool isHeader;
  int colspan;
  int rowspan;
  PageBlockHorizontalAlignment align;
  PageBlockVerticalAlignment valign;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'is_header': isHeader,
    'colspan': colspan,
    'rowspan': rowspan,
    'align': align,
    'valign': valign,
  };

  PageBlockTableCell({
    this.text,
    this.isHeader,
    this.colspan,
    this.rowspan,
    this.align,
    this.valign,
  });

  PageBlockTableCell.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    isHeader = tryConvertToTdObject(json['is_header']);
    colspan = tryConvertToTdObject(json['colspan']);
    rowspan = tryConvertToTdObject(json['rowspan']);
    align = tryConvertToTdObject(json['align']);
    valign = tryConvertToTdObject(json['valign']);
  }
}

@reflector
class PageBlockRelatedArticle extends TdObject {
  @override
  String get tdType => 'pageBlockRelatedArticle';

  String url;
  String title;
  String description;
  Photo photo;
  String author;
  int publishDate;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'title': title,
    'description': description,
    'photo': photo,
    'author': author,
    'publish_date': publishDate,
  };

  PageBlockRelatedArticle({
    this.url,
    this.title,
    this.description,
    this.photo,
    this.author,
    this.publishDate,
  });

  PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    author = tryConvertToTdObject(json['author']);
    publishDate = tryConvertToTdObject(json['publish_date']);
  }
}

abstract class PageBlock extends TdObject {}

@reflector
class PageBlockTitle extends PageBlock {
  @override
  String get tdType => 'pageBlockTitle';

  RichText title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  PageBlockTitle({
    this.title,
  });

  PageBlockTitle.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class PageBlockSubtitle extends PageBlock {
  @override
  String get tdType => 'pageBlockSubtitle';

  RichText subtitle;

  @override
  Map<String, dynamic> get params => {
    'subtitle': subtitle,
  };

  PageBlockSubtitle({
    this.subtitle,
  });

  PageBlockSubtitle.fromJson(Map<String, dynamic> json) {
    subtitle = tryConvertToTdObject(json['subtitle']);
  }
}

@reflector
class PageBlockAuthorDate extends PageBlock {
  @override
  String get tdType => 'pageBlockAuthorDate';

  RichText author;
  int publishDate;

  @override
  Map<String, dynamic> get params => {
    'author': author,
    'publish_date': publishDate,
  };

  PageBlockAuthorDate({
    this.author,
    this.publishDate,
  });

  PageBlockAuthorDate.fromJson(Map<String, dynamic> json) {
    author = tryConvertToTdObject(json['author']);
    publishDate = tryConvertToTdObject(json['publish_date']);
  }
}

@reflector
class PageBlockHeader extends PageBlock {
  @override
  String get tdType => 'pageBlockHeader';

  RichText header;

  @override
  Map<String, dynamic> get params => {
    'header': header,
  };

  PageBlockHeader({
    this.header,
  });

  PageBlockHeader.fromJson(Map<String, dynamic> json) {
    header = tryConvertToTdObject(json['header']);
  }
}

@reflector
class PageBlockSubheader extends PageBlock {
  @override
  String get tdType => 'pageBlockSubheader';

  RichText subheader;

  @override
  Map<String, dynamic> get params => {
    'subheader': subheader,
  };

  PageBlockSubheader({
    this.subheader,
  });

  PageBlockSubheader.fromJson(Map<String, dynamic> json) {
    subheader = tryConvertToTdObject(json['subheader']);
  }
}

@reflector
class PageBlockKicker extends PageBlock {
  @override
  String get tdType => 'pageBlockKicker';

  RichText kicker;

  @override
  Map<String, dynamic> get params => {
    'kicker': kicker,
  };

  PageBlockKicker({
    this.kicker,
  });

  PageBlockKicker.fromJson(Map<String, dynamic> json) {
    kicker = tryConvertToTdObject(json['kicker']);
  }
}

@reflector
class PageBlockParagraph extends PageBlock {
  @override
  String get tdType => 'pageBlockParagraph';

  RichText text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  PageBlockParagraph({
    this.text,
  });

  PageBlockParagraph.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class PageBlockPreformatted extends PageBlock {
  @override
  String get tdType => 'pageBlockPreformatted';

  RichText text;
  String language;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'language': language,
  };

  PageBlockPreformatted({
    this.text,
    this.language,
  });

  PageBlockPreformatted.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    language = tryConvertToTdObject(json['language']);
  }
}

@reflector
class PageBlockFooter extends PageBlock {
  @override
  String get tdType => 'pageBlockFooter';

  RichText footer;

  @override
  Map<String, dynamic> get params => {
    'footer': footer,
  };

  PageBlockFooter({
    this.footer,
  });

  PageBlockFooter.fromJson(Map<String, dynamic> json) {
    footer = tryConvertToTdObject(json['footer']);
  }
}

@reflector
class PageBlockDivider extends PageBlock {
  @override
  String get tdType => 'pageBlockDivider';

  @override
  Map<String, dynamic> get params => {};

  PageBlockDivider();

  PageBlockDivider.fromJson(Map<String, dynamic> json);
}

@reflector
class PageBlockAnchor extends PageBlock {
  @override
  String get tdType => 'pageBlockAnchor';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  PageBlockAnchor({
    this.name,
  });

  PageBlockAnchor.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class PageBlockList extends PageBlock {
  @override
  String get tdType => 'pageBlockList';

  List<PageBlockListItem> items;

  @override
  Map<String, dynamic> get params => {
    'items': items,
  };

  PageBlockList({
    this.items,
  });

  PageBlockList.fromJson(Map<String, dynamic> json) {
    items = tryConvertToTdObject(json['items']);
  }
}

@reflector
class PageBlockBlockQuote extends PageBlock {
  @override
  String get tdType => 'pageBlockBlockQuote';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockBlockQuote({
    this.text,
    this.credit,
  });

  PageBlockBlockQuote.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    credit = tryConvertToTdObject(json['credit']);
  }
}

@reflector
class PageBlockPullQuote extends PageBlock {
  @override
  String get tdType => 'pageBlockPullQuote';

  RichText text;
  RichText credit;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'credit': credit,
  };

  PageBlockPullQuote({
    this.text,
    this.credit,
  });

  PageBlockPullQuote.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    credit = tryConvertToTdObject(json['credit']);
  }
}

@reflector
class PageBlockAnimation extends PageBlock {
  @override
  String get tdType => 'pageBlockAnimation';

  Animation animation;
  PageBlockCaption caption;
  bool needAutoplay;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'need_autoplay': needAutoplay,
  };

  PageBlockAnimation({
    this.animation,
    this.caption,
    this.needAutoplay,
  });

  PageBlockAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    caption = tryConvertToTdObject(json['caption']);
    needAutoplay = tryConvertToTdObject(json['need_autoplay']);
  }
}

@reflector
class PageBlockAudio extends PageBlock {
  @override
  String get tdType => 'pageBlockAudio';

  Audio audio;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'caption': caption,
  };

  PageBlockAudio({
    this.audio,
    this.caption,
  });

  PageBlockAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockPhoto extends PageBlock {
  @override
  String get tdType => 'pageBlockPhoto';

  Photo photo;
  PageBlockCaption caption;
  String url;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'url': url,
  };

  PageBlockPhoto({
    this.photo,
    this.caption,
    this.url,
  });

  PageBlockPhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    caption = tryConvertToTdObject(json['caption']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class PageBlockVideo extends PageBlock {
  @override
  String get tdType => 'pageBlockVideo';

  Video video;
  PageBlockCaption caption;
  bool needAutoplay;
  bool isLooped;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'need_autoplay': needAutoplay,
    'is_looped': isLooped,
  };

  PageBlockVideo({
    this.video,
    this.caption,
    this.needAutoplay,
    this.isLooped,
  });

  PageBlockVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    caption = tryConvertToTdObject(json['caption']);
    needAutoplay = tryConvertToTdObject(json['need_autoplay']);
    isLooped = tryConvertToTdObject(json['is_looped']);
  }
}

@reflector
class PageBlockVoiceNote extends PageBlock {
  @override
  String get tdType => 'pageBlockVoiceNote';

  VoiceNote voiceNote;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'caption': caption,
  };

  PageBlockVoiceNote({
    this.voiceNote,
    this.caption,
  });

  PageBlockVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockCover extends PageBlock {
  @override
  String get tdType => 'pageBlockCover';

  PageBlock cover;

  @override
  Map<String, dynamic> get params => {
    'cover': cover,
  };

  PageBlockCover({
    this.cover,
  });

  PageBlockCover.fromJson(Map<String, dynamic> json) {
    cover = tryConvertToTdObject(json['cover']);
  }
}

@reflector
class PageBlockEmbedded extends PageBlock {
  @override
  String get tdType => 'pageBlockEmbedded';

  String url;
  String html;
  Photo posterPhoto;
  int width;
  int height;
  PageBlockCaption caption;
  bool isFullWidth;
  bool allowScrolling;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'html': html,
    'poster_photo': posterPhoto,
    'width': width,
    'height': height,
    'caption': caption,
    'is_full_width': isFullWidth,
    'allow_scrolling': allowScrolling,
  };

  PageBlockEmbedded({
    this.url,
    this.html,
    this.posterPhoto,
    this.width,
    this.height,
    this.caption,
    this.isFullWidth,
    this.allowScrolling,
  });

  PageBlockEmbedded.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    html = tryConvertToTdObject(json['html']);
    posterPhoto = tryConvertToTdObject(json['poster_photo']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
    isFullWidth = tryConvertToTdObject(json['is_full_width']);
    allowScrolling = tryConvertToTdObject(json['allow_scrolling']);
  }
}

@reflector
class PageBlockEmbeddedPost extends PageBlock {
  @override
  String get tdType => 'pageBlockEmbeddedPost';

  String url;
  String author;
  Photo authorPhoto;
  int date;
  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'author': author,
    'author_photo': authorPhoto,
    'date': date,
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockEmbeddedPost({
    this.url,
    this.author,
    this.authorPhoto,
    this.date,
    this.pageBlocks,
    this.caption,
  });

  PageBlockEmbeddedPost.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    author = tryConvertToTdObject(json['author']);
    authorPhoto = tryConvertToTdObject(json['author_photo']);
    date = tryConvertToTdObject(json['date']);
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockCollage extends PageBlock {
  @override
  String get tdType => 'pageBlockCollage';

  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockCollage({
    this.pageBlocks,
    this.caption,
  });

  PageBlockCollage.fromJson(Map<String, dynamic> json) {
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockSlideshow extends PageBlock {
  @override
  String get tdType => 'pageBlockSlideshow';

  List<PageBlock> pageBlocks;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'caption': caption,
  };

  PageBlockSlideshow({
    this.pageBlocks,
    this.caption,
  });

  PageBlockSlideshow.fromJson(Map<String, dynamic> json) {
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class PageBlockChatLink extends PageBlock {
  @override
  String get tdType => 'pageBlockChatLink';

  String title;
  ChatPhotoInfo photo;
  String username;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'photo': photo,
    'username': username,
  };

  PageBlockChatLink({
    this.title,
    this.photo,
    this.username,
  });

  PageBlockChatLink.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    photo = tryConvertToTdObject(json['photo']);
    username = tryConvertToTdObject(json['username']);
  }
}

@reflector
class PageBlockTable extends PageBlock {
  @override
  String get tdType => 'pageBlockTable';

  RichText caption;
  List<List<PageBlockTableCell>> cells;
  bool isBordered;
  bool isStriped;

  @override
  Map<String, dynamic> get params => {
    'caption': caption,
    'cells': cells,
    'is_bordered': isBordered,
    'is_striped': isStriped,
  };

  PageBlockTable({
    this.caption,
    this.cells,
    this.isBordered,
    this.isStriped,
  });

  PageBlockTable.fromJson(Map<String, dynamic> json) {
    caption = tryConvertToTdObject(json['caption']);
    cells = tryConvertToTdObject(json['cells']);
    isBordered = tryConvertToTdObject(json['is_bordered']);
    isStriped = tryConvertToTdObject(json['is_striped']);
  }
}

@reflector
class PageBlockDetails extends PageBlock {
  @override
  String get tdType => 'pageBlockDetails';

  RichText header;
  List<PageBlock> pageBlocks;
  bool isOpen;

  @override
  Map<String, dynamic> get params => {
    'header': header,
    'page_blocks': pageBlocks,
    'is_open': isOpen,
  };

  PageBlockDetails({
    this.header,
    this.pageBlocks,
    this.isOpen,
  });

  PageBlockDetails.fromJson(Map<String, dynamic> json) {
    header = tryConvertToTdObject(json['header']);
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    isOpen = tryConvertToTdObject(json['is_open']);
  }
}

@reflector
class PageBlockRelatedArticles extends PageBlock {
  @override
  String get tdType => 'pageBlockRelatedArticles';

  RichText header;
  List<PageBlockRelatedArticle> articles;

  @override
  Map<String, dynamic> get params => {
    'header': header,
    'articles': articles,
  };

  PageBlockRelatedArticles({
    this.header,
    this.articles,
  });

  PageBlockRelatedArticles.fromJson(Map<String, dynamic> json) {
    header = tryConvertToTdObject(json['header']);
    articles = tryConvertToTdObject(json['articles']);
  }
}

@reflector
class PageBlockMap extends PageBlock {
  @override
  String get tdType => 'pageBlockMap';

  Location location;
  int zoom;
  int width;
  int height;
  PageBlockCaption caption;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'zoom': zoom,
    'width': width,
    'height': height,
    'caption': caption,
  };

  PageBlockMap({
    this.location,
    this.zoom,
    this.width,
    this.height,
    this.caption,
  });

  PageBlockMap.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    zoom = tryConvertToTdObject(json['zoom']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class WebPageInstantView extends TdObject {
  @override
  String get tdType => 'webPageInstantView';

  List<PageBlock> pageBlocks;
  int viewCount;
  int version;
  bool isRtl;
  bool isFull;
  InternalLinkType feedbackLink;

  @override
  Map<String, dynamic> get params => {
    'page_blocks': pageBlocks,
    'view_count': viewCount,
    'version': version,
    'is_rtl': isRtl,
    'is_full': isFull,
    'feedback_link': feedbackLink,
  };

  WebPageInstantView({
    this.pageBlocks,
    this.viewCount,
    this.version,
    this.isRtl,
    this.isFull,
    this.feedbackLink,
  });

  WebPageInstantView.fromJson(Map<String, dynamic> json) {
    pageBlocks = tryConvertToTdObject(json['page_blocks']);
    viewCount = tryConvertToTdObject(json['view_count']);
    version = tryConvertToTdObject(json['version']);
    isRtl = tryConvertToTdObject(json['is_rtl']);
    isFull = tryConvertToTdObject(json['is_full']);
    feedbackLink = tryConvertToTdObject(json['feedback_link']);
  }
}

@reflector
class WebPage extends TdObject {
  @override
  String get tdType => 'webPage';

  String url;
  String displayUrl;
  String type;
  String siteName;
  String title;
  FormattedText description;
  Photo photo;
  String embedUrl;
  String embedType;
  int embedWidth;
  int embedHeight;
  int duration;
  String author;
  Animation animation;
  Audio audio;
  Document document;
  Sticker sticker;
  Video video;
  VideoNote videoNote;
  VoiceNote voiceNote;
  int instantViewVersion;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'display_url': displayUrl,
    'type': type,
    'site_name': siteName,
    'title': title,
    'description': description,
    'photo': photo,
    'embed_url': embedUrl,
    'embed_type': embedType,
    'embed_width': embedWidth,
    'embed_height': embedHeight,
    'duration': duration,
    'author': author,
    'animation': animation,
    'audio': audio,
    'document': document,
    'sticker': sticker,
    'video': video,
    'video_note': videoNote,
    'voice_note': voiceNote,
    'instant_view_version': instantViewVersion,
  };

  WebPage({
    this.url,
    this.displayUrl,
    this.type,
    this.siteName,
    this.title,
    this.description,
    this.photo,
    this.embedUrl,
    this.embedType,
    this.embedWidth,
    this.embedHeight,
    this.duration,
    this.author,
    this.animation,
    this.audio,
    this.document,
    this.sticker,
    this.video,
    this.videoNote,
    this.voiceNote,
    this.instantViewVersion,
  });

  WebPage.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    displayUrl = tryConvertToTdObject(json['display_url']);
    type = tryConvertToTdObject(json['type']);
    siteName = tryConvertToTdObject(json['site_name']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    embedUrl = tryConvertToTdObject(json['embed_url']);
    embedType = tryConvertToTdObject(json['embed_type']);
    embedWidth = tryConvertToTdObject(json['embed_width']);
    embedHeight = tryConvertToTdObject(json['embed_height']);
    duration = tryConvertToTdObject(json['duration']);
    author = tryConvertToTdObject(json['author']);
    animation = tryConvertToTdObject(json['animation']);
    audio = tryConvertToTdObject(json['audio']);
    document = tryConvertToTdObject(json['document']);
    sticker = tryConvertToTdObject(json['sticker']);
    video = tryConvertToTdObject(json['video']);
    videoNote = tryConvertToTdObject(json['video_note']);
    voiceNote = tryConvertToTdObject(json['voice_note']);
    instantViewVersion = tryConvertToTdObject(json['instant_view_version']);
  }
}

@reflector
class CountryInfo extends TdObject {
  @override
  String get tdType => 'countryInfo';

  String countryCode;
  String name;
  String englishName;
  bool isHidden;
  List<String> callingCodes;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
    'name': name,
    'english_name': englishName,
    'is_hidden': isHidden,
    'calling_codes': callingCodes,
  };

  CountryInfo({
    this.countryCode,
    this.name,
    this.englishName,
    this.isHidden,
    this.callingCodes,
  });

  CountryInfo.fromJson(Map<String, dynamic> json) {
    countryCode = tryConvertToTdObject(json['country_code']);
    name = tryConvertToTdObject(json['name']);
    englishName = tryConvertToTdObject(json['english_name']);
    isHidden = tryConvertToTdObject(json['is_hidden']);
    callingCodes = tryConvertToTdObject(json['calling_codes']);
  }
}

@reflector
class Countries extends TdObject {
  @override
  String get tdType => 'countries';

  List<CountryInfo> countries;

  @override
  Map<String, dynamic> get params => {
    'countries': countries,
  };

  Countries({
    this.countries,
  });

  Countries.fromJson(Map<String, dynamic> json) {
    countries = tryConvertToTdObject(json['countries']);
  }
}

@reflector
class PhoneNumberInfo extends TdObject {
  @override
  String get tdType => 'phoneNumberInfo';

  CountryInfo country;
  String countryCallingCode;
  String formattedPhoneNumber;

  @override
  Map<String, dynamic> get params => {
    'country': country,
    'country_calling_code': countryCallingCode,
    'formatted_phone_number': formattedPhoneNumber,
  };

  PhoneNumberInfo({
    this.country,
    this.countryCallingCode,
    this.formattedPhoneNumber,
  });

  PhoneNumberInfo.fromJson(Map<String, dynamic> json) {
    country = tryConvertToTdObject(json['country']);
    countryCallingCode = tryConvertToTdObject(json['country_calling_code']);
    formattedPhoneNumber = tryConvertToTdObject(json['formatted_phone_number']);
  }
}

@reflector
class BankCardActionOpenUrl extends TdObject {
  @override
  String get tdType => 'bankCardActionOpenUrl';

  String text;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'url': url,
  };

  BankCardActionOpenUrl({
    this.text,
    this.url,
  });

  BankCardActionOpenUrl.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class BankCardInfo extends TdObject {
  @override
  String get tdType => 'bankCardInfo';

  String title;
  List<BankCardActionOpenUrl> actions;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'actions': actions,
  };

  BankCardInfo({
    this.title,
    this.actions,
  });

  BankCardInfo.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    actions = tryConvertToTdObject(json['actions']);
  }
}

@reflector
class Address extends TdObject {
  @override
  String get tdType => 'address';

  String countryCode;
  String state;
  String city;
  String streetLine1;
  String streetLine2;
  String postalCode;

  @override
  Map<String, dynamic> get params => {
    'country_code': countryCode,
    'state': state,
    'city': city,
    'street_line1': streetLine1,
    'street_line2': streetLine2,
    'postal_code': postalCode,
  };

  Address({
    this.countryCode,
    this.state,
    this.city,
    this.streetLine1,
    this.streetLine2,
    this.postalCode,
  });

  Address.fromJson(Map<String, dynamic> json) {
    countryCode = tryConvertToTdObject(json['country_code']);
    state = tryConvertToTdObject(json['state']);
    city = tryConvertToTdObject(json['city']);
    streetLine1 = tryConvertToTdObject(json['street_line1']);
    streetLine2 = tryConvertToTdObject(json['street_line2']);
    postalCode = tryConvertToTdObject(json['postal_code']);
  }
}

@reflector
class LabeledPricePart extends TdObject {
  @override
  String get tdType => 'labeledPricePart';

  String label;
  int amount;

  @override
  Map<String, dynamic> get params => {
    'label': label,
    'amount': amount,
  };

  LabeledPricePart({
    this.label,
    this.amount,
  });

  LabeledPricePart.fromJson(Map<String, dynamic> json) {
    label = tryConvertToTdObject(json['label']);
    amount = tryConvertToTdObject(json['amount']);
  }
}

@reflector
class Invoice extends TdObject {
  @override
  String get tdType => 'invoice';

  String currency;
  List<LabeledPricePart> priceParts;
  int maxTipAmount;
  List<int> suggestedTipAmounts;
  bool isTest;
  bool needName;
  bool needPhoneNumber;
  bool needEmailAddress;
  bool needShippingAddress;
  bool sendPhoneNumberToProvider;
  bool sendEmailAddressToProvider;
  bool isFlexible;

  @override
  Map<String, dynamic> get params => {
    'currency': currency,
    'price_parts': priceParts,
    'max_tip_amount': maxTipAmount,
    'suggested_tip_amounts': suggestedTipAmounts,
    'is_test': isTest,
    'need_name': needName,
    'need_phone_number': needPhoneNumber,
    'need_email_address': needEmailAddress,
    'need_shipping_address': needShippingAddress,
    'send_phone_number_to_provider': sendPhoneNumberToProvider,
    'send_email_address_to_provider': sendEmailAddressToProvider,
    'is_flexible': isFlexible,
  };

  Invoice({
    this.currency,
    this.priceParts,
    this.maxTipAmount,
    this.suggestedTipAmounts,
    this.isTest,
    this.needName,
    this.needPhoneNumber,
    this.needEmailAddress,
    this.needShippingAddress,
    this.sendPhoneNumberToProvider,
    this.sendEmailAddressToProvider,
    this.isFlexible,
  });

  Invoice.fromJson(Map<String, dynamic> json) {
    currency = tryConvertToTdObject(json['currency']);
    priceParts = tryConvertToTdObject(json['price_parts']);
    maxTipAmount = tryConvertToTdObject(json['max_tip_amount']);
    suggestedTipAmounts = tryConvertToTdObject(json['suggested_tip_amounts']);
    isTest = tryConvertToTdObject(json['is_test']);
    needName = tryConvertToTdObject(json['need_name']);
    needPhoneNumber = tryConvertToTdObject(json['need_phone_number']);
    needEmailAddress = tryConvertToTdObject(json['need_email_address']);
    needShippingAddress = tryConvertToTdObject(json['need_shipping_address']);
    sendPhoneNumberToProvider = tryConvertToTdObject(json['send_phone_number_to_provider']);
    sendEmailAddressToProvider = tryConvertToTdObject(json['send_email_address_to_provider']);
    isFlexible = tryConvertToTdObject(json['is_flexible']);
  }
}

@reflector
class OrderInfo extends TdObject {
  @override
  String get tdType => 'orderInfo';

  String name;
  String phoneNumber;
  String emailAddress;
  Address shippingAddress;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'phone_number': phoneNumber,
    'email_address': emailAddress,
    'shipping_address': shippingAddress,
  };

  OrderInfo({
    this.name,
    this.phoneNumber,
    this.emailAddress,
    this.shippingAddress,
  });

  OrderInfo.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
    emailAddress = tryConvertToTdObject(json['email_address']);
    shippingAddress = tryConvertToTdObject(json['shipping_address']);
  }
}

@reflector
class ShippingOption extends TdObject {
  @override
  String get tdType => 'shippingOption';

  String id;
  String title;
  List<LabeledPricePart> priceParts;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'price_parts': priceParts,
  };

  ShippingOption({
    this.id,
    this.title,
    this.priceParts,
  });

  ShippingOption.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    priceParts = tryConvertToTdObject(json['price_parts']);
  }
}

@reflector
class SavedCredentials extends TdObject {
  @override
  String get tdType => 'savedCredentials';

  String id;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
  };

  SavedCredentials({
    this.id,
    this.title,
  });

  SavedCredentials.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
  }
}

abstract class InputCredentials extends TdObject {}

@reflector
class InputCredentialsSaved extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsSaved';

  String savedCredentialsId;

  @override
  Map<String, dynamic> get params => {
    'saved_credentials_id': savedCredentialsId,
  };

  InputCredentialsSaved({
    this.savedCredentialsId,
  });

  InputCredentialsSaved.fromJson(Map<String, dynamic> json) {
    savedCredentialsId = tryConvertToTdObject(json['saved_credentials_id']);
  }
}

@reflector
class InputCredentialsNew extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsNew';

  String data;
  bool allowSave;

  @override
  Map<String, dynamic> get params => {
    'data': data,
    'allow_save': allowSave,
  };

  InputCredentialsNew({
    this.data,
    this.allowSave,
  });

  InputCredentialsNew.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
    allowSave = tryConvertToTdObject(json['allow_save']);
  }
}

@reflector
class InputCredentialsApplePay extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsApplePay';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InputCredentialsApplePay({
    this.data,
  });

  InputCredentialsApplePay.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class InputCredentialsGooglePay extends InputCredentials {
  @override
  String get tdType => 'inputCredentialsGooglePay';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  InputCredentialsGooglePay({
    this.data,
  });

  InputCredentialsGooglePay.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class PaymentsProviderStripe extends TdObject {
  @override
  String get tdType => 'paymentsProviderStripe';

  String publishableKey;
  bool needCountry;
  bool needPostalCode;
  bool needCardholderName;

  @override
  Map<String, dynamic> get params => {
    'publishable_key': publishableKey,
    'need_country': needCountry,
    'need_postal_code': needPostalCode,
    'need_cardholder_name': needCardholderName,
  };

  PaymentsProviderStripe({
    this.publishableKey,
    this.needCountry,
    this.needPostalCode,
    this.needCardholderName,
  });

  PaymentsProviderStripe.fromJson(Map<String, dynamic> json) {
    publishableKey = tryConvertToTdObject(json['publishable_key']);
    needCountry = tryConvertToTdObject(json['need_country']);
    needPostalCode = tryConvertToTdObject(json['need_postal_code']);
    needCardholderName = tryConvertToTdObject(json['need_cardholder_name']);
  }
}

@reflector
class PaymentFormTheme extends TdObject {
  @override
  String get tdType => 'paymentFormTheme';

  int backgroundColor;
  int textColor;
  int hintColor;
  int linkColor;
  int buttonColor;
  int buttonTextColor;

  @override
  Map<String, dynamic> get params => {
    'background_color': backgroundColor,
    'text_color': textColor,
    'hint_color': hintColor,
    'link_color': linkColor,
    'button_color': buttonColor,
    'button_text_color': buttonTextColor,
  };

  PaymentFormTheme({
    this.backgroundColor,
    this.textColor,
    this.hintColor,
    this.linkColor,
    this.buttonColor,
    this.buttonTextColor,
  });

  PaymentFormTheme.fromJson(Map<String, dynamic> json) {
    backgroundColor = tryConvertToTdObject(json['background_color']);
    textColor = tryConvertToTdObject(json['text_color']);
    hintColor = tryConvertToTdObject(json['hint_color']);
    linkColor = tryConvertToTdObject(json['link_color']);
    buttonColor = tryConvertToTdObject(json['button_color']);
    buttonTextColor = tryConvertToTdObject(json['button_text_color']);
  }
}

@reflector
class PaymentForm extends TdObject {
  @override
  String get tdType => 'paymentForm';

  int id;
  Invoice invoice;
  String url;
  int sellerBotUserId;
  int paymentsProviderUserId;
  PaymentsProviderStripe paymentsProvider;
  OrderInfo savedOrderInfo;
  SavedCredentials savedCredentials;
  bool canSaveCredentials;
  bool needPassword;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'invoice': invoice,
    'url': url,
    'seller_bot_user_id': sellerBotUserId,
    'payments_provider_user_id': paymentsProviderUserId,
    'payments_provider': paymentsProvider,
    'saved_order_info': savedOrderInfo,
    'saved_credentials': savedCredentials,
    'can_save_credentials': canSaveCredentials,
    'need_password': needPassword,
  };

  PaymentForm({
    this.id,
    this.invoice,
    this.url,
    this.sellerBotUserId,
    this.paymentsProviderUserId,
    this.paymentsProvider,
    this.savedOrderInfo,
    this.savedCredentials,
    this.canSaveCredentials,
    this.needPassword,
  });

  PaymentForm.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    invoice = tryConvertToTdObject(json['invoice']);
    url = tryConvertToTdObject(json['url']);
    sellerBotUserId = tryConvertToTdObject(json['seller_bot_user_id']);
    paymentsProviderUserId = tryConvertToTdObject(json['payments_provider_user_id']);
    paymentsProvider = tryConvertToTdObject(json['payments_provider']);
    savedOrderInfo = tryConvertToTdObject(json['saved_order_info']);
    savedCredentials = tryConvertToTdObject(json['saved_credentials']);
    canSaveCredentials = tryConvertToTdObject(json['can_save_credentials']);
    needPassword = tryConvertToTdObject(json['need_password']);
  }
}

@reflector
class ValidatedOrderInfo extends TdObject {
  @override
  String get tdType => 'validatedOrderInfo';

  String orderInfoId;
  List<ShippingOption> shippingOptions;

  @override
  Map<String, dynamic> get params => {
    'order_info_id': orderInfoId,
    'shipping_options': shippingOptions,
  };

  ValidatedOrderInfo({
    this.orderInfoId,
    this.shippingOptions,
  });

  ValidatedOrderInfo.fromJson(Map<String, dynamic> json) {
    orderInfoId = tryConvertToTdObject(json['order_info_id']);
    shippingOptions = tryConvertToTdObject(json['shipping_options']);
  }
}

@reflector
class PaymentResult extends TdObject {
  @override
  String get tdType => 'paymentResult';

  bool success;
  String verificationUrl;

  @override
  Map<String, dynamic> get params => {
    'success': success,
    'verification_url': verificationUrl,
  };

  PaymentResult({
    this.success,
    this.verificationUrl,
  });

  PaymentResult.fromJson(Map<String, dynamic> json) {
    success = tryConvertToTdObject(json['success']);
    verificationUrl = tryConvertToTdObject(json['verification_url']);
  }
}

@reflector
class PaymentReceipt extends TdObject {
  @override
  String get tdType => 'paymentReceipt';

  String title;
  String description;
  Photo photo;
  int date;
  int sellerBotUserId;
  int paymentsProviderUserId;
  Invoice invoice;
  OrderInfo orderInfo;
  ShippingOption shippingOption;
  String credentialsTitle;
  int tipAmount;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'description': description,
    'photo': photo,
    'date': date,
    'seller_bot_user_id': sellerBotUserId,
    'payments_provider_user_id': paymentsProviderUserId,
    'invoice': invoice,
    'order_info': orderInfo,
    'shipping_option': shippingOption,
    'credentials_title': credentialsTitle,
    'tip_amount': tipAmount,
  };

  PaymentReceipt({
    this.title,
    this.description,
    this.photo,
    this.date,
    this.sellerBotUserId,
    this.paymentsProviderUserId,
    this.invoice,
    this.orderInfo,
    this.shippingOption,
    this.credentialsTitle,
    this.tipAmount,
  });

  PaymentReceipt.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    date = tryConvertToTdObject(json['date']);
    sellerBotUserId = tryConvertToTdObject(json['seller_bot_user_id']);
    paymentsProviderUserId = tryConvertToTdObject(json['payments_provider_user_id']);
    invoice = tryConvertToTdObject(json['invoice']);
    orderInfo = tryConvertToTdObject(json['order_info']);
    shippingOption = tryConvertToTdObject(json['shipping_option']);
    credentialsTitle = tryConvertToTdObject(json['credentials_title']);
    tipAmount = tryConvertToTdObject(json['tip_amount']);
  }
}

@reflector
class DatedFile extends TdObject {
  @override
  String get tdType => 'datedFile';

  File file;
  int date;

  @override
  Map<String, dynamic> get params => {
    'file': file,
    'date': date,
  };

  DatedFile({
    this.file,
    this.date,
  });

  DatedFile.fromJson(Map<String, dynamic> json) {
    file = tryConvertToTdObject(json['file']);
    date = tryConvertToTdObject(json['date']);
  }
}

abstract class PassportElementType extends TdObject {}

@reflector
class PassportElementTypePersonalDetails extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePersonalDetails';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePersonalDetails();

  PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypePassport extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePassport';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePassport();

  PassportElementTypePassport.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeDriverLicense extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeDriverLicense';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeDriverLicense();

  PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeIdentityCard extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeIdentityCard';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeIdentityCard();

  PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeInternalPassport extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeInternalPassport';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeInternalPassport();

  PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeAddress extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeAddress';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeAddress();

  PassportElementTypeAddress.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeUtilityBill extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeUtilityBill';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeUtilityBill();

  PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeBankStatement extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeBankStatement';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeBankStatement();

  PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeRentalAgreement extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeRentalAgreement';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeRentalAgreement();

  PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypePassportRegistration extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePassportRegistration';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePassportRegistration();

  PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeTemporaryRegistration';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeTemporaryRegistration();

  PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypePhoneNumber extends PassportElementType {
  @override
  String get tdType => 'passportElementTypePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypePhoneNumber();

  PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementTypeEmailAddress extends PassportElementType {
  @override
  String get tdType => 'passportElementTypeEmailAddress';

  @override
  Map<String, dynamic> get params => {};

  PassportElementTypeEmailAddress();

  PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json);
}

@reflector
class Date extends TdObject {
  @override
  String get tdType => 'date';

  int day;
  int month;
  int year;

  @override
  Map<String, dynamic> get params => {
    'day': day,
    'month': month,
    'year': year,
  };

  Date({
    this.day,
    this.month,
    this.year,
  });

  Date.fromJson(Map<String, dynamic> json) {
    day = tryConvertToTdObject(json['day']);
    month = tryConvertToTdObject(json['month']);
    year = tryConvertToTdObject(json['year']);
  }
}

@reflector
class PersonalDetails extends TdObject {
  @override
  String get tdType => 'personalDetails';

  String firstName;
  String middleName;
  String lastName;
  String nativeFirstName;
  String nativeMiddleName;
  String nativeLastName;
  Date birthdate;
  String gender;
  String countryCode;
  String residenceCountryCode;

  @override
  Map<String, dynamic> get params => {
    'first_name': firstName,
    'middle_name': middleName,
    'last_name': lastName,
    'native_first_name': nativeFirstName,
    'native_middle_name': nativeMiddleName,
    'native_last_name': nativeLastName,
    'birthdate': birthdate,
    'gender': gender,
    'country_code': countryCode,
    'residence_country_code': residenceCountryCode,
  };

  PersonalDetails({
    this.firstName,
    this.middleName,
    this.lastName,
    this.nativeFirstName,
    this.nativeMiddleName,
    this.nativeLastName,
    this.birthdate,
    this.gender,
    this.countryCode,
    this.residenceCountryCode,
  });

  PersonalDetails.fromJson(Map<String, dynamic> json) {
    firstName = tryConvertToTdObject(json['first_name']);
    middleName = tryConvertToTdObject(json['middle_name']);
    lastName = tryConvertToTdObject(json['last_name']);
    nativeFirstName = tryConvertToTdObject(json['native_first_name']);
    nativeMiddleName = tryConvertToTdObject(json['native_middle_name']);
    nativeLastName = tryConvertToTdObject(json['native_last_name']);
    birthdate = tryConvertToTdObject(json['birthdate']);
    gender = tryConvertToTdObject(json['gender']);
    countryCode = tryConvertToTdObject(json['country_code']);
    residenceCountryCode = tryConvertToTdObject(json['residence_country_code']);
  }
}

@reflector
class IdentityDocument extends TdObject {
  @override
  String get tdType => 'identityDocument';

  String number;
  Date expiryDate;
  DatedFile frontSide;
  DatedFile reverseSide;
  DatedFile selfie;
  List<DatedFile> translation;

  @override
  Map<String, dynamic> get params => {
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  IdentityDocument({
    this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
  });

  IdentityDocument.fromJson(Map<String, dynamic> json) {
    number = tryConvertToTdObject(json['number']);
    expiryDate = tryConvertToTdObject(json['expiry_date']);
    frontSide = tryConvertToTdObject(json['front_side']);
    reverseSide = tryConvertToTdObject(json['reverse_side']);
    selfie = tryConvertToTdObject(json['selfie']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

@reflector
class InputIdentityDocument extends TdObject {
  @override
  String get tdType => 'inputIdentityDocument';

  String number;
  Date expiryDate;
  InputFile frontSide;
  InputFile reverseSide;
  InputFile selfie;
  List<InputFile> translation;

  @override
  Map<String, dynamic> get params => {
    'number': number,
    'expiry_date': expiryDate,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
  };

  InputIdentityDocument({
    this.number,
    this.expiryDate,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
  });

  InputIdentityDocument.fromJson(Map<String, dynamic> json) {
    number = tryConvertToTdObject(json['number']);
    expiryDate = tryConvertToTdObject(json['expiry_date']);
    frontSide = tryConvertToTdObject(json['front_side']);
    reverseSide = tryConvertToTdObject(json['reverse_side']);
    selfie = tryConvertToTdObject(json['selfie']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

@reflector
class PersonalDocument extends TdObject {
  @override
  String get tdType => 'personalDocument';

  List<DatedFile> files;
  List<DatedFile> translation;

  @override
  Map<String, dynamic> get params => {
    'files': files,
    'translation': translation,
  };

  PersonalDocument({
    this.files,
    this.translation,
  });

  PersonalDocument.fromJson(Map<String, dynamic> json) {
    files = tryConvertToTdObject(json['files']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

@reflector
class InputPersonalDocument extends TdObject {
  @override
  String get tdType => 'inputPersonalDocument';

  List<InputFile> files;
  List<InputFile> translation;

  @override
  Map<String, dynamic> get params => {
    'files': files,
    'translation': translation,
  };

  InputPersonalDocument({
    this.files,
    this.translation,
  });

  InputPersonalDocument.fromJson(Map<String, dynamic> json) {
    files = tryConvertToTdObject(json['files']);
    translation = tryConvertToTdObject(json['translation']);
  }
}

abstract class PassportElement extends TdObject {}

@reflector
class PassportElementPersonalDetails extends PassportElement {
  @override
  String get tdType => 'passportElementPersonalDetails';

  PersonalDetails personalDetails;

  @override
  Map<String, dynamic> get params => {
    'personal_details': personalDetails,
  };

  PassportElementPersonalDetails({
    this.personalDetails,
  });

  PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    personalDetails = tryConvertToTdObject(json['personal_details']);
  }
}

@reflector
class PassportElementPassport extends PassportElement {
  @override
  String get tdType => 'passportElementPassport';

  IdentityDocument passport;

  @override
  Map<String, dynamic> get params => {
    'passport': passport,
  };

  PassportElementPassport({
    this.passport,
  });

  PassportElementPassport.fromJson(Map<String, dynamic> json) {
    passport = tryConvertToTdObject(json['passport']);
  }
}

@reflector
class PassportElementDriverLicense extends PassportElement {
  @override
  String get tdType => 'passportElementDriverLicense';

  IdentityDocument driverLicense;

  @override
  Map<String, dynamic> get params => {
    'driver_license': driverLicense,
  };

  PassportElementDriverLicense({
    this.driverLicense,
  });

  PassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    driverLicense = tryConvertToTdObject(json['driver_license']);
  }
}

@reflector
class PassportElementIdentityCard extends PassportElement {
  @override
  String get tdType => 'passportElementIdentityCard';

  IdentityDocument identityCard;

  @override
  Map<String, dynamic> get params => {
    'identity_card': identityCard,
  };

  PassportElementIdentityCard({
    this.identityCard,
  });

  PassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    identityCard = tryConvertToTdObject(json['identity_card']);
  }
}

@reflector
class PassportElementInternalPassport extends PassportElement {
  @override
  String get tdType => 'passportElementInternalPassport';

  IdentityDocument internalPassport;

  @override
  Map<String, dynamic> get params => {
    'internal_passport': internalPassport,
  };

  PassportElementInternalPassport({
    this.internalPassport,
  });

  PassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    internalPassport = tryConvertToTdObject(json['internal_passport']);
  }
}

@reflector
class PassportElementAddress extends PassportElement {
  @override
  String get tdType => 'passportElementAddress';

  Address address;

  @override
  Map<String, dynamic> get params => {
    'address': address,
  };

  PassportElementAddress({
    this.address,
  });

  PassportElementAddress.fromJson(Map<String, dynamic> json) {
    address = tryConvertToTdObject(json['address']);
  }
}

@reflector
class PassportElementUtilityBill extends PassportElement {
  @override
  String get tdType => 'passportElementUtilityBill';

  PersonalDocument utilityBill;

  @override
  Map<String, dynamic> get params => {
    'utility_bill': utilityBill,
  };

  PassportElementUtilityBill({
    this.utilityBill,
  });

  PassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    utilityBill = tryConvertToTdObject(json['utility_bill']);
  }
}

@reflector
class PassportElementBankStatement extends PassportElement {
  @override
  String get tdType => 'passportElementBankStatement';

  PersonalDocument bankStatement;

  @override
  Map<String, dynamic> get params => {
    'bank_statement': bankStatement,
  };

  PassportElementBankStatement({
    this.bankStatement,
  });

  PassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    bankStatement = tryConvertToTdObject(json['bank_statement']);
  }
}

@reflector
class PassportElementRentalAgreement extends PassportElement {
  @override
  String get tdType => 'passportElementRentalAgreement';

  PersonalDocument rentalAgreement;

  @override
  Map<String, dynamic> get params => {
    'rental_agreement': rentalAgreement,
  };

  PassportElementRentalAgreement({
    this.rentalAgreement,
  });

  PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    rentalAgreement = tryConvertToTdObject(json['rental_agreement']);
  }
}

@reflector
class PassportElementPassportRegistration extends PassportElement {
  @override
  String get tdType => 'passportElementPassportRegistration';

  PersonalDocument passportRegistration;

  @override
  Map<String, dynamic> get params => {
    'passport_registration': passportRegistration,
  };

  PassportElementPassportRegistration({
    this.passportRegistration,
  });

  PassportElementPassportRegistration.fromJson(Map<String, dynamic> json) {
    passportRegistration = tryConvertToTdObject(json['passport_registration']);
  }
}

@reflector
class PassportElementTemporaryRegistration extends PassportElement {
  @override
  String get tdType => 'passportElementTemporaryRegistration';

  PersonalDocument temporaryRegistration;

  @override
  Map<String, dynamic> get params => {
    'temporary_registration': temporaryRegistration,
  };

  PassportElementTemporaryRegistration({
    this.temporaryRegistration,
  });

  PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) {
    temporaryRegistration = tryConvertToTdObject(json['temporary_registration']);
  }
}

@reflector
class PassportElementPhoneNumber extends PassportElement {
  @override
  String get tdType => 'passportElementPhoneNumber';

  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
  };

  PassportElementPhoneNumber({
    this.phoneNumber,
  });

  PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class PassportElementEmailAddress extends PassportElement {
  @override
  String get tdType => 'passportElementEmailAddress';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  PassportElementEmailAddress({
    this.emailAddress,
  });

  PassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

abstract class InputPassportElement extends TdObject {}

@reflector
class InputPassportElementPersonalDetails extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPersonalDetails';

  PersonalDetails personalDetails;

  @override
  Map<String, dynamic> get params => {
    'personal_details': personalDetails,
  };

  InputPassportElementPersonalDetails({
    this.personalDetails,
  });

  InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json) {
    personalDetails = tryConvertToTdObject(json['personal_details']);
  }
}

@reflector
class InputPassportElementPassport extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPassport';

  InputIdentityDocument passport;

  @override
  Map<String, dynamic> get params => {
    'passport': passport,
  };

  InputPassportElementPassport({
    this.passport,
  });

  InputPassportElementPassport.fromJson(Map<String, dynamic> json) {
    passport = tryConvertToTdObject(json['passport']);
  }
}

@reflector
class InputPassportElementDriverLicense extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementDriverLicense';

  InputIdentityDocument driverLicense;

  @override
  Map<String, dynamic> get params => {
    'driver_license': driverLicense,
  };

  InputPassportElementDriverLicense({
    this.driverLicense,
  });

  InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json) {
    driverLicense = tryConvertToTdObject(json['driver_license']);
  }
}

@reflector
class InputPassportElementIdentityCard extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementIdentityCard';

  InputIdentityDocument identityCard;

  @override
  Map<String, dynamic> get params => {
    'identity_card': identityCard,
  };

  InputPassportElementIdentityCard({
    this.identityCard,
  });

  InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json) {
    identityCard = tryConvertToTdObject(json['identity_card']);
  }
}

@reflector
class InputPassportElementInternalPassport extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementInternalPassport';

  InputIdentityDocument internalPassport;

  @override
  Map<String, dynamic> get params => {
    'internal_passport': internalPassport,
  };

  InputPassportElementInternalPassport({
    this.internalPassport,
  });

  InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json) {
    internalPassport = tryConvertToTdObject(json['internal_passport']);
  }
}

@reflector
class InputPassportElementAddress extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementAddress';

  Address address;

  @override
  Map<String, dynamic> get params => {
    'address': address,
  };

  InputPassportElementAddress({
    this.address,
  });

  InputPassportElementAddress.fromJson(Map<String, dynamic> json) {
    address = tryConvertToTdObject(json['address']);
  }
}

@reflector
class InputPassportElementUtilityBill extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementUtilityBill';

  InputPersonalDocument utilityBill;

  @override
  Map<String, dynamic> get params => {
    'utility_bill': utilityBill,
  };

  InputPassportElementUtilityBill({
    this.utilityBill,
  });

  InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json) {
    utilityBill = tryConvertToTdObject(json['utility_bill']);
  }
}

@reflector
class InputPassportElementBankStatement extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementBankStatement';

  InputPersonalDocument bankStatement;

  @override
  Map<String, dynamic> get params => {
    'bank_statement': bankStatement,
  };

  InputPassportElementBankStatement({
    this.bankStatement,
  });

  InputPassportElementBankStatement.fromJson(Map<String, dynamic> json) {
    bankStatement = tryConvertToTdObject(json['bank_statement']);
  }
}

@reflector
class InputPassportElementRentalAgreement extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementRentalAgreement';

  InputPersonalDocument rentalAgreement;

  @override
  Map<String, dynamic> get params => {
    'rental_agreement': rentalAgreement,
  };

  InputPassportElementRentalAgreement({
    this.rentalAgreement,
  });

  InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json) {
    rentalAgreement = tryConvertToTdObject(json['rental_agreement']);
  }
}

@reflector
class InputPassportElementPassportRegistration extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPassportRegistration';

  InputPersonalDocument passportRegistration;

  @override
  Map<String, dynamic> get params => {
    'passport_registration': passportRegistration,
  };

  InputPassportElementPassportRegistration({
    this.passportRegistration,
  });

  InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json) {
    passportRegistration = tryConvertToTdObject(json['passport_registration']);
  }
}

@reflector
class InputPassportElementTemporaryRegistration extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementTemporaryRegistration';

  InputPersonalDocument temporaryRegistration;

  @override
  Map<String, dynamic> get params => {
    'temporary_registration': temporaryRegistration,
  };

  InputPassportElementTemporaryRegistration({
    this.temporaryRegistration,
  });

  InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) {
    temporaryRegistration = tryConvertToTdObject(json['temporary_registration']);
  }
}

@reflector
class InputPassportElementPhoneNumber extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementPhoneNumber';

  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'phone_number': phoneNumber,
  };

  InputPassportElementPhoneNumber({
    this.phoneNumber,
  });

  InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json) {
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class InputPassportElementEmailAddress extends InputPassportElement {
  @override
  String get tdType => 'inputPassportElementEmailAddress';

  String emailAddress;

  @override
  Map<String, dynamic> get params => {
    'email_address': emailAddress,
  };

  InputPassportElementEmailAddress({
    this.emailAddress,
  });

  InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json) {
    emailAddress = tryConvertToTdObject(json['email_address']);
  }
}

@reflector
class PassportElements extends TdObject {
  @override
  String get tdType => 'passportElements';

  List<PassportElement> elements;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
  };

  PassportElements({
    this.elements,
  });

  PassportElements.fromJson(Map<String, dynamic> json) {
    elements = tryConvertToTdObject(json['elements']);
  }
}

abstract class PassportElementErrorSource extends TdObject {}

@reflector
class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceUnspecified';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceUnspecified();

  PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceDataField';

  String fieldName;

  @override
  Map<String, dynamic> get params => {
    'field_name': fieldName,
  };

  PassportElementErrorSourceDataField({
    this.fieldName,
  });

  PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) {
    fieldName = tryConvertToTdObject(json['field_name']);
  }
}

@reflector
class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFrontSide';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceFrontSide();

  PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceReverseSide';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceReverseSide();

  PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceSelfie';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceSelfie();

  PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceTranslationFile extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceTranslationFile';

  int fileIndex;

  @override
  Map<String, dynamic> get params => {
    'file_index': fileIndex,
  };

  PassportElementErrorSourceTranslationFile({
    this.fileIndex,
  });

  PassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) {
    fileIndex = tryConvertToTdObject(json['file_index']);
  }
}

@reflector
class PassportElementErrorSourceTranslationFiles extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceTranslationFiles';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceTranslationFiles();

  PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementErrorSourceFile extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFile';

  int fileIndex;

  @override
  Map<String, dynamic> get params => {
    'file_index': fileIndex,
  };

  PassportElementErrorSourceFile({
    this.fileIndex,
  });

  PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) {
    fileIndex = tryConvertToTdObject(json['file_index']);
  }
}

@reflector
class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  @override
  String get tdType => 'passportElementErrorSourceFiles';

  @override
  Map<String, dynamic> get params => {};

  PassportElementErrorSourceFiles();

  PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json);
}

@reflector
class PassportElementError extends TdObject {
  @override
  String get tdType => 'passportElementError';

  PassportElementType type;
  String message;
  PassportElementErrorSource source;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'message': message,
    'source': source,
  };

  PassportElementError({
    this.type,
    this.message,
    this.source,
  });

  PassportElementError.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    message = tryConvertToTdObject(json['message']);
    source = tryConvertToTdObject(json['source']);
  }
}

@reflector
class PassportSuitableElement extends TdObject {
  @override
  String get tdType => 'passportSuitableElement';

  PassportElementType type;
  bool isSelfieRequired;
  bool isTranslationRequired;
  bool isNativeNameRequired;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'is_selfie_required': isSelfieRequired,
    'is_translation_required': isTranslationRequired,
    'is_native_name_required': isNativeNameRequired,
  };

  PassportSuitableElement({
    this.type,
    this.isSelfieRequired,
    this.isTranslationRequired,
    this.isNativeNameRequired,
  });

  PassportSuitableElement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    isSelfieRequired = tryConvertToTdObject(json['is_selfie_required']);
    isTranslationRequired = tryConvertToTdObject(json['is_translation_required']);
    isNativeNameRequired = tryConvertToTdObject(json['is_native_name_required']);
  }
}

@reflector
class PassportRequiredElement extends TdObject {
  @override
  String get tdType => 'passportRequiredElement';

  List<PassportSuitableElement> suitableElements;

  @override
  Map<String, dynamic> get params => {
    'suitable_elements': suitableElements,
  };

  PassportRequiredElement({
    this.suitableElements,
  });

  PassportRequiredElement.fromJson(Map<String, dynamic> json) {
    suitableElements = tryConvertToTdObject(json['suitable_elements']);
  }
}

@reflector
class PassportAuthorizationForm extends TdObject {
  @override
  String get tdType => 'passportAuthorizationForm';

  int id;
  List<PassportRequiredElement> requiredElements;
  String privacyPolicyUrl;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'required_elements': requiredElements,
    'privacy_policy_url': privacyPolicyUrl,
  };

  PassportAuthorizationForm({
    this.id,
    this.requiredElements,
    this.privacyPolicyUrl,
  });

  PassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    requiredElements = tryConvertToTdObject(json['required_elements']);
    privacyPolicyUrl = tryConvertToTdObject(json['privacy_policy_url']);
  }
}

@reflector
class PassportElementsWithErrors extends TdObject {
  @override
  String get tdType => 'passportElementsWithErrors';

  List<PassportElement> elements;
  List<PassportElementError> errors;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
    'errors': errors,
  };

  PassportElementsWithErrors({
    this.elements,
    this.errors,
  });

  PassportElementsWithErrors.fromJson(Map<String, dynamic> json) {
    elements = tryConvertToTdObject(json['elements']);
    errors = tryConvertToTdObject(json['errors']);
  }
}

@reflector
class EncryptedCredentials extends TdObject {
  @override
  String get tdType => 'encryptedCredentials';

  String data;
  String hash;
  String secret;

  @override
  Map<String, dynamic> get params => {
    'data': data,
    'hash': hash,
    'secret': secret,
  };

  EncryptedCredentials({
    this.data,
    this.hash,
    this.secret,
  });

  EncryptedCredentials.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
    hash = tryConvertToTdObject(json['hash']);
    secret = tryConvertToTdObject(json['secret']);
  }
}

@reflector
class EncryptedPassportElement extends TdObject {
  @override
  String get tdType => 'encryptedPassportElement';

  PassportElementType type;
  String data;
  DatedFile frontSide;
  DatedFile reverseSide;
  DatedFile selfie;
  List<DatedFile> translation;
  List<DatedFile> files;
  String value;
  String hash;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'data': data,
    'front_side': frontSide,
    'reverse_side': reverseSide,
    'selfie': selfie,
    'translation': translation,
    'files': files,
    'value': value,
    'hash': hash,
  };

  EncryptedPassportElement({
    this.type,
    this.data,
    this.frontSide,
    this.reverseSide,
    this.selfie,
    this.translation,
    this.files,
    this.value,
    this.hash,
  });

  EncryptedPassportElement.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    data = tryConvertToTdObject(json['data']);
    frontSide = tryConvertToTdObject(json['front_side']);
    reverseSide = tryConvertToTdObject(json['reverse_side']);
    selfie = tryConvertToTdObject(json['selfie']);
    translation = tryConvertToTdObject(json['translation']);
    files = tryConvertToTdObject(json['files']);
    value = tryConvertToTdObject(json['value']);
    hash = tryConvertToTdObject(json['hash']);
  }
}

abstract class InputPassportElementErrorSource extends TdObject {}

@reflector
class InputPassportElementErrorSourceUnspecified extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceUnspecified';

  String elementHash;

  @override
  Map<String, dynamic> get params => {
    'element_hash': elementHash,
  };

  InputPassportElementErrorSourceUnspecified({
    this.elementHash,
  });

  InputPassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) {
    elementHash = tryConvertToTdObject(json['element_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceDataField extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceDataField';

  String fieldName;
  String dataHash;

  @override
  Map<String, dynamic> get params => {
    'field_name': fieldName,
    'data_hash': dataHash,
  };

  InputPassportElementErrorSourceDataField({
    this.fieldName,
    this.dataHash,
  });

  InputPassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) {
    fieldName = tryConvertToTdObject(json['field_name']);
    dataHash = tryConvertToTdObject(json['data_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceFrontSide extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFrontSide';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceFrontSide({
    this.fileHash,
  });

  InputPassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceReverseSide extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceReverseSide';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceReverseSide({
    this.fileHash,
  });

  InputPassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceSelfie extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceSelfie';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceSelfie({
    this.fileHash,
  });

  InputPassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceTranslationFile extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceTranslationFile';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceTranslationFile({
    this.fileHash,
  });

  InputPassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceTranslationFiles extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceTranslationFiles';

  List<String> fileHashes;

  @override
  Map<String, dynamic> get params => {
    'file_hashes': fileHashes,
  };

  InputPassportElementErrorSourceTranslationFiles({
    this.fileHashes,
  });

  InputPassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) {
    fileHashes = tryConvertToTdObject(json['file_hashes']);
  }
}

@reflector
class InputPassportElementErrorSourceFile extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFile';

  String fileHash;

  @override
  Map<String, dynamic> get params => {
    'file_hash': fileHash,
  };

  InputPassportElementErrorSourceFile({
    this.fileHash,
  });

  InputPassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) {
    fileHash = tryConvertToTdObject(json['file_hash']);
  }
}

@reflector
class InputPassportElementErrorSourceFiles extends InputPassportElementErrorSource {
  @override
  String get tdType => 'inputPassportElementErrorSourceFiles';

  List<String> fileHashes;

  @override
  Map<String, dynamic> get params => {
    'file_hashes': fileHashes,
  };

  InputPassportElementErrorSourceFiles({
    this.fileHashes,
  });

  InputPassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) {
    fileHashes = tryConvertToTdObject(json['file_hashes']);
  }
}

@reflector
class InputPassportElementError extends TdObject {
  @override
  String get tdType => 'inputPassportElementError';

  PassportElementType type;
  String message;
  InputPassportElementErrorSource source;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'message': message,
    'source': source,
  };

  InputPassportElementError({
    this.type,
    this.message,
    this.source,
  });

  InputPassportElementError.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    message = tryConvertToTdObject(json['message']);
    source = tryConvertToTdObject(json['source']);
  }
}

abstract class MessageContent extends TdObject {}

@reflector
class MessageText extends MessageContent {
  @override
  String get tdType => 'messageText';

  FormattedText text;
  WebPage webPage;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'web_page': webPage,
  };

  MessageText({
    this.text,
    this.webPage,
  });

  MessageText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    webPage = tryConvertToTdObject(json['web_page']);
  }
}

@reflector
class MessageAnimation extends MessageContent {
  @override
  String get tdType => 'messageAnimation';

  Animation animation;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessageAnimation({
    this.animation,
    this.caption,
    this.isSecret,
  });

  MessageAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageAudio extends MessageContent {
  @override
  String get tdType => 'messageAudio';

  Audio audio;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'caption': caption,
  };

  MessageAudio({
    this.audio,
    this.caption,
  });

  MessageAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class MessageDocument extends MessageContent {
  @override
  String get tdType => 'messageDocument';

  Document document;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'caption': caption,
  };

  MessageDocument({
    this.document,
    this.caption,
  });

  MessageDocument.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class MessagePhoto extends MessageContent {
  @override
  String get tdType => 'messagePhoto';

  Photo photo;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessagePhoto({
    this.photo,
    this.caption,
    this.isSecret,
  });

  MessagePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageExpiredPhoto extends MessageContent {
  @override
  String get tdType => 'messageExpiredPhoto';

  @override
  Map<String, dynamic> get params => {};

  MessageExpiredPhoto();

  MessageExpiredPhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageSticker extends MessageContent {
  @override
  String get tdType => 'messageSticker';

  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  MessageSticker({
    this.sticker,
  });

  MessageSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class MessageVideo extends MessageContent {
  @override
  String get tdType => 'messageVideo';

  Video video;
  FormattedText caption;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
  };

  MessageVideo({
    this.video,
    this.caption,
    this.isSecret,
  });

  MessageVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageExpiredVideo extends MessageContent {
  @override
  String get tdType => 'messageExpiredVideo';

  @override
  Map<String, dynamic> get params => {};

  MessageExpiredVideo();

  MessageExpiredVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageVideoNote extends MessageContent {
  @override
  String get tdType => 'messageVideoNote';

  VideoNote videoNote;
  bool isViewed;
  bool isSecret;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'is_viewed': isViewed,
    'is_secret': isSecret,
  };

  MessageVideoNote({
    this.videoNote,
    this.isViewed,
    this.isSecret,
  });

  MessageVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = tryConvertToTdObject(json['video_note']);
    isViewed = tryConvertToTdObject(json['is_viewed']);
    isSecret = tryConvertToTdObject(json['is_secret']);
  }
}

@reflector
class MessageVoiceNote extends MessageContent {
  @override
  String get tdType => 'messageVoiceNote';

  VoiceNote voiceNote;
  FormattedText caption;
  bool isListened;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'caption': caption,
    'is_listened': isListened,
  };

  MessageVoiceNote({
    this.voiceNote,
    this.caption,
    this.isListened,
  });

  MessageVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    caption = tryConvertToTdObject(json['caption']);
    isListened = tryConvertToTdObject(json['is_listened']);
  }
}

@reflector
class MessageLocation extends MessageContent {
  @override
  String get tdType => 'messageLocation';

  Location location;
  int livePeriod;
  int expiresIn;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'live_period': livePeriod,
    'expires_in': expiresIn,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  MessageLocation({
    this.location,
    this.livePeriod,
    this.expiresIn,
    this.heading,
    this.proximityAlertRadius,
  });

  MessageLocation.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    livePeriod = tryConvertToTdObject(json['live_period']);
    expiresIn = tryConvertToTdObject(json['expires_in']);
    heading = tryConvertToTdObject(json['heading']);
    proximityAlertRadius = tryConvertToTdObject(json['proximity_alert_radius']);
  }
}

@reflector
class MessageVenue extends MessageContent {
  @override
  String get tdType => 'messageVenue';

  Venue venue;

  @override
  Map<String, dynamic> get params => {
    'venue': venue,
  };

  MessageVenue({
    this.venue,
  });

  MessageVenue.fromJson(Map<String, dynamic> json) {
    venue = tryConvertToTdObject(json['venue']);
  }
}

@reflector
class MessageContact extends MessageContent {
  @override
  String get tdType => 'messageContact';

  Contact contact;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
  };

  MessageContact({
    this.contact,
  });

  MessageContact.fromJson(Map<String, dynamic> json) {
    contact = tryConvertToTdObject(json['contact']);
  }
}

@reflector
class MessageDice extends MessageContent {
  @override
  String get tdType => 'messageDice';

  DiceStickers initialState;
  DiceStickers finalState;
  String emoji;
  int value;
  int successAnimationFrameNumber;

  @override
  Map<String, dynamic> get params => {
    'initial_state': initialState,
    'final_state': finalState,
    'emoji': emoji,
    'value': value,
    'success_animation_frame_number': successAnimationFrameNumber,
  };

  MessageDice({
    this.initialState,
    this.finalState,
    this.emoji,
    this.value,
    this.successAnimationFrameNumber,
  });

  MessageDice.fromJson(Map<String, dynamic> json) {
    initialState = tryConvertToTdObject(json['initial_state']);
    finalState = tryConvertToTdObject(json['final_state']);
    emoji = tryConvertToTdObject(json['emoji']);
    value = tryConvertToTdObject(json['value']);
    successAnimationFrameNumber = tryConvertToTdObject(json['success_animation_frame_number']);
  }
}

@reflector
class MessageGame extends MessageContent {
  @override
  String get tdType => 'messageGame';

  Game game;

  @override
  Map<String, dynamic> get params => {
    'game': game,
  };

  MessageGame({
    this.game,
  });

  MessageGame.fromJson(Map<String, dynamic> json) {
    game = tryConvertToTdObject(json['game']);
  }
}

@reflector
class MessagePoll extends MessageContent {
  @override
  String get tdType => 'messagePoll';

  Poll poll;

  @override
  Map<String, dynamic> get params => {
    'poll': poll,
  };

  MessagePoll({
    this.poll,
  });

  MessagePoll.fromJson(Map<String, dynamic> json) {
    poll = tryConvertToTdObject(json['poll']);
  }
}

@reflector
class MessageInvoice extends MessageContent {
  @override
  String get tdType => 'messageInvoice';

  String title;
  String description;
  Photo photo;
  String currency;
  int totalAmount;
  String startParameter;
  bool isTest;
  bool needShippingAddress;
  int receiptMessageId;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'description': description,
    'photo': photo,
    'currency': currency,
    'total_amount': totalAmount,
    'start_parameter': startParameter,
    'is_test': isTest,
    'need_shipping_address': needShippingAddress,
    'receipt_message_id': receiptMessageId,
  };

  MessageInvoice({
    this.title,
    this.description,
    this.photo,
    this.currency,
    this.totalAmount,
    this.startParameter,
    this.isTest,
    this.needShippingAddress,
    this.receiptMessageId,
  });

  MessageInvoice.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photo = tryConvertToTdObject(json['photo']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
    startParameter = tryConvertToTdObject(json['start_parameter']);
    isTest = tryConvertToTdObject(json['is_test']);
    needShippingAddress = tryConvertToTdObject(json['need_shipping_address']);
    receiptMessageId = tryConvertToTdObject(json['receipt_message_id']);
  }
}

@reflector
class MessageCall extends MessageContent {
  @override
  String get tdType => 'messageCall';

  bool isVideo;
  CallDiscardReason discardReason;
  int duration;

  @override
  Map<String, dynamic> get params => {
    'is_video': isVideo,
    'discard_reason': discardReason,
    'duration': duration,
  };

  MessageCall({
    this.isVideo,
    this.discardReason,
    this.duration,
  });

  MessageCall.fromJson(Map<String, dynamic> json) {
    isVideo = tryConvertToTdObject(json['is_video']);
    discardReason = tryConvertToTdObject(json['discard_reason']);
    duration = tryConvertToTdObject(json['duration']);
  }
}

@reflector
class MessageVoiceChatScheduled extends MessageContent {
  @override
  String get tdType => 'messageVoiceChatScheduled';

  int groupCallId;
  int startDate;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'start_date': startDate,
  };

  MessageVoiceChatScheduled({
    this.groupCallId,
    this.startDate,
  });

  MessageVoiceChatScheduled.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    startDate = tryConvertToTdObject(json['start_date']);
  }
}

@reflector
class MessageVoiceChatStarted extends MessageContent {
  @override
  String get tdType => 'messageVoiceChatStarted';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  MessageVoiceChatStarted({
    this.groupCallId,
  });

  MessageVoiceChatStarted.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class MessageVoiceChatEnded extends MessageContent {
  @override
  String get tdType => 'messageVoiceChatEnded';

  int duration;

  @override
  Map<String, dynamic> get params => {
    'duration': duration,
  };

  MessageVoiceChatEnded({
    this.duration,
  });

  MessageVoiceChatEnded.fromJson(Map<String, dynamic> json) {
    duration = tryConvertToTdObject(json['duration']);
  }
}

@reflector
class MessageInviteVoiceChatParticipants extends MessageContent {
  @override
  String get tdType => 'messageInviteVoiceChatParticipants';

  int groupCallId;
  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'user_ids': userIds,
  };

  MessageInviteVoiceChatParticipants({
    this.groupCallId,
    this.userIds,
  });

  MessageInviteVoiceChatParticipants.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class MessageBasicGroupChatCreate extends MessageContent {
  @override
  String get tdType => 'messageBasicGroupChatCreate';

  String title;
  List<int> memberUserIds;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'member_user_ids': memberUserIds,
  };

  MessageBasicGroupChatCreate({
    this.title,
    this.memberUserIds,
  });

  MessageBasicGroupChatCreate.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    memberUserIds = tryConvertToTdObject(json['member_user_ids']);
  }
}

@reflector
class MessageSupergroupChatCreate extends MessageContent {
  @override
  String get tdType => 'messageSupergroupChatCreate';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageSupergroupChatCreate({
    this.title,
  });

  MessageSupergroupChatCreate.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class MessageChatChangeTitle extends MessageContent {
  @override
  String get tdType => 'messageChatChangeTitle';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageChatChangeTitle({
    this.title,
  });

  MessageChatChangeTitle.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class MessageChatChangePhoto extends MessageContent {
  @override
  String get tdType => 'messageChatChangePhoto';

  ChatPhoto photo;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
  };

  MessageChatChangePhoto({
    this.photo,
  });

  MessageChatChangePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class MessageChatDeletePhoto extends MessageContent {
  @override
  String get tdType => 'messageChatDeletePhoto';

  @override
  Map<String, dynamic> get params => {};

  MessageChatDeletePhoto();

  MessageChatDeletePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageChatAddMembers extends MessageContent {
  @override
  String get tdType => 'messageChatAddMembers';

  List<int> memberUserIds;

  @override
  Map<String, dynamic> get params => {
    'member_user_ids': memberUserIds,
  };

  MessageChatAddMembers({
    this.memberUserIds,
  });

  MessageChatAddMembers.fromJson(Map<String, dynamic> json) {
    memberUserIds = tryConvertToTdObject(json['member_user_ids']);
  }
}

@reflector
class MessageChatJoinByLink extends MessageContent {
  @override
  String get tdType => 'messageChatJoinByLink';

  @override
  Map<String, dynamic> get params => {};

  MessageChatJoinByLink();

  MessageChatJoinByLink.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageChatDeleteMember extends MessageContent {
  @override
  String get tdType => 'messageChatDeleteMember';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  MessageChatDeleteMember({
    this.userId,
  });

  MessageChatDeleteMember.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class MessageChatUpgradeTo extends MessageContent {
  @override
  String get tdType => 'messageChatUpgradeTo';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  MessageChatUpgradeTo({
    this.supergroupId,
  });

  MessageChatUpgradeTo.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class MessageChatUpgradeFrom extends MessageContent {
  @override
  String get tdType => 'messageChatUpgradeFrom';

  String title;
  int basicGroupId;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'basic_group_id': basicGroupId,
  };

  MessageChatUpgradeFrom({
    this.title,
    this.basicGroupId,
  });

  MessageChatUpgradeFrom.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
  }
}

@reflector
class MessagePinMessage extends MessageContent {
  @override
  String get tdType => 'messagePinMessage';

  int messageId;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
  };

  MessagePinMessage({
    this.messageId,
  });

  MessagePinMessage.fromJson(Map<String, dynamic> json) {
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class MessageScreenshotTaken extends MessageContent {
  @override
  String get tdType => 'messageScreenshotTaken';

  @override
  Map<String, dynamic> get params => {};

  MessageScreenshotTaken();

  MessageScreenshotTaken.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageChatSetTheme extends MessageContent {
  @override
  String get tdType => 'messageChatSetTheme';

  String themeName;

  @override
  Map<String, dynamic> get params => {
    'theme_name': themeName,
  };

  MessageChatSetTheme({
    this.themeName,
  });

  MessageChatSetTheme.fromJson(Map<String, dynamic> json) {
    themeName = tryConvertToTdObject(json['theme_name']);
  }
}

@reflector
class MessageChatSetTtl extends MessageContent {
  @override
  String get tdType => 'messageChatSetTtl';

  int ttl;

  @override
  Map<String, dynamic> get params => {
    'ttl': ttl,
  };

  MessageChatSetTtl({
    this.ttl,
  });

  MessageChatSetTtl.fromJson(Map<String, dynamic> json) {
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class MessageCustomServiceAction extends MessageContent {
  @override
  String get tdType => 'messageCustomServiceAction';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  MessageCustomServiceAction({
    this.text,
  });

  MessageCustomServiceAction.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class MessageGameScore extends MessageContent {
  @override
  String get tdType => 'messageGameScore';

  int gameMessageId;
  int gameId;
  int score;

  @override
  Map<String, dynamic> get params => {
    'game_message_id': gameMessageId,
    'game_id': gameId,
    'score': score,
  };

  MessageGameScore({
    this.gameMessageId,
    this.gameId,
    this.score,
  });

  MessageGameScore.fromJson(Map<String, dynamic> json) {
    gameMessageId = tryConvertToTdObject(json['game_message_id']);
    gameId = tryConvertToTdObject(json['game_id']);
    score = tryConvertToTdObject(json['score']);
  }
}

@reflector
class MessagePaymentSuccessful extends MessageContent {
  @override
  String get tdType => 'messagePaymentSuccessful';

  int invoiceChatId;
  int invoiceMessageId;
  String currency;
  int totalAmount;

  @override
  Map<String, dynamic> get params => {
    'invoice_chat_id': invoiceChatId,
    'invoice_message_id': invoiceMessageId,
    'currency': currency,
    'total_amount': totalAmount,
  };

  MessagePaymentSuccessful({
    this.invoiceChatId,
    this.invoiceMessageId,
    this.currency,
    this.totalAmount,
  });

  MessagePaymentSuccessful.fromJson(Map<String, dynamic> json) {
    invoiceChatId = tryConvertToTdObject(json['invoice_chat_id']);
    invoiceMessageId = tryConvertToTdObject(json['invoice_message_id']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
  }
}

@reflector
class MessagePaymentSuccessfulBot extends MessageContent {
  @override
  String get tdType => 'messagePaymentSuccessfulBot';

  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;
  String telegramPaymentChargeId;
  String providerPaymentChargeId;

  @override
  Map<String, dynamic> get params => {
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
    'telegram_payment_charge_id': telegramPaymentChargeId,
    'provider_payment_charge_id': providerPaymentChargeId,
  };

  MessagePaymentSuccessfulBot({
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
    this.telegramPaymentChargeId,
    this.providerPaymentChargeId,
  });

  MessagePaymentSuccessfulBot.fromJson(Map<String, dynamic> json) {
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
    invoicePayload = tryConvertToTdObject(json['invoice_payload']);
    shippingOptionId = tryConvertToTdObject(json['shipping_option_id']);
    orderInfo = tryConvertToTdObject(json['order_info']);
    telegramPaymentChargeId = tryConvertToTdObject(json['telegram_payment_charge_id']);
    providerPaymentChargeId = tryConvertToTdObject(json['provider_payment_charge_id']);
  }
}

@reflector
class MessageContactRegistered extends MessageContent {
  @override
  String get tdType => 'messageContactRegistered';

  @override
  Map<String, dynamic> get params => {};

  MessageContactRegistered();

  MessageContactRegistered.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageWebsiteConnected extends MessageContent {
  @override
  String get tdType => 'messageWebsiteConnected';

  String domainName;

  @override
  Map<String, dynamic> get params => {
    'domain_name': domainName,
  };

  MessageWebsiteConnected({
    this.domainName,
  });

  MessageWebsiteConnected.fromJson(Map<String, dynamic> json) {
    domainName = tryConvertToTdObject(json['domain_name']);
  }
}

@reflector
class MessagePassportDataSent extends MessageContent {
  @override
  String get tdType => 'messagePassportDataSent';

  List<PassportElementType> types;

  @override
  Map<String, dynamic> get params => {
    'types': types,
  };

  MessagePassportDataSent({
    this.types,
  });

  MessagePassportDataSent.fromJson(Map<String, dynamic> json) {
    types = tryConvertToTdObject(json['types']);
  }
}

@reflector
class MessagePassportDataReceived extends MessageContent {
  @override
  String get tdType => 'messagePassportDataReceived';

  List<EncryptedPassportElement> elements;
  EncryptedCredentials credentials;

  @override
  Map<String, dynamic> get params => {
    'elements': elements,
    'credentials': credentials,
  };

  MessagePassportDataReceived({
    this.elements,
    this.credentials,
  });

  MessagePassportDataReceived.fromJson(Map<String, dynamic> json) {
    elements = tryConvertToTdObject(json['elements']);
    credentials = tryConvertToTdObject(json['credentials']);
  }
}

@reflector
class MessageProximityAlertTriggered extends MessageContent {
  @override
  String get tdType => 'messageProximityAlertTriggered';

  MessageSender traveler;
  MessageSender watcher;
  int distance;

  @override
  Map<String, dynamic> get params => {
    'traveler': traveler,
    'watcher': watcher,
    'distance': distance,
  };

  MessageProximityAlertTriggered({
    this.traveler,
    this.watcher,
    this.distance,
  });

  MessageProximityAlertTriggered.fromJson(Map<String, dynamic> json) {
    traveler = tryConvertToTdObject(json['traveler']);
    watcher = tryConvertToTdObject(json['watcher']);
    distance = tryConvertToTdObject(json['distance']);
  }
}

@reflector
class MessageUnsupported extends MessageContent {
  @override
  String get tdType => 'messageUnsupported';

  @override
  Map<String, dynamic> get params => {};

  MessageUnsupported();

  MessageUnsupported.fromJson(Map<String, dynamic> json);
}

abstract class TextEntityType extends TdObject {}

@reflector
class TextEntityTypeMention extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMention';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeMention();

  TextEntityTypeMention.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeHashtag extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeHashtag';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeHashtag();

  TextEntityTypeHashtag.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeCashtag extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeCashtag';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeCashtag();

  TextEntityTypeCashtag.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeBotCommand extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBotCommand';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBotCommand();

  TextEntityTypeBotCommand.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeUrl extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeUrl';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeUrl();

  TextEntityTypeUrl.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeEmailAddress extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeEmailAddress';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeEmailAddress();

  TextEntityTypeEmailAddress.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypePhoneNumber extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypePhoneNumber();

  TextEntityTypePhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeBankCardNumber extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBankCardNumber';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBankCardNumber();

  TextEntityTypeBankCardNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeBold extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeBold';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeBold();

  TextEntityTypeBold.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeItalic extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeItalic';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeItalic();

  TextEntityTypeItalic.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeUnderline extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeUnderline';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeUnderline();

  TextEntityTypeUnderline.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeStrikethrough extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeStrikethrough';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeStrikethrough();

  TextEntityTypeStrikethrough.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypeCode extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeCode';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypeCode();

  TextEntityTypeCode.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypePre extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePre';

  @override
  Map<String, dynamic> get params => {};

  TextEntityTypePre();

  TextEntityTypePre.fromJson(Map<String, dynamic> json);
}

@reflector
class TextEntityTypePreCode extends TextEntityType {
  @override
  String get tdType => 'textEntityTypePreCode';

  String language;

  @override
  Map<String, dynamic> get params => {
    'language': language,
  };

  TextEntityTypePreCode({
    this.language,
  });

  TextEntityTypePreCode.fromJson(Map<String, dynamic> json) {
    language = tryConvertToTdObject(json['language']);
  }
}

@reflector
class TextEntityTypeTextUrl extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeTextUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  TextEntityTypeTextUrl({
    this.url,
  });

  TextEntityTypeTextUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class TextEntityTypeMentionName extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMentionName';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  TextEntityTypeMentionName({
    this.userId,
  });

  TextEntityTypeMentionName.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class TextEntityTypeMediaTimestamp extends TextEntityType {
  @override
  String get tdType => 'textEntityTypeMediaTimestamp';

  int mediaTimestamp;

  @override
  Map<String, dynamic> get params => {
    'media_timestamp': mediaTimestamp,
  };

  TextEntityTypeMediaTimestamp({
    this.mediaTimestamp,
  });

  TextEntityTypeMediaTimestamp.fromJson(Map<String, dynamic> json) {
    mediaTimestamp = tryConvertToTdObject(json['media_timestamp']);
  }
}

@reflector
class InputThumbnail extends TdObject {
  @override
  String get tdType => 'inputThumbnail';

  InputFile thumbnail;
  int width;
  int height;

  @override
  Map<String, dynamic> get params => {
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
  };

  InputThumbnail({
    this.thumbnail,
    this.width,
    this.height,
  });

  InputThumbnail.fromJson(Map<String, dynamic> json) {
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
  }
}

abstract class MessageSchedulingState extends TdObject {}

@reflector
class MessageSchedulingStateSendAtDate extends MessageSchedulingState {
  @override
  String get tdType => 'messageSchedulingStateSendAtDate';

  int sendDate;

  @override
  Map<String, dynamic> get params => {
    'send_date': sendDate,
  };

  MessageSchedulingStateSendAtDate({
    this.sendDate,
  });

  MessageSchedulingStateSendAtDate.fromJson(Map<String, dynamic> json) {
    sendDate = tryConvertToTdObject(json['send_date']);
  }
}

@reflector
class MessageSchedulingStateSendWhenOnline extends MessageSchedulingState {
  @override
  String get tdType => 'messageSchedulingStateSendWhenOnline';

  @override
  Map<String, dynamic> get params => {};

  MessageSchedulingStateSendWhenOnline();

  MessageSchedulingStateSendWhenOnline.fromJson(Map<String, dynamic> json);
}

@reflector
class MessageSendOptions extends TdObject {
  @override
  String get tdType => 'messageSendOptions';

  bool disableNotification;
  bool fromBackground;
  MessageSchedulingState schedulingState;

  @override
  Map<String, dynamic> get params => {
    'disable_notification': disableNotification,
    'from_background': fromBackground,
    'scheduling_state': schedulingState,
  };

  MessageSendOptions({
    this.disableNotification,
    this.fromBackground,
    this.schedulingState,
  });

  MessageSendOptions.fromJson(Map<String, dynamic> json) {
    disableNotification = tryConvertToTdObject(json['disable_notification']);
    fromBackground = tryConvertToTdObject(json['from_background']);
    schedulingState = tryConvertToTdObject(json['scheduling_state']);
  }
}

@reflector
class MessageCopyOptions extends TdObject {
  @override
  String get tdType => 'messageCopyOptions';

  bool sendCopy;
  bool replaceCaption;
  FormattedText newCaption;

  @override
  Map<String, dynamic> get params => {
    'send_copy': sendCopy,
    'replace_caption': replaceCaption,
    'new_caption': newCaption,
  };

  MessageCopyOptions({
    this.sendCopy,
    this.replaceCaption,
    this.newCaption,
  });

  MessageCopyOptions.fromJson(Map<String, dynamic> json) {
    sendCopy = tryConvertToTdObject(json['send_copy']);
    replaceCaption = tryConvertToTdObject(json['replace_caption']);
    newCaption = tryConvertToTdObject(json['new_caption']);
  }
}

abstract class InputMessageContent extends TdObject {}

@reflector
class InputMessageText extends InputMessageContent {
  @override
  String get tdType => 'inputMessageText';

  FormattedText text;
  bool disableWebPagePreview;
  bool clearDraft;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'disable_web_page_preview': disableWebPagePreview,
    'clear_draft': clearDraft,
  };

  InputMessageText({
    this.text,
    this.disableWebPagePreview,
    this.clearDraft,
  });

  InputMessageText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    disableWebPagePreview = tryConvertToTdObject(json['disable_web_page_preview']);
    clearDraft = tryConvertToTdObject(json['clear_draft']);
  }
}

@reflector
class InputMessageAnimation extends InputMessageContent {
  @override
  String get tdType => 'inputMessageAnimation';

  InputFile animation;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'caption': caption,
  };

  InputMessageAnimation({
    this.animation,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.caption,
  });

  InputMessageAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    addedStickerFileIds = tryConvertToTdObject(json['added_sticker_file_ids']);
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessageAudio extends InputMessageContent {
  @override
  String get tdType => 'inputMessageAudio';

  InputFile audio;
  InputThumbnail albumCoverThumbnail;
  int duration;
  String title;
  String performer;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'album_cover_thumbnail': albumCoverThumbnail,
    'duration': duration,
    'title': title,
    'performer': performer,
    'caption': caption,
  };

  InputMessageAudio({
    this.audio,
    this.albumCoverThumbnail,
    this.duration,
    this.title,
    this.performer,
    this.caption,
  });

  InputMessageAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    albumCoverThumbnail = tryConvertToTdObject(json['album_cover_thumbnail']);
    duration = tryConvertToTdObject(json['duration']);
    title = tryConvertToTdObject(json['title']);
    performer = tryConvertToTdObject(json['performer']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessageDocument extends InputMessageContent {
  @override
  String get tdType => 'inputMessageDocument';

  InputFile document;
  InputThumbnail thumbnail;
  bool disableContentTypeDetection;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'thumbnail': thumbnail,
    'disable_content_type_detection': disableContentTypeDetection,
    'caption': caption,
  };

  InputMessageDocument({
    this.document,
    this.thumbnail,
    this.disableContentTypeDetection,
    this.caption,
  });

  InputMessageDocument.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    disableContentTypeDetection = tryConvertToTdObject(json['disable_content_type_detection']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessagePhoto extends InputMessageContent {
  @override
  String get tdType => 'inputMessagePhoto';

  InputFile photo;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int width;
  int height;
  FormattedText caption;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'width': width,
    'height': height,
    'caption': caption,
    'ttl': ttl,
  };

  InputMessagePhoto({
    this.photo,
    this.thumbnail,
    this.addedStickerFileIds,
    this.width,
    this.height,
    this.caption,
    this.ttl,
  });

  InputMessagePhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    addedStickerFileIds = tryConvertToTdObject(json['added_sticker_file_ids']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    caption = tryConvertToTdObject(json['caption']);
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class InputMessageSticker extends InputMessageContent {
  @override
  String get tdType => 'inputMessageSticker';

  InputFile sticker;
  InputThumbnail thumbnail;
  int width;
  int height;
  String emoji;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'thumbnail': thumbnail,
    'width': width,
    'height': height,
    'emoji': emoji,
  };

  InputMessageSticker({
    this.sticker,
    this.thumbnail,
    this.width,
    this.height,
    this.emoji,
  });

  InputMessageSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    emoji = tryConvertToTdObject(json['emoji']);
  }
}

@reflector
class InputMessageVideo extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVideo';

  InputFile video;
  InputThumbnail thumbnail;
  List<int> addedStickerFileIds;
  int duration;
  int width;
  int height;
  bool supportsStreaming;
  FormattedText caption;
  int ttl;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'thumbnail': thumbnail,
    'added_sticker_file_ids': addedStickerFileIds,
    'duration': duration,
    'width': width,
    'height': height,
    'supports_streaming': supportsStreaming,
    'caption': caption,
    'ttl': ttl,
  };

  InputMessageVideo({
    this.video,
    this.thumbnail,
    this.addedStickerFileIds,
    this.duration,
    this.width,
    this.height,
    this.supportsStreaming,
    this.caption,
    this.ttl,
  });

  InputMessageVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    addedStickerFileIds = tryConvertToTdObject(json['added_sticker_file_ids']);
    duration = tryConvertToTdObject(json['duration']);
    width = tryConvertToTdObject(json['width']);
    height = tryConvertToTdObject(json['height']);
    supportsStreaming = tryConvertToTdObject(json['supports_streaming']);
    caption = tryConvertToTdObject(json['caption']);
    ttl = tryConvertToTdObject(json['ttl']);
  }
}

@reflector
class InputMessageVideoNote extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVideoNote';

  InputFile videoNote;
  InputThumbnail thumbnail;
  int duration;
  int length;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'thumbnail': thumbnail,
    'duration': duration,
    'length': length,
  };

  InputMessageVideoNote({
    this.videoNote,
    this.thumbnail,
    this.duration,
    this.length,
  });

  InputMessageVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = tryConvertToTdObject(json['video_note']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    duration = tryConvertToTdObject(json['duration']);
    length = tryConvertToTdObject(json['length']);
  }
}

@reflector
class InputMessageVoiceNote extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVoiceNote';

  InputFile voiceNote;
  int duration;
  String waveform;
  FormattedText caption;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'duration': duration,
    'waveform': waveform,
    'caption': caption,
  };

  InputMessageVoiceNote({
    this.voiceNote,
    this.duration,
    this.waveform,
    this.caption,
  });

  InputMessageVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    duration = tryConvertToTdObject(json['duration']);
    waveform = tryConvertToTdObject(json['waveform']);
    caption = tryConvertToTdObject(json['caption']);
  }
}

@reflector
class InputMessageLocation extends InputMessageContent {
  @override
  String get tdType => 'inputMessageLocation';

  Location location;
  int livePeriod;
  int heading;
  int proximityAlertRadius;

  @override
  Map<String, dynamic> get params => {
    'location': location,
    'live_period': livePeriod,
    'heading': heading,
    'proximity_alert_radius': proximityAlertRadius,
  };

  InputMessageLocation({
    this.location,
    this.livePeriod,
    this.heading,
    this.proximityAlertRadius,
  });

  InputMessageLocation.fromJson(Map<String, dynamic> json) {
    location = tryConvertToTdObject(json['location']);
    livePeriod = tryConvertToTdObject(json['live_period']);
    heading = tryConvertToTdObject(json['heading']);
    proximityAlertRadius = tryConvertToTdObject(json['proximity_alert_radius']);
  }
}

@reflector
class InputMessageVenue extends InputMessageContent {
  @override
  String get tdType => 'inputMessageVenue';

  Venue venue;

  @override
  Map<String, dynamic> get params => {
    'venue': venue,
  };

  InputMessageVenue({
    this.venue,
  });

  InputMessageVenue.fromJson(Map<String, dynamic> json) {
    venue = tryConvertToTdObject(json['venue']);
  }
}

@reflector
class InputMessageContact extends InputMessageContent {
  @override
  String get tdType => 'inputMessageContact';

  Contact contact;

  @override
  Map<String, dynamic> get params => {
    'contact': contact,
  };

  InputMessageContact({
    this.contact,
  });

  InputMessageContact.fromJson(Map<String, dynamic> json) {
    contact = tryConvertToTdObject(json['contact']);
  }
}

@reflector
class InputMessageDice extends InputMessageContent {
  @override
  String get tdType => 'inputMessageDice';

  String emoji;
  bool clearDraft;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
    'clear_draft': clearDraft,
  };

  InputMessageDice({
    this.emoji,
    this.clearDraft,
  });

  InputMessageDice.fromJson(Map<String, dynamic> json) {
    emoji = tryConvertToTdObject(json['emoji']);
    clearDraft = tryConvertToTdObject(json['clear_draft']);
  }
}

@reflector
class InputMessageGame extends InputMessageContent {
  @override
  String get tdType => 'inputMessageGame';

  int botUserId;
  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'game_short_name': gameShortName,
  };

  InputMessageGame({
    this.botUserId,
    this.gameShortName,
  });

  InputMessageGame.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    gameShortName = tryConvertToTdObject(json['game_short_name']);
  }
}

@reflector
class InputMessageInvoice extends InputMessageContent {
  @override
  String get tdType => 'inputMessageInvoice';

  Invoice invoice;
  String title;
  String description;
  String photoUrl;
  int photoSize;
  int photoWidth;
  int photoHeight;
  String payload;
  String providerToken;
  String providerData;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'invoice': invoice,
    'title': title,
    'description': description,
    'photo_url': photoUrl,
    'photo_size': photoSize,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'payload': payload,
    'provider_token': providerToken,
    'provider_data': providerData,
    'start_parameter': startParameter,
  };

  InputMessageInvoice({
    this.invoice,
    this.title,
    this.description,
    this.photoUrl,
    this.photoSize,
    this.photoWidth,
    this.photoHeight,
    this.payload,
    this.providerToken,
    this.providerData,
    this.startParameter,
  });

  InputMessageInvoice.fromJson(Map<String, dynamic> json) {
    invoice = tryConvertToTdObject(json['invoice']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    photoUrl = tryConvertToTdObject(json['photo_url']);
    photoSize = tryConvertToTdObject(json['photo_size']);
    photoWidth = tryConvertToTdObject(json['photo_width']);
    photoHeight = tryConvertToTdObject(json['photo_height']);
    payload = tryConvertToTdObject(json['payload']);
    providerToken = tryConvertToTdObject(json['provider_token']);
    providerData = tryConvertToTdObject(json['provider_data']);
    startParameter = tryConvertToTdObject(json['start_parameter']);
  }
}

@reflector
class InputMessagePoll extends InputMessageContent {
  @override
  String get tdType => 'inputMessagePoll';

  String question;
  List<String> options;
  bool isAnonymous;
  PollType type;
  int openPeriod;
  int closeDate;
  bool isClosed;

  @override
  Map<String, dynamic> get params => {
    'question': question,
    'options': options,
    'is_anonymous': isAnonymous,
    'type': type,
    'open_period': openPeriod,
    'close_date': closeDate,
    'is_closed': isClosed,
  };

  InputMessagePoll({
    this.question,
    this.options,
    this.isAnonymous,
    this.type,
    this.openPeriod,
    this.closeDate,
    this.isClosed,
  });

  InputMessagePoll.fromJson(Map<String, dynamic> json) {
    question = tryConvertToTdObject(json['question']);
    options = tryConvertToTdObject(json['options']);
    isAnonymous = tryConvertToTdObject(json['is_anonymous']);
    type = tryConvertToTdObject(json['type']);
    openPeriod = tryConvertToTdObject(json['open_period']);
    closeDate = tryConvertToTdObject(json['close_date']);
    isClosed = tryConvertToTdObject(json['is_closed']);
  }
}

@reflector
class InputMessageForwarded extends InputMessageContent {
  @override
  String get tdType => 'inputMessageForwarded';

  int fromChatId;
  int messageId;
  bool inGameShare;
  MessageCopyOptions copyOptions;

  @override
  Map<String, dynamic> get params => {
    'from_chat_id': fromChatId,
    'message_id': messageId,
    'in_game_share': inGameShare,
    'copy_options': copyOptions,
  };

  InputMessageForwarded({
    this.fromChatId,
    this.messageId,
    this.inGameShare,
    this.copyOptions,
  });

  InputMessageForwarded.fromJson(Map<String, dynamic> json) {
    fromChatId = tryConvertToTdObject(json['from_chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    inGameShare = tryConvertToTdObject(json['in_game_share']);
    copyOptions = tryConvertToTdObject(json['copy_options']);
  }
}

abstract class SearchMessagesFilter extends TdObject {}

@reflector
class SearchMessagesFilterEmpty extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterEmpty';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterEmpty();

  SearchMessagesFilterEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterAnimation extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterAnimation';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterAnimation();

  SearchMessagesFilterAnimation.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterAudio extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterAudio';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterAudio();

  SearchMessagesFilterAudio.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterDocument extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterDocument';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterDocument();

  SearchMessagesFilterDocument.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterPhoto extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPhoto';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPhoto();

  SearchMessagesFilterPhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVideo extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVideo';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVideo();

  SearchMessagesFilterVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVoiceNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVoiceNote();

  SearchMessagesFilterVoiceNote.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterPhotoAndVideo extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPhotoAndVideo';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPhotoAndVideo();

  SearchMessagesFilterPhotoAndVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterUrl extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterUrl';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterUrl();

  SearchMessagesFilterUrl.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterChatPhoto extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterChatPhoto';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterChatPhoto();

  SearchMessagesFilterChatPhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterCall extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterCall';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterCall();

  SearchMessagesFilterCall.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterMissedCall extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterMissedCall';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterMissedCall();

  SearchMessagesFilterMissedCall.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVideoNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVideoNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVideoNote();

  SearchMessagesFilterVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterVoiceAndVideoNote extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterVoiceAndVideoNote';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterVoiceAndVideoNote();

  SearchMessagesFilterVoiceAndVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterMention extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterMention';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterMention();

  SearchMessagesFilterMention.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterUnreadMention extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterUnreadMention';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterUnreadMention();

  SearchMessagesFilterUnreadMention.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterFailedToSend extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterFailedToSend';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterFailedToSend();

  SearchMessagesFilterFailedToSend.fromJson(Map<String, dynamic> json);
}

@reflector
class SearchMessagesFilterPinned extends SearchMessagesFilter {
  @override
  String get tdType => 'searchMessagesFilterPinned';

  @override
  Map<String, dynamic> get params => {};

  SearchMessagesFilterPinned();

  SearchMessagesFilterPinned.fromJson(Map<String, dynamic> json);
}

abstract class ChatAction extends TdObject {}

@reflector
class ChatActionTyping extends ChatAction {
  @override
  String get tdType => 'chatActionTyping';

  @override
  Map<String, dynamic> get params => {};

  ChatActionTyping();

  ChatActionTyping.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionRecordingVideo extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVideo';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVideo();

  ChatActionRecordingVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionUploadingVideo extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVideo';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVideo({
    this.progress,
  });

  ChatActionUploadingVideo.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionRecordingVoiceNote extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVoiceNote();

  ChatActionRecordingVoiceNote.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionUploadingVoiceNote extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVoiceNote';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVoiceNote({
    this.progress,
  });

  ChatActionUploadingVoiceNote.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionUploadingPhoto extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingPhoto';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingPhoto({
    this.progress,
  });

  ChatActionUploadingPhoto.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionUploadingDocument extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingDocument';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingDocument({
    this.progress,
  });

  ChatActionUploadingDocument.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionChoosingSticker extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingSticker';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingSticker();

  ChatActionChoosingSticker.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionChoosingLocation extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingLocation();

  ChatActionChoosingLocation.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionChoosingContact extends ChatAction {
  @override
  String get tdType => 'chatActionChoosingContact';

  @override
  Map<String, dynamic> get params => {};

  ChatActionChoosingContact();

  ChatActionChoosingContact.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionStartPlayingGame extends ChatAction {
  @override
  String get tdType => 'chatActionStartPlayingGame';

  @override
  Map<String, dynamic> get params => {};

  ChatActionStartPlayingGame();

  ChatActionStartPlayingGame.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionRecordingVideoNote extends ChatAction {
  @override
  String get tdType => 'chatActionRecordingVideoNote';

  @override
  Map<String, dynamic> get params => {};

  ChatActionRecordingVideoNote();

  ChatActionRecordingVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatActionUploadingVideoNote extends ChatAction {
  @override
  String get tdType => 'chatActionUploadingVideoNote';

  int progress;

  @override
  Map<String, dynamic> get params => {
    'progress': progress,
  };

  ChatActionUploadingVideoNote({
    this.progress,
  });

  ChatActionUploadingVideoNote.fromJson(Map<String, dynamic> json) {
    progress = tryConvertToTdObject(json['progress']);
  }
}

@reflector
class ChatActionWatchingAnimations extends ChatAction {
  @override
  String get tdType => 'chatActionWatchingAnimations';

  String emoji;

  @override
  Map<String, dynamic> get params => {
    'emoji': emoji,
  };

  ChatActionWatchingAnimations({
    this.emoji,
  });

  ChatActionWatchingAnimations.fromJson(Map<String, dynamic> json) {
    emoji = tryConvertToTdObject(json['emoji']);
  }
}

@reflector
class ChatActionCancel extends ChatAction {
  @override
  String get tdType => 'chatActionCancel';

  @override
  Map<String, dynamic> get params => {};

  ChatActionCancel();

  ChatActionCancel.fromJson(Map<String, dynamic> json);
}

abstract class UserStatus extends TdObject {}

@reflector
class UserStatusEmpty extends UserStatus {
  @override
  String get tdType => 'userStatusEmpty';

  @override
  Map<String, dynamic> get params => {};

  UserStatusEmpty();

  UserStatusEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class UserStatusOnline extends UserStatus {
  @override
  String get tdType => 'userStatusOnline';

  int expires;

  @override
  Map<String, dynamic> get params => {
    'expires': expires,
  };

  UserStatusOnline({
    this.expires,
  });

  UserStatusOnline.fromJson(Map<String, dynamic> json) {
    expires = tryConvertToTdObject(json['expires']);
  }
}

@reflector
class UserStatusOffline extends UserStatus {
  @override
  String get tdType => 'userStatusOffline';

  int wasOnline;

  @override
  Map<String, dynamic> get params => {
    'was_online': wasOnline,
  };

  UserStatusOffline({
    this.wasOnline,
  });

  UserStatusOffline.fromJson(Map<String, dynamic> json) {
    wasOnline = tryConvertToTdObject(json['was_online']);
  }
}

@reflector
class UserStatusRecently extends UserStatus {
  @override
  String get tdType => 'userStatusRecently';

  @override
  Map<String, dynamic> get params => {};

  UserStatusRecently();

  UserStatusRecently.fromJson(Map<String, dynamic> json);
}

@reflector
class UserStatusLastWeek extends UserStatus {
  @override
  String get tdType => 'userStatusLastWeek';

  @override
  Map<String, dynamic> get params => {};

  UserStatusLastWeek();

  UserStatusLastWeek.fromJson(Map<String, dynamic> json);
}

@reflector
class UserStatusLastMonth extends UserStatus {
  @override
  String get tdType => 'userStatusLastMonth';

  @override
  Map<String, dynamic> get params => {};

  UserStatusLastMonth();

  UserStatusLastMonth.fromJson(Map<String, dynamic> json);
}

@reflector
class Stickers extends TdObject {
  @override
  String get tdType => 'stickers';

  List<Sticker> stickers;

  @override
  Map<String, dynamic> get params => {
    'stickers': stickers,
  };

  Stickers({
    this.stickers,
  });

  Stickers.fromJson(Map<String, dynamic> json) {
    stickers = tryConvertToTdObject(json['stickers']);
  }
}

@reflector
class Emojis extends TdObject {
  @override
  String get tdType => 'emojis';

  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'emojis': emojis,
  };

  Emojis({
    this.emojis,
  });

  Emojis.fromJson(Map<String, dynamic> json) {
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class StickerSet extends TdObject {
  @override
  String get tdType => 'stickerSet';

  int id;
  String title;
  String name;
  Thumbnail thumbnail;
  List<ClosedVectorPath> thumbnailOutline;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  List<Sticker> stickers;
  List<Emojis> emojis;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'thumbnail_outline': thumbnailOutline,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'stickers': stickers,
    'emojis': emojis,
  };

  StickerSet({
    this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.thumbnailOutline,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.stickers,
    this.emojis,
  });

  StickerSet.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    name = tryConvertToTdObject(json['name']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    thumbnailOutline = tryConvertToTdObject(json['thumbnail_outline']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    isArchived = tryConvertToTdObject(json['is_archived']);
    isOfficial = tryConvertToTdObject(json['is_official']);
    isAnimated = tryConvertToTdObject(json['is_animated']);
    isMasks = tryConvertToTdObject(json['is_masks']);
    isViewed = tryConvertToTdObject(json['is_viewed']);
    stickers = tryConvertToTdObject(json['stickers']);
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class StickerSetInfo extends TdObject {
  @override
  String get tdType => 'stickerSetInfo';

  int id;
  String title;
  String name;
  Thumbnail thumbnail;
  List<ClosedVectorPath> thumbnailOutline;
  bool isInstalled;
  bool isArchived;
  bool isOfficial;
  bool isAnimated;
  bool isMasks;
  bool isViewed;
  int size;
  List<Sticker> covers;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'name': name,
    'thumbnail': thumbnail,
    'thumbnail_outline': thumbnailOutline,
    'is_installed': isInstalled,
    'is_archived': isArchived,
    'is_official': isOfficial,
    'is_animated': isAnimated,
    'is_masks': isMasks,
    'is_viewed': isViewed,
    'size': size,
    'covers': covers,
  };

  StickerSetInfo({
    this.id,
    this.title,
    this.name,
    this.thumbnail,
    this.thumbnailOutline,
    this.isInstalled,
    this.isArchived,
    this.isOfficial,
    this.isAnimated,
    this.isMasks,
    this.isViewed,
    this.size,
    this.covers,
  });

  StickerSetInfo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    name = tryConvertToTdObject(json['name']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
    thumbnailOutline = tryConvertToTdObject(json['thumbnail_outline']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    isArchived = tryConvertToTdObject(json['is_archived']);
    isOfficial = tryConvertToTdObject(json['is_official']);
    isAnimated = tryConvertToTdObject(json['is_animated']);
    isMasks = tryConvertToTdObject(json['is_masks']);
    isViewed = tryConvertToTdObject(json['is_viewed']);
    size = tryConvertToTdObject(json['size']);
    covers = tryConvertToTdObject(json['covers']);
  }
}

@reflector
class StickerSets extends TdObject {
  @override
  String get tdType => 'stickerSets';

  int totalCount;
  List<StickerSetInfo> sets;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'sets': sets,
  };

  StickerSets({
    this.totalCount,
    this.sets,
  });

  StickerSets.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    sets = tryConvertToTdObject(json['sets']);
  }
}

abstract class CallDiscardReason extends TdObject {}

@reflector
class CallDiscardReasonEmpty extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonEmpty';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonEmpty();

  CallDiscardReasonEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonMissed extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonMissed';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonMissed();

  CallDiscardReasonMissed.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonDeclined extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonDeclined';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonDeclined();

  CallDiscardReasonDeclined.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonDisconnected extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonDisconnected';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonDisconnected();

  CallDiscardReasonDisconnected.fromJson(Map<String, dynamic> json);
}

@reflector
class CallDiscardReasonHungUp extends CallDiscardReason {
  @override
  String get tdType => 'callDiscardReasonHungUp';

  @override
  Map<String, dynamic> get params => {};

  CallDiscardReasonHungUp();

  CallDiscardReasonHungUp.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProtocol extends TdObject {
  @override
  String get tdType => 'callProtocol';

  bool udpP2p;
  bool udpReflector;
  int minLayer;
  int maxLayer;
  List<String> libraryVersions;

  @override
  Map<String, dynamic> get params => {
    'udp_p2p': udpP2p,
    'udp_reflector': udpReflector,
    'min_layer': minLayer,
    'max_layer': maxLayer,
    'library_versions': libraryVersions,
  };

  CallProtocol({
    this.udpP2p,
    this.udpReflector,
    this.minLayer,
    this.maxLayer,
    this.libraryVersions,
  });

  CallProtocol.fromJson(Map<String, dynamic> json) {
    udpP2p = tryConvertToTdObject(json['udp_p2p']);
    udpReflector = tryConvertToTdObject(json['udp_reflector']);
    minLayer = tryConvertToTdObject(json['min_layer']);
    maxLayer = tryConvertToTdObject(json['max_layer']);
    libraryVersions = tryConvertToTdObject(json['library_versions']);
  }
}

abstract class CallServerType extends TdObject {}

@reflector
class CallServerTypeTelegramReflector extends CallServerType {
  @override
  String get tdType => 'callServerTypeTelegramReflector';

  String peerTag;

  @override
  Map<String, dynamic> get params => {
    'peer_tag': peerTag,
  };

  CallServerTypeTelegramReflector({
    this.peerTag,
  });

  CallServerTypeTelegramReflector.fromJson(Map<String, dynamic> json) {
    peerTag = tryConvertToTdObject(json['peer_tag']);
  }
}

@reflector
class CallServerTypeWebrtc extends CallServerType {
  @override
  String get tdType => 'callServerTypeWebrtc';

  String username;
  String password;
  bool supportsTurn;
  bool supportsStun;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
    'supports_turn': supportsTurn,
    'supports_stun': supportsStun,
  };

  CallServerTypeWebrtc({
    this.username,
    this.password,
    this.supportsTurn,
    this.supportsStun,
  });

  CallServerTypeWebrtc.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
    password = tryConvertToTdObject(json['password']);
    supportsTurn = tryConvertToTdObject(json['supports_turn']);
    supportsStun = tryConvertToTdObject(json['supports_stun']);
  }
}

@reflector
class CallServer extends TdObject {
  @override
  String get tdType => 'callServer';

  int id;
  String ipAddress;
  String ipv6Address;
  int port;
  CallServerType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'ip_address': ipAddress,
    'ipv6_address': ipv6Address,
    'port': port,
    'type': type,
  };

  CallServer({
    this.id,
    this.ipAddress,
    this.ipv6Address,
    this.port,
    this.type,
  });

  CallServer.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    ipAddress = tryConvertToTdObject(json['ip_address']);
    ipv6Address = tryConvertToTdObject(json['ipv6_address']);
    port = tryConvertToTdObject(json['port']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class CallId extends TdObject {
  @override
  String get tdType => 'callId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  CallId({
    this.id,
  });

  CallId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

@reflector
class GroupCallId extends TdObject {
  @override
  String get tdType => 'groupCallId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  GroupCallId({
    this.id,
  });

  GroupCallId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

abstract class CallState extends TdObject {}

@reflector
class CallStatePending extends CallState {
  @override
  String get tdType => 'callStatePending';

  bool isCreated;
  bool isReceived;

  @override
  Map<String, dynamic> get params => {
    'is_created': isCreated,
    'is_received': isReceived,
  };

  CallStatePending({
    this.isCreated,
    this.isReceived,
  });

  CallStatePending.fromJson(Map<String, dynamic> json) {
    isCreated = tryConvertToTdObject(json['is_created']);
    isReceived = tryConvertToTdObject(json['is_received']);
  }
}

@reflector
class CallStateExchangingKeys extends CallState {
  @override
  String get tdType => 'callStateExchangingKeys';

  @override
  Map<String, dynamic> get params => {};

  CallStateExchangingKeys();

  CallStateExchangingKeys.fromJson(Map<String, dynamic> json);
}

@reflector
class CallStateReady extends CallState {
  @override
  String get tdType => 'callStateReady';

  CallProtocol protocol;
  List<CallServer> servers;
  String config;
  String encryptionKey;
  List<String> emojis;
  bool allowP2p;

  @override
  Map<String, dynamic> get params => {
    'protocol': protocol,
    'servers': servers,
    'config': config,
    'encryption_key': encryptionKey,
    'emojis': emojis,
    'allow_p2p': allowP2p,
  };

  CallStateReady({
    this.protocol,
    this.servers,
    this.config,
    this.encryptionKey,
    this.emojis,
    this.allowP2p,
  });

  CallStateReady.fromJson(Map<String, dynamic> json) {
    protocol = tryConvertToTdObject(json['protocol']);
    servers = tryConvertToTdObject(json['servers']);
    config = tryConvertToTdObject(json['config']);
    encryptionKey = tryConvertToTdObject(json['encryption_key']);
    emojis = tryConvertToTdObject(json['emojis']);
    allowP2p = tryConvertToTdObject(json['allow_p2p']);
  }
}

@reflector
class CallStateHangingUp extends CallState {
  @override
  String get tdType => 'callStateHangingUp';

  @override
  Map<String, dynamic> get params => {};

  CallStateHangingUp();

  CallStateHangingUp.fromJson(Map<String, dynamic> json);
}

@reflector
class CallStateDiscarded extends CallState {
  @override
  String get tdType => 'callStateDiscarded';

  CallDiscardReason reason;
  bool needRating;
  bool needDebugInformation;

  @override
  Map<String, dynamic> get params => {
    'reason': reason,
    'need_rating': needRating,
    'need_debug_information': needDebugInformation,
  };

  CallStateDiscarded({
    this.reason,
    this.needRating,
    this.needDebugInformation,
  });

  CallStateDiscarded.fromJson(Map<String, dynamic> json) {
    reason = tryConvertToTdObject(json['reason']);
    needRating = tryConvertToTdObject(json['need_rating']);
    needDebugInformation = tryConvertToTdObject(json['need_debug_information']);
  }
}

@reflector
class CallStateError extends CallState {
  @override
  String get tdType => 'callStateError';

  Error error;

  @override
  Map<String, dynamic> get params => {
    'error': error,
  };

  CallStateError({
    this.error,
  });

  CallStateError.fromJson(Map<String, dynamic> json) {
    error = tryConvertToTdObject(json['error']);
  }
}

abstract class GroupCallVideoQuality extends TdObject {}

@reflector
class GroupCallVideoQualityThumbnail extends GroupCallVideoQuality {
  @override
  String get tdType => 'groupCallVideoQualityThumbnail';

  @override
  Map<String, dynamic> get params => {};

  GroupCallVideoQualityThumbnail();

  GroupCallVideoQualityThumbnail.fromJson(Map<String, dynamic> json);
}

@reflector
class GroupCallVideoQualityMedium extends GroupCallVideoQuality {
  @override
  String get tdType => 'groupCallVideoQualityMedium';

  @override
  Map<String, dynamic> get params => {};

  GroupCallVideoQualityMedium();

  GroupCallVideoQualityMedium.fromJson(Map<String, dynamic> json);
}

@reflector
class GroupCallVideoQualityFull extends GroupCallVideoQuality {
  @override
  String get tdType => 'groupCallVideoQualityFull';

  @override
  Map<String, dynamic> get params => {};

  GroupCallVideoQualityFull();

  GroupCallVideoQualityFull.fromJson(Map<String, dynamic> json);
}

@reflector
class GroupCallRecentSpeaker extends TdObject {
  @override
  String get tdType => 'groupCallRecentSpeaker';

  MessageSender participantId;
  bool isSpeaking;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'is_speaking': isSpeaking,
  };

  GroupCallRecentSpeaker({
    this.participantId,
    this.isSpeaking,
  });

  GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) {
    participantId = tryConvertToTdObject(json['participant_id']);
    isSpeaking = tryConvertToTdObject(json['is_speaking']);
  }
}

@reflector
class GroupCall extends TdObject {
  @override
  String get tdType => 'groupCall';

  int id;
  String title;
  int scheduledStartDate;
  bool enabledStartNotification;
  bool isActive;
  bool isJoined;
  bool needRejoin;
  bool canBeManaged;
  int participantCount;
  bool loadedAllParticipants;
  List<GroupCallRecentSpeaker> recentSpeakers;
  bool isMyVideoEnabled;
  bool isMyVideoPaused;
  bool canEnableVideo;
  bool muteNewParticipants;
  bool canToggleMuteNewParticipants;
  int recordDuration;
  bool isVideoRecorded;
  int duration;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'scheduled_start_date': scheduledStartDate,
    'enabled_start_notification': enabledStartNotification,
    'is_active': isActive,
    'is_joined': isJoined,
    'need_rejoin': needRejoin,
    'can_be_managed': canBeManaged,
    'participant_count': participantCount,
    'loaded_all_participants': loadedAllParticipants,
    'recent_speakers': recentSpeakers,
    'is_my_video_enabled': isMyVideoEnabled,
    'is_my_video_paused': isMyVideoPaused,
    'can_enable_video': canEnableVideo,
    'mute_new_participants': muteNewParticipants,
    'can_toggle_mute_new_participants': canToggleMuteNewParticipants,
    'record_duration': recordDuration,
    'is_video_recorded': isVideoRecorded,
    'duration': duration,
  };

  GroupCall({
    this.id,
    this.title,
    this.scheduledStartDate,
    this.enabledStartNotification,
    this.isActive,
    this.isJoined,
    this.needRejoin,
    this.canBeManaged,
    this.participantCount,
    this.loadedAllParticipants,
    this.recentSpeakers,
    this.isMyVideoEnabled,
    this.isMyVideoPaused,
    this.canEnableVideo,
    this.muteNewParticipants,
    this.canToggleMuteNewParticipants,
    this.recordDuration,
    this.isVideoRecorded,
    this.duration,
  });

  GroupCall.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    scheduledStartDate = tryConvertToTdObject(json['scheduled_start_date']);
    enabledStartNotification = tryConvertToTdObject(json['enabled_start_notification']);
    isActive = tryConvertToTdObject(json['is_active']);
    isJoined = tryConvertToTdObject(json['is_joined']);
    needRejoin = tryConvertToTdObject(json['need_rejoin']);
    canBeManaged = tryConvertToTdObject(json['can_be_managed']);
    participantCount = tryConvertToTdObject(json['participant_count']);
    loadedAllParticipants = tryConvertToTdObject(json['loaded_all_participants']);
    recentSpeakers = tryConvertToTdObject(json['recent_speakers']);
    isMyVideoEnabled = tryConvertToTdObject(json['is_my_video_enabled']);
    isMyVideoPaused = tryConvertToTdObject(json['is_my_video_paused']);
    canEnableVideo = tryConvertToTdObject(json['can_enable_video']);
    muteNewParticipants = tryConvertToTdObject(json['mute_new_participants']);
    canToggleMuteNewParticipants = tryConvertToTdObject(json['can_toggle_mute_new_participants']);
    recordDuration = tryConvertToTdObject(json['record_duration']);
    isVideoRecorded = tryConvertToTdObject(json['is_video_recorded']);
    duration = tryConvertToTdObject(json['duration']);
  }
}

@reflector
class GroupCallVideoSourceGroup extends TdObject {
  @override
  String get tdType => 'groupCallVideoSourceGroup';

  String semantics;
  List<int> sourceIds;

  @override
  Map<String, dynamic> get params => {
    'semantics': semantics,
    'source_ids': sourceIds,
  };

  GroupCallVideoSourceGroup({
    this.semantics,
    this.sourceIds,
  });

  GroupCallVideoSourceGroup.fromJson(Map<String, dynamic> json) {
    semantics = tryConvertToTdObject(json['semantics']);
    sourceIds = tryConvertToTdObject(json['source_ids']);
  }
}

@reflector
class GroupCallParticipantVideoInfo extends TdObject {
  @override
  String get tdType => 'groupCallParticipantVideoInfo';

  List<GroupCallVideoSourceGroup> sourceGroups;
  String endpointId;
  bool isPaused;

  @override
  Map<String, dynamic> get params => {
    'source_groups': sourceGroups,
    'endpoint_id': endpointId,
    'is_paused': isPaused,
  };

  GroupCallParticipantVideoInfo({
    this.sourceGroups,
    this.endpointId,
    this.isPaused,
  });

  GroupCallParticipantVideoInfo.fromJson(Map<String, dynamic> json) {
    sourceGroups = tryConvertToTdObject(json['source_groups']);
    endpointId = tryConvertToTdObject(json['endpoint_id']);
    isPaused = tryConvertToTdObject(json['is_paused']);
  }
}

@reflector
class GroupCallParticipant extends TdObject {
  @override
  String get tdType => 'groupCallParticipant';

  MessageSender participantId;
  int audioSourceId;
  int screenSharingAudioSourceId;
  GroupCallParticipantVideoInfo videoInfo;
  GroupCallParticipantVideoInfo screenSharingVideoInfo;
  String bio;
  bool isCurrentUser;
  bool isSpeaking;
  bool isHandRaised;
  bool canBeMutedForAllUsers;
  bool canBeUnmutedForAllUsers;
  bool canBeMutedForCurrentUser;
  bool canBeUnmutedForCurrentUser;
  bool isMutedForAllUsers;
  bool isMutedForCurrentUser;
  bool canUnmuteSelf;
  int volumeLevel;
  String order;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'audio_source_id': audioSourceId,
    'screen_sharing_audio_source_id': screenSharingAudioSourceId,
    'video_info': videoInfo,
    'screen_sharing_video_info': screenSharingVideoInfo,
    'bio': bio,
    'is_current_user': isCurrentUser,
    'is_speaking': isSpeaking,
    'is_hand_raised': isHandRaised,
    'can_be_muted_for_all_users': canBeMutedForAllUsers,
    'can_be_unmuted_for_all_users': canBeUnmutedForAllUsers,
    'can_be_muted_for_current_user': canBeMutedForCurrentUser,
    'can_be_unmuted_for_current_user': canBeUnmutedForCurrentUser,
    'is_muted_for_all_users': isMutedForAllUsers,
    'is_muted_for_current_user': isMutedForCurrentUser,
    'can_unmute_self': canUnmuteSelf,
    'volume_level': volumeLevel,
    'order': order,
  };

  GroupCallParticipant({
    this.participantId,
    this.audioSourceId,
    this.screenSharingAudioSourceId,
    this.videoInfo,
    this.screenSharingVideoInfo,
    this.bio,
    this.isCurrentUser,
    this.isSpeaking,
    this.isHandRaised,
    this.canBeMutedForAllUsers,
    this.canBeUnmutedForAllUsers,
    this.canBeMutedForCurrentUser,
    this.canBeUnmutedForCurrentUser,
    this.isMutedForAllUsers,
    this.isMutedForCurrentUser,
    this.canUnmuteSelf,
    this.volumeLevel,
    this.order,
  });

  GroupCallParticipant.fromJson(Map<String, dynamic> json) {
    participantId = tryConvertToTdObject(json['participant_id']);
    audioSourceId = tryConvertToTdObject(json['audio_source_id']);
    screenSharingAudioSourceId = tryConvertToTdObject(json['screen_sharing_audio_source_id']);
    videoInfo = tryConvertToTdObject(json['video_info']);
    screenSharingVideoInfo = tryConvertToTdObject(json['screen_sharing_video_info']);
    bio = tryConvertToTdObject(json['bio']);
    isCurrentUser = tryConvertToTdObject(json['is_current_user']);
    isSpeaking = tryConvertToTdObject(json['is_speaking']);
    isHandRaised = tryConvertToTdObject(json['is_hand_raised']);
    canBeMutedForAllUsers = tryConvertToTdObject(json['can_be_muted_for_all_users']);
    canBeUnmutedForAllUsers = tryConvertToTdObject(json['can_be_unmuted_for_all_users']);
    canBeMutedForCurrentUser = tryConvertToTdObject(json['can_be_muted_for_current_user']);
    canBeUnmutedForCurrentUser = tryConvertToTdObject(json['can_be_unmuted_for_current_user']);
    isMutedForAllUsers = tryConvertToTdObject(json['is_muted_for_all_users']);
    isMutedForCurrentUser = tryConvertToTdObject(json['is_muted_for_current_user']);
    canUnmuteSelf = tryConvertToTdObject(json['can_unmute_self']);
    volumeLevel = tryConvertToTdObject(json['volume_level']);
    order = tryConvertToTdObject(json['order']);
  }
}

abstract class CallProblem extends TdObject {}

@reflector
class CallProblemEcho extends CallProblem {
  @override
  String get tdType => 'callProblemEcho';

  @override
  Map<String, dynamic> get params => {};

  CallProblemEcho();

  CallProblemEcho.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemNoise extends CallProblem {
  @override
  String get tdType => 'callProblemNoise';

  @override
  Map<String, dynamic> get params => {};

  CallProblemNoise();

  CallProblemNoise.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemInterruptions extends CallProblem {
  @override
  String get tdType => 'callProblemInterruptions';

  @override
  Map<String, dynamic> get params => {};

  CallProblemInterruptions();

  CallProblemInterruptions.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemDistortedSpeech extends CallProblem {
  @override
  String get tdType => 'callProblemDistortedSpeech';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDistortedSpeech();

  CallProblemDistortedSpeech.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemSilentLocal extends CallProblem {
  @override
  String get tdType => 'callProblemSilentLocal';

  @override
  Map<String, dynamic> get params => {};

  CallProblemSilentLocal();

  CallProblemSilentLocal.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemSilentRemote extends CallProblem {
  @override
  String get tdType => 'callProblemSilentRemote';

  @override
  Map<String, dynamic> get params => {};

  CallProblemSilentRemote();

  CallProblemSilentRemote.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemDropped extends CallProblem {
  @override
  String get tdType => 'callProblemDropped';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDropped();

  CallProblemDropped.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemDistortedVideo extends CallProblem {
  @override
  String get tdType => 'callProblemDistortedVideo';

  @override
  Map<String, dynamic> get params => {};

  CallProblemDistortedVideo();

  CallProblemDistortedVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class CallProblemPixelatedVideo extends CallProblem {
  @override
  String get tdType => 'callProblemPixelatedVideo';

  @override
  Map<String, dynamic> get params => {};

  CallProblemPixelatedVideo();

  CallProblemPixelatedVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class Call extends TdObject {
  @override
  String get tdType => 'call';

  int id;
  int userId;
  bool isOutgoing;
  bool isVideo;
  CallState state;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'user_id': userId,
    'is_outgoing': isOutgoing,
    'is_video': isVideo,
    'state': state,
  };

  Call({
    this.id,
    this.userId,
    this.isOutgoing,
    this.isVideo,
    this.state,
  });

  Call.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    userId = tryConvertToTdObject(json['user_id']);
    isOutgoing = tryConvertToTdObject(json['is_outgoing']);
    isVideo = tryConvertToTdObject(json['is_video']);
    state = tryConvertToTdObject(json['state']);
  }
}

@reflector
class PhoneNumberAuthenticationSettings extends TdObject {
  @override
  String get tdType => 'phoneNumberAuthenticationSettings';

  bool allowFlashCall;
  bool isCurrentPhoneNumber;
  bool allowSmsRetrieverApi;

  @override
  Map<String, dynamic> get params => {
    'allow_flash_call': allowFlashCall,
    'is_current_phone_number': isCurrentPhoneNumber,
    'allow_sms_retriever_api': allowSmsRetrieverApi,
  };

  PhoneNumberAuthenticationSettings({
    this.allowFlashCall,
    this.isCurrentPhoneNumber,
    this.allowSmsRetrieverApi,
  });

  PhoneNumberAuthenticationSettings.fromJson(Map<String, dynamic> json) {
    allowFlashCall = tryConvertToTdObject(json['allow_flash_call']);
    isCurrentPhoneNumber = tryConvertToTdObject(json['is_current_phone_number']);
    allowSmsRetrieverApi = tryConvertToTdObject(json['allow_sms_retriever_api']);
  }
}

@reflector
class Animations extends TdObject {
  @override
  String get tdType => 'animations';

  List<Animation> animations;

  @override
  Map<String, dynamic> get params => {
    'animations': animations,
  };

  Animations({
    this.animations,
  });

  Animations.fromJson(Map<String, dynamic> json) {
    animations = tryConvertToTdObject(json['animations']);
  }
}

abstract class DiceStickers extends TdObject {}

@reflector
class DiceStickersRegular extends DiceStickers {
  @override
  String get tdType => 'diceStickersRegular';

  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
  };

  DiceStickersRegular({
    this.sticker,
  });

  DiceStickersRegular.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class DiceStickersSlotMachine extends DiceStickers {
  @override
  String get tdType => 'diceStickersSlotMachine';

  Sticker background;
  Sticker lever;
  Sticker leftReel;
  Sticker centerReel;
  Sticker rightReel;

  @override
  Map<String, dynamic> get params => {
    'background': background,
    'lever': lever,
    'left_reel': leftReel,
    'center_reel': centerReel,
    'right_reel': rightReel,
  };

  DiceStickersSlotMachine({
    this.background,
    this.lever,
    this.leftReel,
    this.centerReel,
    this.rightReel,
  });

  DiceStickersSlotMachine.fromJson(Map<String, dynamic> json) {
    background = tryConvertToTdObject(json['background']);
    lever = tryConvertToTdObject(json['lever']);
    leftReel = tryConvertToTdObject(json['left_reel']);
    centerReel = tryConvertToTdObject(json['center_reel']);
    rightReel = tryConvertToTdObject(json['right_reel']);
  }
}

@reflector
class ImportedContacts extends TdObject {
  @override
  String get tdType => 'importedContacts';

  List<int> userIds;
  List<int> importerCount;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
    'importer_count': importerCount,
  };

  ImportedContacts({
    this.userIds,
    this.importerCount,
  });

  ImportedContacts.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
    importerCount = tryConvertToTdObject(json['importer_count']);
  }
}

@reflector
class HttpUrl extends TdObject {
  @override
  String get tdType => 'httpUrl';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  HttpUrl({
    this.url,
  });

  HttpUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

abstract class InputInlineQueryResult extends TdObject {}

@reflector
class InputInlineQueryResultAnimation extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAnimation';

  String id;
  String title;
  String thumbnailUrl;
  String thumbnailMimeType;
  String videoUrl;
  String videoMimeType;
  int videoDuration;
  int videoWidth;
  int videoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_mime_type': thumbnailMimeType,
    'video_url': videoUrl,
    'video_mime_type': videoMimeType,
    'video_duration': videoDuration,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAnimation({
    this.id,
    this.title,
    this.thumbnailUrl,
    this.thumbnailMimeType,
    this.videoUrl,
    this.videoMimeType,
    this.videoDuration,
    this.videoWidth,
    this.videoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultAnimation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailMimeType = tryConvertToTdObject(json['thumbnail_mime_type']);
    videoUrl = tryConvertToTdObject(json['video_url']);
    videoMimeType = tryConvertToTdObject(json['video_mime_type']);
    videoDuration = tryConvertToTdObject(json['video_duration']);
    videoWidth = tryConvertToTdObject(json['video_width']);
    videoHeight = tryConvertToTdObject(json['video_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultArticle extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultArticle';

  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultArticle({
    this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    url = tryConvertToTdObject(json['url']);
    hideUrl = tryConvertToTdObject(json['hide_url']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultAudio extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultAudio';

  String id;
  String title;
  String performer;
  String audioUrl;
  int audioDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'performer': performer,
    'audio_url': audioUrl,
    'audio_duration': audioDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultAudio({
    this.id,
    this.title,
    this.performer,
    this.audioUrl,
    this.audioDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    performer = tryConvertToTdObject(json['performer']);
    audioUrl = tryConvertToTdObject(json['audio_url']);
    audioDuration = tryConvertToTdObject(json['audio_duration']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultContact extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultContact';

  String id;
  Contact contact;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'contact': contact,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultContact({
    this.id,
    this.contact,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    contact = tryConvertToTdObject(json['contact']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultDocument extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultDocument';

  String id;
  String title;
  String description;
  String documentUrl;
  String mimeType;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'document_url': documentUrl,
    'mime_type': mimeType,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultDocument({
    this.id,
    this.title,
    this.description,
    this.documentUrl,
    this.mimeType,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    documentUrl = tryConvertToTdObject(json['document_url']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultGame extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultGame';

  String id;
  String gameShortName;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'game_short_name': gameShortName,
    'reply_markup': replyMarkup,
  };

  InputInlineQueryResultGame({
    this.id,
    this.gameShortName,
    this.replyMarkup,
  });

  InputInlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    gameShortName = tryConvertToTdObject(json['game_short_name']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class InputInlineQueryResultLocation extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultLocation';

  String id;
  Location location;
  int livePeriod;
  String title;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'location': location,
    'live_period': livePeriod,
    'title': title,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultLocation({
    this.id,
    this.location,
    this.livePeriod,
    this.title,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    location = tryConvertToTdObject(json['location']);
    livePeriod = tryConvertToTdObject(json['live_period']);
    title = tryConvertToTdObject(json['title']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultPhoto extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultPhoto';

  String id;
  String title;
  String description;
  String thumbnailUrl;
  String photoUrl;
  int photoWidth;
  int photoHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'photo_url': photoUrl,
    'photo_width': photoWidth,
    'photo_height': photoHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultPhoto({
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.photoUrl,
    this.photoWidth,
    this.photoHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    photoUrl = tryConvertToTdObject(json['photo_url']);
    photoWidth = tryConvertToTdObject(json['photo_width']);
    photoHeight = tryConvertToTdObject(json['photo_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultSticker extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultSticker';

  String id;
  String thumbnailUrl;
  String stickerUrl;
  int stickerWidth;
  int stickerHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'thumbnail_url': thumbnailUrl,
    'sticker_url': stickerUrl,
    'sticker_width': stickerWidth,
    'sticker_height': stickerHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultSticker({
    this.id,
    this.thumbnailUrl,
    this.stickerUrl,
    this.stickerWidth,
    this.stickerHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    stickerUrl = tryConvertToTdObject(json['sticker_url']);
    stickerWidth = tryConvertToTdObject(json['sticker_width']);
    stickerHeight = tryConvertToTdObject(json['sticker_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultVenue extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVenue';

  String id;
  Venue venue;
  String thumbnailUrl;
  int thumbnailWidth;
  int thumbnailHeight;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'venue': venue,
    'thumbnail_url': thumbnailUrl,
    'thumbnail_width': thumbnailWidth,
    'thumbnail_height': thumbnailHeight,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVenue({
    this.id,
    this.venue,
    this.thumbnailUrl,
    this.thumbnailWidth,
    this.thumbnailHeight,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    venue = tryConvertToTdObject(json['venue']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    thumbnailWidth = tryConvertToTdObject(json['thumbnail_width']);
    thumbnailHeight = tryConvertToTdObject(json['thumbnail_height']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultVideo extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVideo';

  String id;
  String title;
  String description;
  String thumbnailUrl;
  String videoUrl;
  String mimeType;
  int videoWidth;
  int videoHeight;
  int videoDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'description': description,
    'thumbnail_url': thumbnailUrl,
    'video_url': videoUrl,
    'mime_type': mimeType,
    'video_width': videoWidth,
    'video_height': videoHeight,
    'video_duration': videoDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVideo({
    this.id,
    this.title,
    this.description,
    this.thumbnailUrl,
    this.videoUrl,
    this.mimeType,
    this.videoWidth,
    this.videoHeight,
    this.videoDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnailUrl = tryConvertToTdObject(json['thumbnail_url']);
    videoUrl = tryConvertToTdObject(json['video_url']);
    mimeType = tryConvertToTdObject(json['mime_type']);
    videoWidth = tryConvertToTdObject(json['video_width']);
    videoHeight = tryConvertToTdObject(json['video_height']);
    videoDuration = tryConvertToTdObject(json['video_duration']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

@reflector
class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  @override
  String get tdType => 'inputInlineQueryResultVoiceNote';

  String id;
  String title;
  String voiceNoteUrl;
  int voiceNoteDuration;
  ReplyMarkup replyMarkup;
  InputMessageContent inputMessageContent;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'title': title,
    'voice_note_url': voiceNoteUrl,
    'voice_note_duration': voiceNoteDuration,
    'reply_markup': replyMarkup,
    'input_message_content': inputMessageContent,
  };

  InputInlineQueryResultVoiceNote({
    this.id,
    this.title,
    this.voiceNoteUrl,
    this.voiceNoteDuration,
    this.replyMarkup,
    this.inputMessageContent,
  });

  InputInlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    title = tryConvertToTdObject(json['title']);
    voiceNoteUrl = tryConvertToTdObject(json['voice_note_url']);
    voiceNoteDuration = tryConvertToTdObject(json['voice_note_duration']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
    inputMessageContent = tryConvertToTdObject(json['input_message_content']);
  }
}

abstract class InlineQueryResult extends TdObject {}

@reflector
class InlineQueryResultArticle extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultArticle';

  String id;
  String url;
  bool hideUrl;
  String title;
  String description;
  Thumbnail thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'url': url,
    'hide_url': hideUrl,
    'title': title,
    'description': description,
    'thumbnail': thumbnail,
  };

  InlineQueryResultArticle({
    this.id,
    this.url,
    this.hideUrl,
    this.title,
    this.description,
    this.thumbnail,
  });

  InlineQueryResultArticle.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    url = tryConvertToTdObject(json['url']);
    hideUrl = tryConvertToTdObject(json['hide_url']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultContact extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultContact';

  String id;
  Contact contact;
  Thumbnail thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'contact': contact,
    'thumbnail': thumbnail,
  };

  InlineQueryResultContact({
    this.id,
    this.contact,
    this.thumbnail,
  });

  InlineQueryResultContact.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    contact = tryConvertToTdObject(json['contact']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultLocation extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultLocation';

  String id;
  Location location;
  String title;
  Thumbnail thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'location': location,
    'title': title,
    'thumbnail': thumbnail,
  };

  InlineQueryResultLocation({
    this.id,
    this.location,
    this.title,
    this.thumbnail,
  });

  InlineQueryResultLocation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    location = tryConvertToTdObject(json['location']);
    title = tryConvertToTdObject(json['title']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultVenue extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVenue';

  String id;
  Venue venue;
  Thumbnail thumbnail;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'venue': venue,
    'thumbnail': thumbnail,
  };

  InlineQueryResultVenue({
    this.id,
    this.venue,
    this.thumbnail,
  });

  InlineQueryResultVenue.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    venue = tryConvertToTdObject(json['venue']);
    thumbnail = tryConvertToTdObject(json['thumbnail']);
  }
}

@reflector
class InlineQueryResultGame extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultGame';

  String id;
  Game game;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'game': game,
  };

  InlineQueryResultGame({
    this.id,
    this.game,
  });

  InlineQueryResultGame.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    game = tryConvertToTdObject(json['game']);
  }
}

@reflector
class InlineQueryResultAnimation extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultAnimation';

  String id;
  Animation animation;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'animation': animation,
    'title': title,
  };

  InlineQueryResultAnimation({
    this.id,
    this.animation,
    this.title,
  });

  InlineQueryResultAnimation.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    animation = tryConvertToTdObject(json['animation']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class InlineQueryResultAudio extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultAudio';

  String id;
  Audio audio;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'audio': audio,
  };

  InlineQueryResultAudio({
    this.id,
    this.audio,
  });

  InlineQueryResultAudio.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    audio = tryConvertToTdObject(json['audio']);
  }
}

@reflector
class InlineQueryResultDocument extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultDocument';

  String id;
  Document document;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'document': document,
    'title': title,
    'description': description,
  };

  InlineQueryResultDocument({
    this.id,
    this.document,
    this.title,
    this.description,
  });

  InlineQueryResultDocument.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    document = tryConvertToTdObject(json['document']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class InlineQueryResultPhoto extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultPhoto';

  String id;
  Photo photo;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'photo': photo,
    'title': title,
    'description': description,
  };

  InlineQueryResultPhoto({
    this.id,
    this.photo,
    this.title,
    this.description,
  });

  InlineQueryResultPhoto.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    photo = tryConvertToTdObject(json['photo']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class InlineQueryResultSticker extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultSticker';

  String id;
  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sticker': sticker,
  };

  InlineQueryResultSticker({
    this.id,
    this.sticker,
  });

  InlineQueryResultSticker.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class InlineQueryResultVideo extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVideo';

  String id;
  Video video;
  String title;
  String description;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'video': video,
    'title': title,
    'description': description,
  };

  InlineQueryResultVideo({
    this.id,
    this.video,
    this.title,
    this.description,
  });

  InlineQueryResultVideo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    video = tryConvertToTdObject(json['video']);
    title = tryConvertToTdObject(json['title']);
    description = tryConvertToTdObject(json['description']);
  }
}

@reflector
class InlineQueryResultVoiceNote extends InlineQueryResult {
  @override
  String get tdType => 'inlineQueryResultVoiceNote';

  String id;
  VoiceNote voiceNote;
  String title;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'voice_note': voiceNote,
    'title': title,
  };

  InlineQueryResultVoiceNote({
    this.id,
    this.voiceNote,
    this.title,
  });

  InlineQueryResultVoiceNote.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    voiceNote = tryConvertToTdObject(json['voice_note']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class InlineQueryResults extends TdObject {
  @override
  String get tdType => 'inlineQueryResults';

  int inlineQueryId;
  String nextOffset;
  List<InlineQueryResult> results;
  String switchPmText;
  String switchPmParameter;

  @override
  Map<String, dynamic> get params => {
    'inline_query_id': inlineQueryId,
    'next_offset': nextOffset,
    'results': results,
    'switch_pm_text': switchPmText,
    'switch_pm_parameter': switchPmParameter,
  };

  InlineQueryResults({
    this.inlineQueryId,
    this.nextOffset,
    this.results,
    this.switchPmText,
    this.switchPmParameter,
  });

  InlineQueryResults.fromJson(Map<String, dynamic> json) {
    inlineQueryId = tryConvertToTdObject(json['inline_query_id']);
    nextOffset = tryConvertToTdObject(json['next_offset']);
    results = tryConvertToTdObject(json['results']);
    switchPmText = tryConvertToTdObject(json['switch_pm_text']);
    switchPmParameter = tryConvertToTdObject(json['switch_pm_parameter']);
  }
}

abstract class CallbackQueryPayload extends TdObject {}

@reflector
class CallbackQueryPayloadData extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadData';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  CallbackQueryPayloadData({
    this.data,
  });

  CallbackQueryPayloadData.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class CallbackQueryPayloadDataWithPassword extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadDataWithPassword';

  String password;
  String data;

  @override
  Map<String, dynamic> get params => {
    'password': password,
    'data': data,
  };

  CallbackQueryPayloadDataWithPassword({
    this.password,
    this.data,
  });

  CallbackQueryPayloadDataWithPassword.fromJson(Map<String, dynamic> json) {
    password = tryConvertToTdObject(json['password']);
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class CallbackQueryPayloadGame extends CallbackQueryPayload {
  @override
  String get tdType => 'callbackQueryPayloadGame';

  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'game_short_name': gameShortName,
  };

  CallbackQueryPayloadGame({
    this.gameShortName,
  });

  CallbackQueryPayloadGame.fromJson(Map<String, dynamic> json) {
    gameShortName = tryConvertToTdObject(json['game_short_name']);
  }
}

@reflector
class CallbackQueryAnswer extends TdObject {
  @override
  String get tdType => 'callbackQueryAnswer';

  String text;
  bool showAlert;
  String url;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'show_alert': showAlert,
    'url': url,
  };

  CallbackQueryAnswer({
    this.text,
    this.showAlert,
    this.url,
  });

  CallbackQueryAnswer.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    showAlert = tryConvertToTdObject(json['show_alert']);
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class CustomRequestResult extends TdObject {
  @override
  String get tdType => 'customRequestResult';

  String result;

  @override
  Map<String, dynamic> get params => {
    'result': result,
  };

  CustomRequestResult({
    this.result,
  });

  CustomRequestResult.fromJson(Map<String, dynamic> json) {
    result = tryConvertToTdObject(json['result']);
  }
}

@reflector
class GameHighScore extends TdObject {
  @override
  String get tdType => 'gameHighScore';

  int position;
  int userId;
  int score;

  @override
  Map<String, dynamic> get params => {
    'position': position,
    'user_id': userId,
    'score': score,
  };

  GameHighScore({
    this.position,
    this.userId,
    this.score,
  });

  GameHighScore.fromJson(Map<String, dynamic> json) {
    position = tryConvertToTdObject(json['position']);
    userId = tryConvertToTdObject(json['user_id']);
    score = tryConvertToTdObject(json['score']);
  }
}

@reflector
class GameHighScores extends TdObject {
  @override
  String get tdType => 'gameHighScores';

  List<GameHighScore> scores;

  @override
  Map<String, dynamic> get params => {
    'scores': scores,
  };

  GameHighScores({
    this.scores,
  });

  GameHighScores.fromJson(Map<String, dynamic> json) {
    scores = tryConvertToTdObject(json['scores']);
  }
}

abstract class ChatEventAction extends TdObject {}

@reflector
class ChatEventMessageEdited extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageEdited';

  Message oldMessage;
  Message newMessage;

  @override
  Map<String, dynamic> get params => {
    'old_message': oldMessage,
    'new_message': newMessage,
  };

  ChatEventMessageEdited({
    this.oldMessage,
    this.newMessage,
  });

  ChatEventMessageEdited.fromJson(Map<String, dynamic> json) {
    oldMessage = tryConvertToTdObject(json['old_message']);
    newMessage = tryConvertToTdObject(json['new_message']);
  }
}

@reflector
class ChatEventMessageDeleted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageDeleted';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessageDeleted({
    this.message,
  });

  ChatEventMessageDeleted.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventPollStopped extends ChatEventAction {
  @override
  String get tdType => 'chatEventPollStopped';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventPollStopped({
    this.message,
  });

  ChatEventPollStopped.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventMessagePinned extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessagePinned';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessagePinned({
    this.message,
  });

  ChatEventMessagePinned.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventMessageUnpinned extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageUnpinned';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  ChatEventMessageUnpinned({
    this.message,
  });

  ChatEventMessageUnpinned.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class ChatEventMemberJoined extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberJoined';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMemberJoined();

  ChatEventMemberJoined.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatEventMemberJoinedByInviteLink extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberJoinedByInviteLink';

  ChatInviteLink inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatEventMemberJoinedByInviteLink({
    this.inviteLink,
  });

  ChatEventMemberJoinedByInviteLink.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class ChatEventMemberLeft extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberLeft';

  @override
  Map<String, dynamic> get params => {};

  ChatEventMemberLeft();

  ChatEventMemberLeft.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatEventMemberInvited extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberInvited';

  int userId;
  ChatMemberStatus status;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'status': status,
  };

  ChatEventMemberInvited({
    this.userId,
    this.status,
  });

  ChatEventMemberInvited.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    status = tryConvertToTdObject(json['status']);
  }
}

@reflector
class ChatEventMemberPromoted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberPromoted';

  int userId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  ChatEventMemberPromoted({
    this.userId,
    this.oldStatus,
    this.newStatus,
  });

  ChatEventMemberPromoted.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    oldStatus = tryConvertToTdObject(json['old_status']);
    newStatus = tryConvertToTdObject(json['new_status']);
  }
}

@reflector
class ChatEventMemberRestricted extends ChatEventAction {
  @override
  String get tdType => 'chatEventMemberRestricted';

  MessageSender memberId;
  ChatMemberStatus oldStatus;
  ChatMemberStatus newStatus;

  @override
  Map<String, dynamic> get params => {
    'member_id': memberId,
    'old_status': oldStatus,
    'new_status': newStatus,
  };

  ChatEventMemberRestricted({
    this.memberId,
    this.oldStatus,
    this.newStatus,
  });

  ChatEventMemberRestricted.fromJson(Map<String, dynamic> json) {
    memberId = tryConvertToTdObject(json['member_id']);
    oldStatus = tryConvertToTdObject(json['old_status']);
    newStatus = tryConvertToTdObject(json['new_status']);
  }
}

@reflector
class ChatEventTitleChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventTitleChanged';

  String oldTitle;
  String newTitle;

  @override
  Map<String, dynamic> get params => {
    'old_title': oldTitle,
    'new_title': newTitle,
  };

  ChatEventTitleChanged({
    this.oldTitle,
    this.newTitle,
  });

  ChatEventTitleChanged.fromJson(Map<String, dynamic> json) {
    oldTitle = tryConvertToTdObject(json['old_title']);
    newTitle = tryConvertToTdObject(json['new_title']);
  }
}

@reflector
class ChatEventPermissionsChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventPermissionsChanged';

  ChatPermissions oldPermissions;
  ChatPermissions newPermissions;

  @override
  Map<String, dynamic> get params => {
    'old_permissions': oldPermissions,
    'new_permissions': newPermissions,
  };

  ChatEventPermissionsChanged({
    this.oldPermissions,
    this.newPermissions,
  });

  ChatEventPermissionsChanged.fromJson(Map<String, dynamic> json) {
    oldPermissions = tryConvertToTdObject(json['old_permissions']);
    newPermissions = tryConvertToTdObject(json['new_permissions']);
  }
}

@reflector
class ChatEventDescriptionChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventDescriptionChanged';

  String oldDescription;
  String newDescription;

  @override
  Map<String, dynamic> get params => {
    'old_description': oldDescription,
    'new_description': newDescription,
  };

  ChatEventDescriptionChanged({
    this.oldDescription,
    this.newDescription,
  });

  ChatEventDescriptionChanged.fromJson(Map<String, dynamic> json) {
    oldDescription = tryConvertToTdObject(json['old_description']);
    newDescription = tryConvertToTdObject(json['new_description']);
  }
}

@reflector
class ChatEventUsernameChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventUsernameChanged';

  String oldUsername;
  String newUsername;

  @override
  Map<String, dynamic> get params => {
    'old_username': oldUsername,
    'new_username': newUsername,
  };

  ChatEventUsernameChanged({
    this.oldUsername,
    this.newUsername,
  });

  ChatEventUsernameChanged.fromJson(Map<String, dynamic> json) {
    oldUsername = tryConvertToTdObject(json['old_username']);
    newUsername = tryConvertToTdObject(json['new_username']);
  }
}

@reflector
class ChatEventPhotoChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventPhotoChanged';

  ChatPhoto oldPhoto;
  ChatPhoto newPhoto;

  @override
  Map<String, dynamic> get params => {
    'old_photo': oldPhoto,
    'new_photo': newPhoto,
  };

  ChatEventPhotoChanged({
    this.oldPhoto,
    this.newPhoto,
  });

  ChatEventPhotoChanged.fromJson(Map<String, dynamic> json) {
    oldPhoto = tryConvertToTdObject(json['old_photo']);
    newPhoto = tryConvertToTdObject(json['new_photo']);
  }
}

@reflector
class ChatEventInvitesToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventInvitesToggled';

  bool canInviteUsers;

  @override
  Map<String, dynamic> get params => {
    'can_invite_users': canInviteUsers,
  };

  ChatEventInvitesToggled({
    this.canInviteUsers,
  });

  ChatEventInvitesToggled.fromJson(Map<String, dynamic> json) {
    canInviteUsers = tryConvertToTdObject(json['can_invite_users']);
  }
}

@reflector
class ChatEventLinkedChatChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventLinkedChatChanged';

  int oldLinkedChatId;
  int newLinkedChatId;

  @override
  Map<String, dynamic> get params => {
    'old_linked_chat_id': oldLinkedChatId,
    'new_linked_chat_id': newLinkedChatId,
  };

  ChatEventLinkedChatChanged({
    this.oldLinkedChatId,
    this.newLinkedChatId,
  });

  ChatEventLinkedChatChanged.fromJson(Map<String, dynamic> json) {
    oldLinkedChatId = tryConvertToTdObject(json['old_linked_chat_id']);
    newLinkedChatId = tryConvertToTdObject(json['new_linked_chat_id']);
  }
}

@reflector
class ChatEventSlowModeDelayChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventSlowModeDelayChanged';

  int oldSlowModeDelay;
  int newSlowModeDelay;

  @override
  Map<String, dynamic> get params => {
    'old_slow_mode_delay': oldSlowModeDelay,
    'new_slow_mode_delay': newSlowModeDelay,
  };

  ChatEventSlowModeDelayChanged({
    this.oldSlowModeDelay,
    this.newSlowModeDelay,
  });

  ChatEventSlowModeDelayChanged.fromJson(Map<String, dynamic> json) {
    oldSlowModeDelay = tryConvertToTdObject(json['old_slow_mode_delay']);
    newSlowModeDelay = tryConvertToTdObject(json['new_slow_mode_delay']);
  }
}

@reflector
class ChatEventMessageTtlSettingChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventMessageTtlSettingChanged';

  int oldMessageTtlSetting;
  int newMessageTtlSetting;

  @override
  Map<String, dynamic> get params => {
    'old_message_ttl_setting': oldMessageTtlSetting,
    'new_message_ttl_setting': newMessageTtlSetting,
  };

  ChatEventMessageTtlSettingChanged({
    this.oldMessageTtlSetting,
    this.newMessageTtlSetting,
  });

  ChatEventMessageTtlSettingChanged.fromJson(Map<String, dynamic> json) {
    oldMessageTtlSetting = tryConvertToTdObject(json['old_message_ttl_setting']);
    newMessageTtlSetting = tryConvertToTdObject(json['new_message_ttl_setting']);
  }
}

@reflector
class ChatEventSignMessagesToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventSignMessagesToggled';

  bool signMessages;

  @override
  Map<String, dynamic> get params => {
    'sign_messages': signMessages,
  };

  ChatEventSignMessagesToggled({
    this.signMessages,
  });

  ChatEventSignMessagesToggled.fromJson(Map<String, dynamic> json) {
    signMessages = tryConvertToTdObject(json['sign_messages']);
  }
}

@reflector
class ChatEventStickerSetChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventStickerSetChanged';

  int oldStickerSetId;
  int newStickerSetId;

  @override
  Map<String, dynamic> get params => {
    'old_sticker_set_id': oldStickerSetId,
    'new_sticker_set_id': newStickerSetId,
  };

  ChatEventStickerSetChanged({
    this.oldStickerSetId,
    this.newStickerSetId,
  });

  ChatEventStickerSetChanged.fromJson(Map<String, dynamic> json) {
    oldStickerSetId = tryConvertToTdObject(json['old_sticker_set_id']);
    newStickerSetId = tryConvertToTdObject(json['new_sticker_set_id']);
  }
}

@reflector
class ChatEventLocationChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventLocationChanged';

  ChatLocation oldLocation;
  ChatLocation newLocation;

  @override
  Map<String, dynamic> get params => {
    'old_location': oldLocation,
    'new_location': newLocation,
  };

  ChatEventLocationChanged({
    this.oldLocation,
    this.newLocation,
  });

  ChatEventLocationChanged.fromJson(Map<String, dynamic> json) {
    oldLocation = tryConvertToTdObject(json['old_location']);
    newLocation = tryConvertToTdObject(json['new_location']);
  }
}

@reflector
class ChatEventIsAllHistoryAvailableToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventIsAllHistoryAvailableToggled';

  bool isAllHistoryAvailable;

  @override
  Map<String, dynamic> get params => {
    'is_all_history_available': isAllHistoryAvailable,
  };

  ChatEventIsAllHistoryAvailableToggled({
    this.isAllHistoryAvailable,
  });

  ChatEventIsAllHistoryAvailableToggled.fromJson(Map<String, dynamic> json) {
    isAllHistoryAvailable = tryConvertToTdObject(json['is_all_history_available']);
  }
}

@reflector
class ChatEventInviteLinkEdited extends ChatEventAction {
  @override
  String get tdType => 'chatEventInviteLinkEdited';

  ChatInviteLink oldInviteLink;
  ChatInviteLink newInviteLink;

  @override
  Map<String, dynamic> get params => {
    'old_invite_link': oldInviteLink,
    'new_invite_link': newInviteLink,
  };

  ChatEventInviteLinkEdited({
    this.oldInviteLink,
    this.newInviteLink,
  });

  ChatEventInviteLinkEdited.fromJson(Map<String, dynamic> json) {
    oldInviteLink = tryConvertToTdObject(json['old_invite_link']);
    newInviteLink = tryConvertToTdObject(json['new_invite_link']);
  }
}

@reflector
class ChatEventInviteLinkRevoked extends ChatEventAction {
  @override
  String get tdType => 'chatEventInviteLinkRevoked';

  ChatInviteLink inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatEventInviteLinkRevoked({
    this.inviteLink,
  });

  ChatEventInviteLinkRevoked.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class ChatEventInviteLinkDeleted extends ChatEventAction {
  @override
  String get tdType => 'chatEventInviteLinkDeleted';

  ChatInviteLink inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  ChatEventInviteLinkDeleted({
    this.inviteLink,
  });

  ChatEventInviteLinkDeleted.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class ChatEventVoiceChatCreated extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatCreated';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  ChatEventVoiceChatCreated({
    this.groupCallId,
  });

  ChatEventVoiceChatCreated.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class ChatEventVoiceChatDiscarded extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatDiscarded';

  int groupCallId;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
  };

  ChatEventVoiceChatDiscarded({
    this.groupCallId,
  });

  ChatEventVoiceChatDiscarded.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
  }
}

@reflector
class ChatEventVoiceChatParticipantIsMutedToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatParticipantIsMutedToggled';

  MessageSender participantId;
  bool isMuted;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'is_muted': isMuted,
  };

  ChatEventVoiceChatParticipantIsMutedToggled({
    this.participantId,
    this.isMuted,
  });

  ChatEventVoiceChatParticipantIsMutedToggled.fromJson(Map<String, dynamic> json) {
    participantId = tryConvertToTdObject(json['participant_id']);
    isMuted = tryConvertToTdObject(json['is_muted']);
  }
}

@reflector
class ChatEventVoiceChatParticipantVolumeLevelChanged extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatParticipantVolumeLevelChanged';

  MessageSender participantId;
  int volumeLevel;

  @override
  Map<String, dynamic> get params => {
    'participant_id': participantId,
    'volume_level': volumeLevel,
  };

  ChatEventVoiceChatParticipantVolumeLevelChanged({
    this.participantId,
    this.volumeLevel,
  });

  ChatEventVoiceChatParticipantVolumeLevelChanged.fromJson(Map<String, dynamic> json) {
    participantId = tryConvertToTdObject(json['participant_id']);
    volumeLevel = tryConvertToTdObject(json['volume_level']);
  }
}

@reflector
class ChatEventVoiceChatMuteNewParticipantsToggled extends ChatEventAction {
  @override
  String get tdType => 'chatEventVoiceChatMuteNewParticipantsToggled';

  bool muteNewParticipants;

  @override
  Map<String, dynamic> get params => {
    'mute_new_participants': muteNewParticipants,
  };

  ChatEventVoiceChatMuteNewParticipantsToggled({
    this.muteNewParticipants,
  });

  ChatEventVoiceChatMuteNewParticipantsToggled.fromJson(Map<String, dynamic> json) {
    muteNewParticipants = tryConvertToTdObject(json['mute_new_participants']);
  }
}

@reflector
class ChatEvent extends TdObject {
  @override
  String get tdType => 'chatEvent';

  int id;
  int date;
  int userId;
  ChatEventAction action;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'date': date,
    'user_id': userId,
    'action': action,
  };

  ChatEvent({
    this.id,
    this.date,
    this.userId,
    this.action,
  });

  ChatEvent.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    date = tryConvertToTdObject(json['date']);
    userId = tryConvertToTdObject(json['user_id']);
    action = tryConvertToTdObject(json['action']);
  }
}

@reflector
class ChatEvents extends TdObject {
  @override
  String get tdType => 'chatEvents';

  List<ChatEvent> events;

  @override
  Map<String, dynamic> get params => {
    'events': events,
  };

  ChatEvents({
    this.events,
  });

  ChatEvents.fromJson(Map<String, dynamic> json) {
    events = tryConvertToTdObject(json['events']);
  }
}

@reflector
class ChatEventLogFilters extends TdObject {
  @override
  String get tdType => 'chatEventLogFilters';

  bool messageEdits;
  bool messageDeletions;
  bool messagePins;
  bool memberJoins;
  bool memberLeaves;
  bool memberInvites;
  bool memberPromotions;
  bool memberRestrictions;
  bool infoChanges;
  bool settingChanges;
  bool inviteLinkChanges;
  bool voiceChatChanges;

  @override
  Map<String, dynamic> get params => {
    'message_edits': messageEdits,
    'message_deletions': messageDeletions,
    'message_pins': messagePins,
    'member_joins': memberJoins,
    'member_leaves': memberLeaves,
    'member_invites': memberInvites,
    'member_promotions': memberPromotions,
    'member_restrictions': memberRestrictions,
    'info_changes': infoChanges,
    'setting_changes': settingChanges,
    'invite_link_changes': inviteLinkChanges,
    'voice_chat_changes': voiceChatChanges,
  };

  ChatEventLogFilters({
    this.messageEdits,
    this.messageDeletions,
    this.messagePins,
    this.memberJoins,
    this.memberLeaves,
    this.memberInvites,
    this.memberPromotions,
    this.memberRestrictions,
    this.infoChanges,
    this.settingChanges,
    this.inviteLinkChanges,
    this.voiceChatChanges,
  });

  ChatEventLogFilters.fromJson(Map<String, dynamic> json) {
    messageEdits = tryConvertToTdObject(json['message_edits']);
    messageDeletions = tryConvertToTdObject(json['message_deletions']);
    messagePins = tryConvertToTdObject(json['message_pins']);
    memberJoins = tryConvertToTdObject(json['member_joins']);
    memberLeaves = tryConvertToTdObject(json['member_leaves']);
    memberInvites = tryConvertToTdObject(json['member_invites']);
    memberPromotions = tryConvertToTdObject(json['member_promotions']);
    memberRestrictions = tryConvertToTdObject(json['member_restrictions']);
    infoChanges = tryConvertToTdObject(json['info_changes']);
    settingChanges = tryConvertToTdObject(json['setting_changes']);
    inviteLinkChanges = tryConvertToTdObject(json['invite_link_changes']);
    voiceChatChanges = tryConvertToTdObject(json['voice_chat_changes']);
  }
}

abstract class LanguagePackStringValue extends TdObject {}

@reflector
class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValueOrdinary';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  LanguagePackStringValueOrdinary({
    this.value,
  });

  LanguagePackStringValueOrdinary.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class LanguagePackStringValuePluralized extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValuePluralized';

  String zeroValue;
  String oneValue;
  String twoValue;
  String fewValue;
  String manyValue;
  String otherValue;

  @override
  Map<String, dynamic> get params => {
    'zero_value': zeroValue,
    'one_value': oneValue,
    'two_value': twoValue,
    'few_value': fewValue,
    'many_value': manyValue,
    'other_value': otherValue,
  };

  LanguagePackStringValuePluralized({
    this.zeroValue,
    this.oneValue,
    this.twoValue,
    this.fewValue,
    this.manyValue,
    this.otherValue,
  });

  LanguagePackStringValuePluralized.fromJson(Map<String, dynamic> json) {
    zeroValue = tryConvertToTdObject(json['zero_value']);
    oneValue = tryConvertToTdObject(json['one_value']);
    twoValue = tryConvertToTdObject(json['two_value']);
    fewValue = tryConvertToTdObject(json['few_value']);
    manyValue = tryConvertToTdObject(json['many_value']);
    otherValue = tryConvertToTdObject(json['other_value']);
  }
}

@reflector
class LanguagePackStringValueDeleted extends LanguagePackStringValue {
  @override
  String get tdType => 'languagePackStringValueDeleted';

  @override
  Map<String, dynamic> get params => {};

  LanguagePackStringValueDeleted();

  LanguagePackStringValueDeleted.fromJson(Map<String, dynamic> json);
}

@reflector
class LanguagePackString extends TdObject {
  @override
  String get tdType => 'languagePackString';

  String key;
  LanguagePackStringValue value;

  @override
  Map<String, dynamic> get params => {
    'key': key,
    'value': value,
  };

  LanguagePackString({
    this.key,
    this.value,
  });

  LanguagePackString.fromJson(Map<String, dynamic> json) {
    key = tryConvertToTdObject(json['key']);
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class LanguagePackStrings extends TdObject {
  @override
  String get tdType => 'languagePackStrings';

  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'strings': strings,
  };

  LanguagePackStrings({
    this.strings,
  });

  LanguagePackStrings.fromJson(Map<String, dynamic> json) {
    strings = tryConvertToTdObject(json['strings']);
  }
}

@reflector
class LanguagePackInfo extends TdObject {
  @override
  String get tdType => 'languagePackInfo';

  String id;
  String baseLanguagePackId;
  String name;
  String nativeName;
  String pluralCode;
  bool isOfficial;
  bool isRtl;
  bool isBeta;
  bool isInstalled;
  int totalStringCount;
  int translatedStringCount;
  int localStringCount;
  String translationUrl;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'base_language_pack_id': baseLanguagePackId,
    'name': name,
    'native_name': nativeName,
    'plural_code': pluralCode,
    'is_official': isOfficial,
    'is_rtl': isRtl,
    'is_beta': isBeta,
    'is_installed': isInstalled,
    'total_string_count': totalStringCount,
    'translated_string_count': translatedStringCount,
    'local_string_count': localStringCount,
    'translation_url': translationUrl,
  };

  LanguagePackInfo({
    this.id,
    this.baseLanguagePackId,
    this.name,
    this.nativeName,
    this.pluralCode,
    this.isOfficial,
    this.isRtl,
    this.isBeta,
    this.isInstalled,
    this.totalStringCount,
    this.translatedStringCount,
    this.localStringCount,
    this.translationUrl,
  });

  LanguagePackInfo.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    baseLanguagePackId = tryConvertToTdObject(json['base_language_pack_id']);
    name = tryConvertToTdObject(json['name']);
    nativeName = tryConvertToTdObject(json['native_name']);
    pluralCode = tryConvertToTdObject(json['plural_code']);
    isOfficial = tryConvertToTdObject(json['is_official']);
    isRtl = tryConvertToTdObject(json['is_rtl']);
    isBeta = tryConvertToTdObject(json['is_beta']);
    isInstalled = tryConvertToTdObject(json['is_installed']);
    totalStringCount = tryConvertToTdObject(json['total_string_count']);
    translatedStringCount = tryConvertToTdObject(json['translated_string_count']);
    localStringCount = tryConvertToTdObject(json['local_string_count']);
    translationUrl = tryConvertToTdObject(json['translation_url']);
  }
}

@reflector
class LocalizationTargetInfo extends TdObject {
  @override
  String get tdType => 'localizationTargetInfo';

  List<LanguagePackInfo> languagePacks;

  @override
  Map<String, dynamic> get params => {
    'language_packs': languagePacks,
  };

  LocalizationTargetInfo({
    this.languagePacks,
  });

  LocalizationTargetInfo.fromJson(Map<String, dynamic> json) {
    languagePacks = tryConvertToTdObject(json['language_packs']);
  }
}

abstract class DeviceToken extends TdObject {}

@reflector
class DeviceTokenFirebaseCloudMessaging extends DeviceToken {
  @override
  String get tdType => 'deviceTokenFirebaseCloudMessaging';

  String token;
  bool encrypt;

  @override
  Map<String, dynamic> get params => {
    'token': token,
    'encrypt': encrypt,
  };

  DeviceTokenFirebaseCloudMessaging({
    this.token,
    this.encrypt,
  });

  DeviceTokenFirebaseCloudMessaging.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
    encrypt = tryConvertToTdObject(json['encrypt']);
  }
}

@reflector
class DeviceTokenApplePush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenApplePush';

  String deviceToken;
  bool isAppSandbox;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
  };

  DeviceTokenApplePush({
    this.deviceToken,
    this.isAppSandbox,
  });

  DeviceTokenApplePush.fromJson(Map<String, dynamic> json) {
    deviceToken = tryConvertToTdObject(json['device_token']);
    isAppSandbox = tryConvertToTdObject(json['is_app_sandbox']);
  }
}

@reflector
class DeviceTokenApplePushVoIP extends DeviceToken {
  @override
  String get tdType => 'deviceTokenApplePushVoIP';

  String deviceToken;
  bool isAppSandbox;
  bool encrypt;

  @override
  Map<String, dynamic> get params => {
    'device_token': deviceToken,
    'is_app_sandbox': isAppSandbox,
    'encrypt': encrypt,
  };

  DeviceTokenApplePushVoIP({
    this.deviceToken,
    this.isAppSandbox,
    this.encrypt,
  });

  DeviceTokenApplePushVoIP.fromJson(Map<String, dynamic> json) {
    deviceToken = tryConvertToTdObject(json['device_token']);
    isAppSandbox = tryConvertToTdObject(json['is_app_sandbox']);
    encrypt = tryConvertToTdObject(json['encrypt']);
  }
}

@reflector
class DeviceTokenWindowsPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenWindowsPush';

  String accessToken;

  @override
  Map<String, dynamic> get params => {
    'access_token': accessToken,
  };

  DeviceTokenWindowsPush({
    this.accessToken,
  });

  DeviceTokenWindowsPush.fromJson(Map<String, dynamic> json) {
    accessToken = tryConvertToTdObject(json['access_token']);
  }
}

@reflector
class DeviceTokenMicrosoftPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenMicrosoftPush';

  String channelUri;

  @override
  Map<String, dynamic> get params => {
    'channel_uri': channelUri,
  };

  DeviceTokenMicrosoftPush({
    this.channelUri,
  });

  DeviceTokenMicrosoftPush.fromJson(Map<String, dynamic> json) {
    channelUri = tryConvertToTdObject(json['channel_uri']);
  }
}

@reflector
class DeviceTokenMicrosoftPushVoIP extends DeviceToken {
  @override
  String get tdType => 'deviceTokenMicrosoftPushVoIP';

  String channelUri;

  @override
  Map<String, dynamic> get params => {
    'channel_uri': channelUri,
  };

  DeviceTokenMicrosoftPushVoIP({
    this.channelUri,
  });

  DeviceTokenMicrosoftPushVoIP.fromJson(Map<String, dynamic> json) {
    channelUri = tryConvertToTdObject(json['channel_uri']);
  }
}

@reflector
class DeviceTokenWebPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenWebPush';

  String endpoint;
  String p256dhBase64url;
  String authBase64url;

  @override
  Map<String, dynamic> get params => {
    'endpoint': endpoint,
    'p256dh_base64url': p256dhBase64url,
    'auth_base64url': authBase64url,
  };

  DeviceTokenWebPush({
    this.endpoint,
    this.p256dhBase64url,
    this.authBase64url,
  });

  DeviceTokenWebPush.fromJson(Map<String, dynamic> json) {
    endpoint = tryConvertToTdObject(json['endpoint']);
    p256dhBase64url = tryConvertToTdObject(json['p256dh_base64url']);
    authBase64url = tryConvertToTdObject(json['auth_base64url']);
  }
}

@reflector
class DeviceTokenSimplePush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenSimplePush';

  String endpoint;

  @override
  Map<String, dynamic> get params => {
    'endpoint': endpoint,
  };

  DeviceTokenSimplePush({
    this.endpoint,
  });

  DeviceTokenSimplePush.fromJson(Map<String, dynamic> json) {
    endpoint = tryConvertToTdObject(json['endpoint']);
  }
}

@reflector
class DeviceTokenUbuntuPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenUbuntuPush';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  DeviceTokenUbuntuPush({
    this.token,
  });

  DeviceTokenUbuntuPush.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
  }
}

@reflector
class DeviceTokenBlackBerryPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenBlackBerryPush';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  DeviceTokenBlackBerryPush({
    this.token,
  });

  DeviceTokenBlackBerryPush.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
  }
}

@reflector
class DeviceTokenTizenPush extends DeviceToken {
  @override
  String get tdType => 'deviceTokenTizenPush';

  String regId;

  @override
  Map<String, dynamic> get params => {
    'reg_id': regId,
  };

  DeviceTokenTizenPush({
    this.regId,
  });

  DeviceTokenTizenPush.fromJson(Map<String, dynamic> json) {
    regId = tryConvertToTdObject(json['reg_id']);
  }
}

@reflector
class PushReceiverId extends TdObject {
  @override
  String get tdType => 'pushReceiverId';

  int id;

  @override
  Map<String, dynamic> get params => {
    'id': id,
  };

  PushReceiverId({
    this.id,
  });

  PushReceiverId.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
  }
}

abstract class BackgroundFill extends TdObject {}

@reflector
class BackgroundFillSolid extends BackgroundFill {
  @override
  String get tdType => 'backgroundFillSolid';

  int color;

  @override
  Map<String, dynamic> get params => {
    'color': color,
  };

  BackgroundFillSolid({
    this.color,
  });

  BackgroundFillSolid.fromJson(Map<String, dynamic> json) {
    color = tryConvertToTdObject(json['color']);
  }
}

@reflector
class BackgroundFillGradient extends BackgroundFill {
  @override
  String get tdType => 'backgroundFillGradient';

  int topColor;
  int bottomColor;
  int rotationAngle;

  @override
  Map<String, dynamic> get params => {
    'top_color': topColor,
    'bottom_color': bottomColor,
    'rotation_angle': rotationAngle,
  };

  BackgroundFillGradient({
    this.topColor,
    this.bottomColor,
    this.rotationAngle,
  });

  BackgroundFillGradient.fromJson(Map<String, dynamic> json) {
    topColor = tryConvertToTdObject(json['top_color']);
    bottomColor = tryConvertToTdObject(json['bottom_color']);
    rotationAngle = tryConvertToTdObject(json['rotation_angle']);
  }
}

@reflector
class BackgroundFillFreeformGradient extends BackgroundFill {
  @override
  String get tdType => 'backgroundFillFreeformGradient';

  List<int> colors;

  @override
  Map<String, dynamic> get params => {
    'colors': colors,
  };

  BackgroundFillFreeformGradient({
    this.colors,
  });

  BackgroundFillFreeformGradient.fromJson(Map<String, dynamic> json) {
    colors = tryConvertToTdObject(json['colors']);
  }
}

abstract class BackgroundType extends TdObject {}

@reflector
class BackgroundTypeWallpaper extends BackgroundType {
  @override
  String get tdType => 'backgroundTypeWallpaper';

  bool isBlurred;
  bool isMoving;

  @override
  Map<String, dynamic> get params => {
    'is_blurred': isBlurred,
    'is_moving': isMoving,
  };

  BackgroundTypeWallpaper({
    this.isBlurred,
    this.isMoving,
  });

  BackgroundTypeWallpaper.fromJson(Map<String, dynamic> json) {
    isBlurred = tryConvertToTdObject(json['is_blurred']);
    isMoving = tryConvertToTdObject(json['is_moving']);
  }
}

@reflector
class BackgroundTypePattern extends BackgroundType {
  @override
  String get tdType => 'backgroundTypePattern';

  BackgroundFill fill;
  int intensity;
  bool isInverted;
  bool isMoving;

  @override
  Map<String, dynamic> get params => {
    'fill': fill,
    'intensity': intensity,
    'is_inverted': isInverted,
    'is_moving': isMoving,
  };

  BackgroundTypePattern({
    this.fill,
    this.intensity,
    this.isInverted,
    this.isMoving,
  });

  BackgroundTypePattern.fromJson(Map<String, dynamic> json) {
    fill = tryConvertToTdObject(json['fill']);
    intensity = tryConvertToTdObject(json['intensity']);
    isInverted = tryConvertToTdObject(json['is_inverted']);
    isMoving = tryConvertToTdObject(json['is_moving']);
  }
}

@reflector
class BackgroundTypeFill extends BackgroundType {
  @override
  String get tdType => 'backgroundTypeFill';

  BackgroundFill fill;

  @override
  Map<String, dynamic> get params => {
    'fill': fill,
  };

  BackgroundTypeFill({
    this.fill,
  });

  BackgroundTypeFill.fromJson(Map<String, dynamic> json) {
    fill = tryConvertToTdObject(json['fill']);
  }
}

@reflector
class Background extends TdObject {
  @override
  String get tdType => 'background';

  int id;
  bool isDefault;
  bool isDark;
  String name;
  Document document;
  BackgroundType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_default': isDefault,
    'is_dark': isDark,
    'name': name,
    'document': document,
    'type': type,
  };

  Background({
    this.id,
    this.isDefault,
    this.isDark,
    this.name,
    this.document,
    this.type,
  });

  Background.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    isDefault = tryConvertToTdObject(json['is_default']);
    isDark = tryConvertToTdObject(json['is_dark']);
    name = tryConvertToTdObject(json['name']);
    document = tryConvertToTdObject(json['document']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class Backgrounds extends TdObject {
  @override
  String get tdType => 'backgrounds';

  List<Background> backgrounds;

  @override
  Map<String, dynamic> get params => {
    'backgrounds': backgrounds,
  };

  Backgrounds({
    this.backgrounds,
  });

  Backgrounds.fromJson(Map<String, dynamic> json) {
    backgrounds = tryConvertToTdObject(json['backgrounds']);
  }
}

abstract class InputBackground extends TdObject {}

@reflector
class InputBackgroundLocal extends InputBackground {
  @override
  String get tdType => 'inputBackgroundLocal';

  InputFile background;

  @override
  Map<String, dynamic> get params => {
    'background': background,
  };

  InputBackgroundLocal({
    this.background,
  });

  InputBackgroundLocal.fromJson(Map<String, dynamic> json) {
    background = tryConvertToTdObject(json['background']);
  }
}

@reflector
class InputBackgroundRemote extends InputBackground {
  @override
  String get tdType => 'inputBackgroundRemote';

  int backgroundId;

  @override
  Map<String, dynamic> get params => {
    'background_id': backgroundId,
  };

  InputBackgroundRemote({
    this.backgroundId,
  });

  InputBackgroundRemote.fromJson(Map<String, dynamic> json) {
    backgroundId = tryConvertToTdObject(json['background_id']);
  }
}

@reflector
class ThemeSettings extends TdObject {
  @override
  String get tdType => 'themeSettings';

  int accentColor;
  Background background;
  BackgroundFill outgoingMessageFill;
  bool animateOutgoingMessageFill;
  int outgoingMessageAccentColor;

  @override
  Map<String, dynamic> get params => {
    'accent_color': accentColor,
    'background': background,
    'outgoing_message_fill': outgoingMessageFill,
    'animate_outgoing_message_fill': animateOutgoingMessageFill,
    'outgoing_message_accent_color': outgoingMessageAccentColor,
  };

  ThemeSettings({
    this.accentColor,
    this.background,
    this.outgoingMessageFill,
    this.animateOutgoingMessageFill,
    this.outgoingMessageAccentColor,
  });

  ThemeSettings.fromJson(Map<String, dynamic> json) {
    accentColor = tryConvertToTdObject(json['accent_color']);
    background = tryConvertToTdObject(json['background']);
    outgoingMessageFill = tryConvertToTdObject(json['outgoing_message_fill']);
    animateOutgoingMessageFill = tryConvertToTdObject(json['animate_outgoing_message_fill']);
    outgoingMessageAccentColor = tryConvertToTdObject(json['outgoing_message_accent_color']);
  }
}

@reflector
class ChatTheme extends TdObject {
  @override
  String get tdType => 'chatTheme';

  String name;
  ThemeSettings lightSettings;
  ThemeSettings darkSettings;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'light_settings': lightSettings,
    'dark_settings': darkSettings,
  };

  ChatTheme({
    this.name,
    this.lightSettings,
    this.darkSettings,
  });

  ChatTheme.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    lightSettings = tryConvertToTdObject(json['light_settings']);
    darkSettings = tryConvertToTdObject(json['dark_settings']);
  }
}

@reflector
class Hashtags extends TdObject {
  @override
  String get tdType => 'hashtags';

  List<String> hashtags;

  @override
  Map<String, dynamic> get params => {
    'hashtags': hashtags,
  };

  Hashtags({
    this.hashtags,
  });

  Hashtags.fromJson(Map<String, dynamic> json) {
    hashtags = tryConvertToTdObject(json['hashtags']);
  }
}

abstract class CanTransferOwnershipResult extends TdObject {}

@reflector
class CanTransferOwnershipResultOk extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultOk';

  @override
  Map<String, dynamic> get params => {};

  CanTransferOwnershipResultOk();

  CanTransferOwnershipResultOk.fromJson(Map<String, dynamic> json);
}

@reflector
class CanTransferOwnershipResultPasswordNeeded extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultPasswordNeeded';

  @override
  Map<String, dynamic> get params => {};

  CanTransferOwnershipResultPasswordNeeded();

  CanTransferOwnershipResultPasswordNeeded.fromJson(Map<String, dynamic> json);
}

@reflector
class CanTransferOwnershipResultPasswordTooFresh extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultPasswordTooFresh';

  int retryAfter;

  @override
  Map<String, dynamic> get params => {
    'retry_after': retryAfter,
  };

  CanTransferOwnershipResultPasswordTooFresh({
    this.retryAfter,
  });

  CanTransferOwnershipResultPasswordTooFresh.fromJson(Map<String, dynamic> json) {
    retryAfter = tryConvertToTdObject(json['retry_after']);
  }
}

@reflector
class CanTransferOwnershipResultSessionTooFresh extends CanTransferOwnershipResult {
  @override
  String get tdType => 'canTransferOwnershipResultSessionTooFresh';

  int retryAfter;

  @override
  Map<String, dynamic> get params => {
    'retry_after': retryAfter,
  };

  CanTransferOwnershipResultSessionTooFresh({
    this.retryAfter,
  });

  CanTransferOwnershipResultSessionTooFresh.fromJson(Map<String, dynamic> json) {
    retryAfter = tryConvertToTdObject(json['retry_after']);
  }
}

abstract class CheckChatUsernameResult extends TdObject {}

@reflector
class CheckChatUsernameResultOk extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultOk';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultOk();

  CheckChatUsernameResultOk.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultUsernameInvalid extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultUsernameInvalid';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultUsernameInvalid();

  CheckChatUsernameResultUsernameInvalid.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultUsernameOccupied extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultUsernameOccupied';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultUsernameOccupied();

  CheckChatUsernameResultUsernameOccupied.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultPublicChatsTooMuch extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultPublicChatsTooMuch';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultPublicChatsTooMuch();

  CheckChatUsernameResultPublicChatsTooMuch.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckChatUsernameResultPublicGroupsUnavailable extends CheckChatUsernameResult {
  @override
  String get tdType => 'checkChatUsernameResultPublicGroupsUnavailable';

  @override
  Map<String, dynamic> get params => {};

  CheckChatUsernameResultPublicGroupsUnavailable();

  CheckChatUsernameResultPublicGroupsUnavailable.fromJson(Map<String, dynamic> json);
}

abstract class CheckStickerSetNameResult extends TdObject {}

@reflector
class CheckStickerSetNameResultOk extends CheckStickerSetNameResult {
  @override
  String get tdType => 'checkStickerSetNameResultOk';

  @override
  Map<String, dynamic> get params => {};

  CheckStickerSetNameResultOk();

  CheckStickerSetNameResultOk.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckStickerSetNameResultNameInvalid extends CheckStickerSetNameResult {
  @override
  String get tdType => 'checkStickerSetNameResultNameInvalid';

  @override
  Map<String, dynamic> get params => {};

  CheckStickerSetNameResultNameInvalid();

  CheckStickerSetNameResultNameInvalid.fromJson(Map<String, dynamic> json);
}

@reflector
class CheckStickerSetNameResultNameOccupied extends CheckStickerSetNameResult {
  @override
  String get tdType => 'checkStickerSetNameResultNameOccupied';

  @override
  Map<String, dynamic> get params => {};

  CheckStickerSetNameResultNameOccupied();

  CheckStickerSetNameResultNameOccupied.fromJson(Map<String, dynamic> json);
}

abstract class ResetPasswordResult extends TdObject {}

@reflector
class ResetPasswordResultOk extends ResetPasswordResult {
  @override
  String get tdType => 'resetPasswordResultOk';

  @override
  Map<String, dynamic> get params => {};

  ResetPasswordResultOk();

  ResetPasswordResultOk.fromJson(Map<String, dynamic> json);
}

@reflector
class ResetPasswordResultPending extends ResetPasswordResult {
  @override
  String get tdType => 'resetPasswordResultPending';

  int pendingResetDate;

  @override
  Map<String, dynamic> get params => {
    'pending_reset_date': pendingResetDate,
  };

  ResetPasswordResultPending({
    this.pendingResetDate,
  });

  ResetPasswordResultPending.fromJson(Map<String, dynamic> json) {
    pendingResetDate = tryConvertToTdObject(json['pending_reset_date']);
  }
}

@reflector
class ResetPasswordResultDeclined extends ResetPasswordResult {
  @override
  String get tdType => 'resetPasswordResultDeclined';

  int retryDate;

  @override
  Map<String, dynamic> get params => {
    'retry_date': retryDate,
  };

  ResetPasswordResultDeclined({
    this.retryDate,
  });

  ResetPasswordResultDeclined.fromJson(Map<String, dynamic> json) {
    retryDate = tryConvertToTdObject(json['retry_date']);
  }
}

abstract class MessageFileType extends TdObject {}

@reflector
class MessageFileTypePrivate extends MessageFileType {
  @override
  String get tdType => 'messageFileTypePrivate';

  String name;

  @override
  Map<String, dynamic> get params => {
    'name': name,
  };

  MessageFileTypePrivate({
    this.name,
  });

  MessageFileTypePrivate.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
  }
}

@reflector
class MessageFileTypeGroup extends MessageFileType {
  @override
  String get tdType => 'messageFileTypeGroup';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  MessageFileTypeGroup({
    this.title,
  });

  MessageFileTypeGroup.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class MessageFileTypeUnknown extends MessageFileType {
  @override
  String get tdType => 'messageFileTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  MessageFileTypeUnknown();

  MessageFileTypeUnknown.fromJson(Map<String, dynamic> json);
}

abstract class PushMessageContent extends TdObject {}

@reflector
class PushMessageContentHidden extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentHidden';

  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'is_pinned': isPinned,
  };

  PushMessageContentHidden({
    this.isPinned,
  });

  PushMessageContentHidden.fromJson(Map<String, dynamic> json) {
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentAnimation extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentAnimation';

  Animation animation;
  String caption;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'animation': animation,
    'caption': caption,
    'is_pinned': isPinned,
  };

  PushMessageContentAnimation({
    this.animation,
    this.caption,
    this.isPinned,
  });

  PushMessageContentAnimation.fromJson(Map<String, dynamic> json) {
    animation = tryConvertToTdObject(json['animation']);
    caption = tryConvertToTdObject(json['caption']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentAudio extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentAudio';

  Audio audio;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'audio': audio,
    'is_pinned': isPinned,
  };

  PushMessageContentAudio({
    this.audio,
    this.isPinned,
  });

  PushMessageContentAudio.fromJson(Map<String, dynamic> json) {
    audio = tryConvertToTdObject(json['audio']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentContact extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentContact';

  String name;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'is_pinned': isPinned,
  };

  PushMessageContentContact({
    this.name,
    this.isPinned,
  });

  PushMessageContentContact.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentContactRegistered extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentContactRegistered';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentContactRegistered();

  PushMessageContentContactRegistered.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentDocument extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentDocument';

  Document document;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'document': document,
    'is_pinned': isPinned,
  };

  PushMessageContentDocument({
    this.document,
    this.isPinned,
  });

  PushMessageContentDocument.fromJson(Map<String, dynamic> json) {
    document = tryConvertToTdObject(json['document']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentGame extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentGame';

  String title;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'is_pinned': isPinned,
  };

  PushMessageContentGame({
    this.title,
    this.isPinned,
  });

  PushMessageContentGame.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentGameScore extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentGameScore';

  String title;
  int score;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'title': title,
    'score': score,
    'is_pinned': isPinned,
  };

  PushMessageContentGameScore({
    this.title,
    this.score,
    this.isPinned,
  });

  PushMessageContentGameScore.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
    score = tryConvertToTdObject(json['score']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentInvoice extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentInvoice';

  String price;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'price': price,
    'is_pinned': isPinned,
  };

  PushMessageContentInvoice({
    this.price,
    this.isPinned,
  });

  PushMessageContentInvoice.fromJson(Map<String, dynamic> json) {
    price = tryConvertToTdObject(json['price']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentLocation extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentLocation';

  bool isLive;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'is_live': isLive,
    'is_pinned': isPinned,
  };

  PushMessageContentLocation({
    this.isLive,
    this.isPinned,
  });

  PushMessageContentLocation.fromJson(Map<String, dynamic> json) {
    isLive = tryConvertToTdObject(json['is_live']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentPhoto extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentPhoto';

  Photo photo;
  String caption;
  bool isSecret;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'photo': photo,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  PushMessageContentPhoto({
    this.photo,
    this.caption,
    this.isSecret,
    this.isPinned,
  });

  PushMessageContentPhoto.fromJson(Map<String, dynamic> json) {
    photo = tryConvertToTdObject(json['photo']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentPoll extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentPoll';

  String question;
  bool isRegular;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'question': question,
    'is_regular': isRegular,
    'is_pinned': isPinned,
  };

  PushMessageContentPoll({
    this.question,
    this.isRegular,
    this.isPinned,
  });

  PushMessageContentPoll.fromJson(Map<String, dynamic> json) {
    question = tryConvertToTdObject(json['question']);
    isRegular = tryConvertToTdObject(json['is_regular']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentScreenshotTaken extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentScreenshotTaken';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentScreenshotTaken();

  PushMessageContentScreenshotTaken.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentSticker extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentSticker';

  Sticker sticker;
  String emoji;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emoji': emoji,
    'is_pinned': isPinned,
  };

  PushMessageContentSticker({
    this.sticker,
    this.emoji,
    this.isPinned,
  });

  PushMessageContentSticker.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    emoji = tryConvertToTdObject(json['emoji']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentText extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentText';

  String text;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'is_pinned': isPinned,
  };

  PushMessageContentText({
    this.text,
    this.isPinned,
  });

  PushMessageContentText.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentVideo extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVideo';

  Video video;
  String caption;
  bool isSecret;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'video': video,
    'caption': caption,
    'is_secret': isSecret,
    'is_pinned': isPinned,
  };

  PushMessageContentVideo({
    this.video,
    this.caption,
    this.isSecret,
    this.isPinned,
  });

  PushMessageContentVideo.fromJson(Map<String, dynamic> json) {
    video = tryConvertToTdObject(json['video']);
    caption = tryConvertToTdObject(json['caption']);
    isSecret = tryConvertToTdObject(json['is_secret']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentVideoNote extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVideoNote';

  VideoNote videoNote;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'video_note': videoNote,
    'is_pinned': isPinned,
  };

  PushMessageContentVideoNote({
    this.videoNote,
    this.isPinned,
  });

  PushMessageContentVideoNote.fromJson(Map<String, dynamic> json) {
    videoNote = tryConvertToTdObject(json['video_note']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentVoiceNote extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentVoiceNote';

  VoiceNote voiceNote;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'voice_note': voiceNote,
    'is_pinned': isPinned,
  };

  PushMessageContentVoiceNote({
    this.voiceNote,
    this.isPinned,
  });

  PushMessageContentVoiceNote.fromJson(Map<String, dynamic> json) {
    voiceNote = tryConvertToTdObject(json['voice_note']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class PushMessageContentBasicGroupChatCreate extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentBasicGroupChatCreate';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentBasicGroupChatCreate();

  PushMessageContentBasicGroupChatCreate.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentChatAddMembers extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatAddMembers';

  String memberName;
  bool isCurrentUser;
  bool isReturned;

  @override
  Map<String, dynamic> get params => {
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_returned': isReturned,
  };

  PushMessageContentChatAddMembers({
    this.memberName,
    this.isCurrentUser,
    this.isReturned,
  });

  PushMessageContentChatAddMembers.fromJson(Map<String, dynamic> json) {
    memberName = tryConvertToTdObject(json['member_name']);
    isCurrentUser = tryConvertToTdObject(json['is_current_user']);
    isReturned = tryConvertToTdObject(json['is_returned']);
  }
}

@reflector
class PushMessageContentChatChangePhoto extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatChangePhoto';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentChatChangePhoto();

  PushMessageContentChatChangePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentChatChangeTitle extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatChangeTitle';

  String title;

  @override
  Map<String, dynamic> get params => {
    'title': title,
  };

  PushMessageContentChatChangeTitle({
    this.title,
  });

  PushMessageContentChatChangeTitle.fromJson(Map<String, dynamic> json) {
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class PushMessageContentChatSetTheme extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatSetTheme';

  String themeName;

  @override
  Map<String, dynamic> get params => {
    'theme_name': themeName,
  };

  PushMessageContentChatSetTheme({
    this.themeName,
  });

  PushMessageContentChatSetTheme.fromJson(Map<String, dynamic> json) {
    themeName = tryConvertToTdObject(json['theme_name']);
  }
}

@reflector
class PushMessageContentChatDeleteMember extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatDeleteMember';

  String memberName;
  bool isCurrentUser;
  bool isLeft;

  @override
  Map<String, dynamic> get params => {
    'member_name': memberName,
    'is_current_user': isCurrentUser,
    'is_left': isLeft,
  };

  PushMessageContentChatDeleteMember({
    this.memberName,
    this.isCurrentUser,
    this.isLeft,
  });

  PushMessageContentChatDeleteMember.fromJson(Map<String, dynamic> json) {
    memberName = tryConvertToTdObject(json['member_name']);
    isCurrentUser = tryConvertToTdObject(json['is_current_user']);
    isLeft = tryConvertToTdObject(json['is_left']);
  }
}

@reflector
class PushMessageContentChatJoinByLink extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentChatJoinByLink';

  @override
  Map<String, dynamic> get params => {};

  PushMessageContentChatJoinByLink();

  PushMessageContentChatJoinByLink.fromJson(Map<String, dynamic> json);
}

@reflector
class PushMessageContentMessageForwards extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentMessageForwards';

  int totalCount;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
  };

  PushMessageContentMessageForwards({
    this.totalCount,
  });

  PushMessageContentMessageForwards.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
  }
}

@reflector
class PushMessageContentMediaAlbum extends PushMessageContent {
  @override
  String get tdType => 'pushMessageContentMediaAlbum';

  int totalCount;
  bool hasPhotos;
  bool hasVideos;
  bool hasAudios;
  bool hasDocuments;

  @override
  Map<String, dynamic> get params => {
    'total_count': totalCount,
    'has_photos': hasPhotos,
    'has_videos': hasVideos,
    'has_audios': hasAudios,
    'has_documents': hasDocuments,
  };

  PushMessageContentMediaAlbum({
    this.totalCount,
    this.hasPhotos,
    this.hasVideos,
    this.hasAudios,
    this.hasDocuments,
  });

  PushMessageContentMediaAlbum.fromJson(Map<String, dynamic> json) {
    totalCount = tryConvertToTdObject(json['total_count']);
    hasPhotos = tryConvertToTdObject(json['has_photos']);
    hasVideos = tryConvertToTdObject(json['has_videos']);
    hasAudios = tryConvertToTdObject(json['has_audios']);
    hasDocuments = tryConvertToTdObject(json['has_documents']);
  }
}

abstract class NotificationType extends TdObject {}

@reflector
class NotificationTypeNewMessage extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewMessage';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  NotificationTypeNewMessage({
    this.message,
  });

  NotificationTypeNewMessage.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class NotificationTypeNewSecretChat extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewSecretChat';

  @override
  Map<String, dynamic> get params => {};

  NotificationTypeNewSecretChat();

  NotificationTypeNewSecretChat.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationTypeNewCall extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewCall';

  int callId;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
  };

  NotificationTypeNewCall({
    this.callId,
  });

  NotificationTypeNewCall.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
  }
}

@reflector
class NotificationTypeNewPushMessage extends NotificationType {
  @override
  String get tdType => 'notificationTypeNewPushMessage';

  int messageId;
  MessageSender sender;
  String senderName;
  bool isOutgoing;
  PushMessageContent content;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'sender': sender,
    'sender_name': senderName,
    'is_outgoing': isOutgoing,
    'content': content,
  };

  NotificationTypeNewPushMessage({
    this.messageId,
    this.sender,
    this.senderName,
    this.isOutgoing,
    this.content,
  });

  NotificationTypeNewPushMessage.fromJson(Map<String, dynamic> json) {
    messageId = tryConvertToTdObject(json['message_id']);
    sender = tryConvertToTdObject(json['sender']);
    senderName = tryConvertToTdObject(json['sender_name']);
    isOutgoing = tryConvertToTdObject(json['is_outgoing']);
    content = tryConvertToTdObject(json['content']);
  }
}

abstract class NotificationGroupType extends TdObject {}

@reflector
class NotificationGroupTypeMessages extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeMessages';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeMessages();

  NotificationGroupTypeMessages.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationGroupTypeMentions extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeMentions';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeMentions();

  NotificationGroupTypeMentions.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationGroupTypeSecretChat extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeSecretChat';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeSecretChat();

  NotificationGroupTypeSecretChat.fromJson(Map<String, dynamic> json);
}

@reflector
class NotificationGroupTypeCalls extends NotificationGroupType {
  @override
  String get tdType => 'notificationGroupTypeCalls';

  @override
  Map<String, dynamic> get params => {};

  NotificationGroupTypeCalls();

  NotificationGroupTypeCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class Notification extends TdObject {
  @override
  String get tdType => 'notification';

  int id;
  int date;
  bool isSilent;
  NotificationType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'date': date,
    'is_silent': isSilent,
    'type': type,
  };

  Notification({
    this.id,
    this.date,
    this.isSilent,
    this.type,
  });

  Notification.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    date = tryConvertToTdObject(json['date']);
    isSilent = tryConvertToTdObject(json['is_silent']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class NotificationGroup extends TdObject {
  @override
  String get tdType => 'notificationGroup';

  int id;
  NotificationGroupType type;
  int chatId;
  int totalCount;
  List<Notification> notifications;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'type': type,
    'chat_id': chatId,
    'total_count': totalCount,
    'notifications': notifications,
  };

  NotificationGroup({
    this.id,
    this.type,
    this.chatId,
    this.totalCount,
    this.notifications,
  });

  NotificationGroup.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    type = tryConvertToTdObject(json['type']);
    chatId = tryConvertToTdObject(json['chat_id']);
    totalCount = tryConvertToTdObject(json['total_count']);
    notifications = tryConvertToTdObject(json['notifications']);
  }
}

abstract class OptionValue extends TdObject {}

@reflector
class OptionValueBoolean extends OptionValue {
  @override
  String get tdType => 'optionValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueBoolean({
    this.value,
  });

  OptionValueBoolean.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class OptionValueEmpty extends OptionValue {
  @override
  String get tdType => 'optionValueEmpty';

  @override
  Map<String, dynamic> get params => {};

  OptionValueEmpty();

  OptionValueEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class OptionValueInteger extends OptionValue {
  @override
  String get tdType => 'optionValueInteger';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueInteger({
    this.value,
  });

  OptionValueInteger.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class OptionValueString extends OptionValue {
  @override
  String get tdType => 'optionValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  OptionValueString({
    this.value,
  });

  OptionValueString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonObjectMember extends TdObject {
  @override
  String get tdType => 'jsonObjectMember';

  String key;
  JsonValue value;

  @override
  Map<String, dynamic> get params => {
    'key': key,
    'value': value,
  };

  JsonObjectMember({
    this.key,
    this.value,
  });

  JsonObjectMember.fromJson(Map<String, dynamic> json) {
    key = tryConvertToTdObject(json['key']);
    value = tryConvertToTdObject(json['value']);
  }
}

abstract class JsonValue extends TdObject {}

@reflector
class JsonValueNull extends JsonValue {
  @override
  String get tdType => 'jsonValueNull';

  @override
  Map<String, dynamic> get params => {};

  JsonValueNull();

  JsonValueNull.fromJson(Map<String, dynamic> json);
}

@reflector
class JsonValueBoolean extends JsonValue {
  @override
  String get tdType => 'jsonValueBoolean';

  bool value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueBoolean({
    this.value,
  });

  JsonValueBoolean.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonValueNumber extends JsonValue {
  @override
  String get tdType => 'jsonValueNumber';

  double value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueNumber({
    this.value,
  });

  JsonValueNumber.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonValueString extends JsonValue {
  @override
  String get tdType => 'jsonValueString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  JsonValueString({
    this.value,
  });

  JsonValueString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class JsonValueArray extends JsonValue {
  @override
  String get tdType => 'jsonValueArray';

  List<JsonValue> values;

  @override
  Map<String, dynamic> get params => {
    'values': values,
  };

  JsonValueArray({
    this.values,
  });

  JsonValueArray.fromJson(Map<String, dynamic> json) {
    values = tryConvertToTdObject(json['values']);
  }
}

@reflector
class JsonValueObject extends JsonValue {
  @override
  String get tdType => 'jsonValueObject';

  List<JsonObjectMember> members;

  @override
  Map<String, dynamic> get params => {
    'members': members,
  };

  JsonValueObject({
    this.members,
  });

  JsonValueObject.fromJson(Map<String, dynamic> json) {
    members = tryConvertToTdObject(json['members']);
  }
}

abstract class UserPrivacySettingRule extends TdObject {}

@reflector
class UserPrivacySettingRuleAllowAll extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowAll';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleAllowAll();

  UserPrivacySettingRuleAllowAll.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleAllowContacts extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowContacts';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleAllowContacts();

  UserPrivacySettingRuleAllowContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleAllowUsers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowUsers';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  UserPrivacySettingRuleAllowUsers({
    this.userIds,
  });

  UserPrivacySettingRuleAllowUsers.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class UserPrivacySettingRuleAllowChatMembers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleAllowChatMembers';

  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_ids': chatIds,
  };

  UserPrivacySettingRuleAllowChatMembers({
    this.chatIds,
  });

  UserPrivacySettingRuleAllowChatMembers.fromJson(Map<String, dynamic> json) {
    chatIds = tryConvertToTdObject(json['chat_ids']);
  }
}

@reflector
class UserPrivacySettingRuleRestrictAll extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictAll';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleRestrictAll();

  UserPrivacySettingRuleRestrictAll.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleRestrictContacts extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictContacts';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingRuleRestrictContacts();

  UserPrivacySettingRuleRestrictContacts.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictUsers';

  List<int> userIds;

  @override
  Map<String, dynamic> get params => {
    'user_ids': userIds,
  };

  UserPrivacySettingRuleRestrictUsers({
    this.userIds,
  });

  UserPrivacySettingRuleRestrictUsers.fromJson(Map<String, dynamic> json) {
    userIds = tryConvertToTdObject(json['user_ids']);
  }
}

@reflector
class UserPrivacySettingRuleRestrictChatMembers extends UserPrivacySettingRule {
  @override
  String get tdType => 'userPrivacySettingRuleRestrictChatMembers';

  List<int> chatIds;

  @override
  Map<String, dynamic> get params => {
    'chat_ids': chatIds,
  };

  UserPrivacySettingRuleRestrictChatMembers({
    this.chatIds,
  });

  UserPrivacySettingRuleRestrictChatMembers.fromJson(Map<String, dynamic> json) {
    chatIds = tryConvertToTdObject(json['chat_ids']);
  }
}

@reflector
class UserPrivacySettingRules extends TdObject {
  @override
  String get tdType => 'userPrivacySettingRules';

  List<UserPrivacySettingRule> rules;

  @override
  Map<String, dynamic> get params => {
    'rules': rules,
  };

  UserPrivacySettingRules({
    this.rules,
  });

  UserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    rules = tryConvertToTdObject(json['rules']);
  }
}

abstract class UserPrivacySetting extends TdObject {}

@reflector
class UserPrivacySettingShowStatus extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowStatus';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowStatus();

  UserPrivacySettingShowStatus.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingShowProfilePhoto extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowProfilePhoto';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowProfilePhoto();

  UserPrivacySettingShowProfilePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingShowLinkInForwardedMessages extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowLinkInForwardedMessages';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowLinkInForwardedMessages();

  UserPrivacySettingShowLinkInForwardedMessages.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingShowPhoneNumber extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingShowPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingShowPhoneNumber();

  UserPrivacySettingShowPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowChatInvites extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowChatInvites';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowChatInvites();

  UserPrivacySettingAllowChatInvites.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowCalls';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowCalls();

  UserPrivacySettingAllowCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowPeerToPeerCalls';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowPeerToPeerCalls();

  UserPrivacySettingAllowPeerToPeerCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class UserPrivacySettingAllowFindingByPhoneNumber extends UserPrivacySetting {
  @override
  String get tdType => 'userPrivacySettingAllowFindingByPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  UserPrivacySettingAllowFindingByPhoneNumber();

  UserPrivacySettingAllowFindingByPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class AccountTtl extends TdObject {
  @override
  String get tdType => 'accountTtl';

  int days;

  @override
  Map<String, dynamic> get params => {
    'days': days,
  };

  AccountTtl({
    this.days,
  });

  AccountTtl.fromJson(Map<String, dynamic> json) {
    days = tryConvertToTdObject(json['days']);
  }
}

@reflector
class Session extends TdObject {
  @override
  String get tdType => 'session';

  int id;
  bool isCurrent;
  bool isPasswordPending;
  int apiId;
  String applicationName;
  String applicationVersion;
  bool isOfficialApplication;
  String deviceModel;
  String platform;
  String systemVersion;
  int logInDate;
  int lastActiveDate;
  String ip;
  String country;
  String region;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'is_current': isCurrent,
    'is_password_pending': isPasswordPending,
    'api_id': apiId,
    'application_name': applicationName,
    'application_version': applicationVersion,
    'is_official_application': isOfficialApplication,
    'device_model': deviceModel,
    'platform': platform,
    'system_version': systemVersion,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'country': country,
    'region': region,
  };

  Session({
    this.id,
    this.isCurrent,
    this.isPasswordPending,
    this.apiId,
    this.applicationName,
    this.applicationVersion,
    this.isOfficialApplication,
    this.deviceModel,
    this.platform,
    this.systemVersion,
    this.logInDate,
    this.lastActiveDate,
    this.ip,
    this.country,
    this.region,
  });

  Session.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    isCurrent = tryConvertToTdObject(json['is_current']);
    isPasswordPending = tryConvertToTdObject(json['is_password_pending']);
    apiId = tryConvertToTdObject(json['api_id']);
    applicationName = tryConvertToTdObject(json['application_name']);
    applicationVersion = tryConvertToTdObject(json['application_version']);
    isOfficialApplication = tryConvertToTdObject(json['is_official_application']);
    deviceModel = tryConvertToTdObject(json['device_model']);
    platform = tryConvertToTdObject(json['platform']);
    systemVersion = tryConvertToTdObject(json['system_version']);
    logInDate = tryConvertToTdObject(json['log_in_date']);
    lastActiveDate = tryConvertToTdObject(json['last_active_date']);
    ip = tryConvertToTdObject(json['ip']);
    country = tryConvertToTdObject(json['country']);
    region = tryConvertToTdObject(json['region']);
  }
}

@reflector
class Sessions extends TdObject {
  @override
  String get tdType => 'sessions';

  List<Session> sessions;

  @override
  Map<String, dynamic> get params => {
    'sessions': sessions,
  };

  Sessions({
    this.sessions,
  });

  Sessions.fromJson(Map<String, dynamic> json) {
    sessions = tryConvertToTdObject(json['sessions']);
  }
}

@reflector
class ConnectedWebsite extends TdObject {
  @override
  String get tdType => 'connectedWebsite';

  int id;
  String domainName;
  int botUserId;
  String browser;
  String platform;
  int logInDate;
  int lastActiveDate;
  String ip;
  String location;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'domain_name': domainName,
    'bot_user_id': botUserId,
    'browser': browser,
    'platform': platform,
    'log_in_date': logInDate,
    'last_active_date': lastActiveDate,
    'ip': ip,
    'location': location,
  };

  ConnectedWebsite({
    this.id,
    this.domainName,
    this.botUserId,
    this.browser,
    this.platform,
    this.logInDate,
    this.lastActiveDate,
    this.ip,
    this.location,
  });

  ConnectedWebsite.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    domainName = tryConvertToTdObject(json['domain_name']);
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    browser = tryConvertToTdObject(json['browser']);
    platform = tryConvertToTdObject(json['platform']);
    logInDate = tryConvertToTdObject(json['log_in_date']);
    lastActiveDate = tryConvertToTdObject(json['last_active_date']);
    ip = tryConvertToTdObject(json['ip']);
    location = tryConvertToTdObject(json['location']);
  }
}

@reflector
class ConnectedWebsites extends TdObject {
  @override
  String get tdType => 'connectedWebsites';

  List<ConnectedWebsite> websites;

  @override
  Map<String, dynamic> get params => {
    'websites': websites,
  };

  ConnectedWebsites({
    this.websites,
  });

  ConnectedWebsites.fromJson(Map<String, dynamic> json) {
    websites = tryConvertToTdObject(json['websites']);
  }
}

abstract class ChatReportReason extends TdObject {}

@reflector
class ChatReportReasonSpam extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonSpam';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonSpam();

  ChatReportReasonSpam.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonViolence extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonViolence';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonViolence();

  ChatReportReasonViolence.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonPornography extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonPornography';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonPornography();

  ChatReportReasonPornography.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonChildAbuse extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonChildAbuse';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonChildAbuse();

  ChatReportReasonChildAbuse.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonCopyright extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonCopyright';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonCopyright();

  ChatReportReasonCopyright.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonUnrelatedLocation extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonUnrelatedLocation';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonUnrelatedLocation();

  ChatReportReasonUnrelatedLocation.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonFake extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonFake';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonFake();

  ChatReportReasonFake.fromJson(Map<String, dynamic> json);
}

@reflector
class ChatReportReasonCustom extends ChatReportReason {
  @override
  String get tdType => 'chatReportReasonCustom';

  @override
  Map<String, dynamic> get params => {};

  ChatReportReasonCustom();

  ChatReportReasonCustom.fromJson(Map<String, dynamic> json);
}

abstract class InternalLinkType extends TdObject {}

@reflector
class InternalLinkTypeActiveSessions extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeActiveSessions';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeActiveSessions();

  InternalLinkTypeActiveSessions.fromJson(Map<String, dynamic> json);
}

@reflector
class InternalLinkTypeAuthenticationCode extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeAuthenticationCode';

  String code;

  @override
  Map<String, dynamic> get params => {
    'code': code,
  };

  InternalLinkTypeAuthenticationCode({
    this.code,
  });

  InternalLinkTypeAuthenticationCode.fromJson(Map<String, dynamic> json) {
    code = tryConvertToTdObject(json['code']);
  }
}

@reflector
class InternalLinkTypeBackground extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeBackground';

  String backgroundName;

  @override
  Map<String, dynamic> get params => {
    'background_name': backgroundName,
  };

  InternalLinkTypeBackground({
    this.backgroundName,
  });

  InternalLinkTypeBackground.fromJson(Map<String, dynamic> json) {
    backgroundName = tryConvertToTdObject(json['background_name']);
  }
}

@reflector
class InternalLinkTypeBotStart extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeBotStart';

  String botUsername;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'bot_username': botUsername,
    'start_parameter': startParameter,
  };

  InternalLinkTypeBotStart({
    this.botUsername,
    this.startParameter,
  });

  InternalLinkTypeBotStart.fromJson(Map<String, dynamic> json) {
    botUsername = tryConvertToTdObject(json['bot_username']);
    startParameter = tryConvertToTdObject(json['start_parameter']);
  }
}

@reflector
class InternalLinkTypeBotStartInGroup extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeBotStartInGroup';

  String botUsername;
  String startParameter;

  @override
  Map<String, dynamic> get params => {
    'bot_username': botUsername,
    'start_parameter': startParameter,
  };

  InternalLinkTypeBotStartInGroup({
    this.botUsername,
    this.startParameter,
  });

  InternalLinkTypeBotStartInGroup.fromJson(Map<String, dynamic> json) {
    botUsername = tryConvertToTdObject(json['bot_username']);
    startParameter = tryConvertToTdObject(json['start_parameter']);
  }
}

@reflector
class InternalLinkTypeChangePhoneNumber extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeChangePhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeChangePhoneNumber();

  InternalLinkTypeChangePhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class InternalLinkTypeChatInvite extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeChatInvite';

  String inviteLink;

  @override
  Map<String, dynamic> get params => {
    'invite_link': inviteLink,
  };

  InternalLinkTypeChatInvite({
    this.inviteLink,
  });

  InternalLinkTypeChatInvite.fromJson(Map<String, dynamic> json) {
    inviteLink = tryConvertToTdObject(json['invite_link']);
  }
}

@reflector
class InternalLinkTypeFilterSettings extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeFilterSettings';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeFilterSettings();

  InternalLinkTypeFilterSettings.fromJson(Map<String, dynamic> json);
}

@reflector
class InternalLinkTypeGame extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeGame';

  String botUsername;
  String gameShortName;

  @override
  Map<String, dynamic> get params => {
    'bot_username': botUsername,
    'game_short_name': gameShortName,
  };

  InternalLinkTypeGame({
    this.botUsername,
    this.gameShortName,
  });

  InternalLinkTypeGame.fromJson(Map<String, dynamic> json) {
    botUsername = tryConvertToTdObject(json['bot_username']);
    gameShortName = tryConvertToTdObject(json['game_short_name']);
  }
}

@reflector
class InternalLinkTypeLanguagePack extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeLanguagePack';

  String languagePackId;

  @override
  Map<String, dynamic> get params => {
    'language_pack_id': languagePackId,
  };

  InternalLinkTypeLanguagePack({
    this.languagePackId,
  });

  InternalLinkTypeLanguagePack.fromJson(Map<String, dynamic> json) {
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
  }
}

@reflector
class InternalLinkTypeMessage extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeMessage';

  String url;

  @override
  Map<String, dynamic> get params => {
    'url': url,
  };

  InternalLinkTypeMessage({
    this.url,
  });

  InternalLinkTypeMessage.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
  }
}

@reflector
class InternalLinkTypeMessageDraft extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeMessageDraft';

  FormattedText text;
  bool containsLink;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'contains_link': containsLink,
  };

  InternalLinkTypeMessageDraft({
    this.text,
    this.containsLink,
  });

  InternalLinkTypeMessageDraft.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    containsLink = tryConvertToTdObject(json['contains_link']);
  }
}

@reflector
class InternalLinkTypePassportDataRequest extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypePassportDataRequest';

  int botUserId;
  String scope;
  String publicKey;
  String nonce;
  String callbackUrl;

  @override
  Map<String, dynamic> get params => {
    'bot_user_id': botUserId,
    'scope': scope,
    'public_key': publicKey,
    'nonce': nonce,
    'callback_url': callbackUrl,
  };

  InternalLinkTypePassportDataRequest({
    this.botUserId,
    this.scope,
    this.publicKey,
    this.nonce,
    this.callbackUrl,
  });

  InternalLinkTypePassportDataRequest.fromJson(Map<String, dynamic> json) {
    botUserId = tryConvertToTdObject(json['bot_user_id']);
    scope = tryConvertToTdObject(json['scope']);
    publicKey = tryConvertToTdObject(json['public_key']);
    nonce = tryConvertToTdObject(json['nonce']);
    callbackUrl = tryConvertToTdObject(json['callback_url']);
  }
}

@reflector
class InternalLinkTypePhoneNumberConfirmation extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypePhoneNumberConfirmation';

  String hash;
  String phoneNumber;

  @override
  Map<String, dynamic> get params => {
    'hash': hash,
    'phone_number': phoneNumber,
  };

  InternalLinkTypePhoneNumberConfirmation({
    this.hash,
    this.phoneNumber,
  });

  InternalLinkTypePhoneNumberConfirmation.fromJson(Map<String, dynamic> json) {
    hash = tryConvertToTdObject(json['hash']);
    phoneNumber = tryConvertToTdObject(json['phone_number']);
  }
}

@reflector
class InternalLinkTypeProxy extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeProxy';

  String server;
  int port;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'server': server,
    'port': port,
    'type': type,
  };

  InternalLinkTypeProxy({
    this.server,
    this.port,
    this.type,
  });

  InternalLinkTypeProxy.fromJson(Map<String, dynamic> json) {
    server = tryConvertToTdObject(json['server']);
    port = tryConvertToTdObject(json['port']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class InternalLinkTypePublicChat extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypePublicChat';

  String chatUsername;

  @override
  Map<String, dynamic> get params => {
    'chat_username': chatUsername,
  };

  InternalLinkTypePublicChat({
    this.chatUsername,
  });

  InternalLinkTypePublicChat.fromJson(Map<String, dynamic> json) {
    chatUsername = tryConvertToTdObject(json['chat_username']);
  }
}

@reflector
class InternalLinkTypeQrCodeAuthentication extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeQrCodeAuthentication';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeQrCodeAuthentication();

  InternalLinkTypeQrCodeAuthentication.fromJson(Map<String, dynamic> json);
}

@reflector
class InternalLinkTypeSettings extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeSettings';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeSettings();

  InternalLinkTypeSettings.fromJson(Map<String, dynamic> json);
}

@reflector
class InternalLinkTypeStickerSet extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeStickerSet';

  String stickerSetName;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_name': stickerSetName,
  };

  InternalLinkTypeStickerSet({
    this.stickerSetName,
  });

  InternalLinkTypeStickerSet.fromJson(Map<String, dynamic> json) {
    stickerSetName = tryConvertToTdObject(json['sticker_set_name']);
  }
}

@reflector
class InternalLinkTypeTheme extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeTheme';

  String themeName;

  @override
  Map<String, dynamic> get params => {
    'theme_name': themeName,
  };

  InternalLinkTypeTheme({
    this.themeName,
  });

  InternalLinkTypeTheme.fromJson(Map<String, dynamic> json) {
    themeName = tryConvertToTdObject(json['theme_name']);
  }
}

@reflector
class InternalLinkTypeThemeSettings extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeThemeSettings';

  @override
  Map<String, dynamic> get params => {};

  InternalLinkTypeThemeSettings();

  InternalLinkTypeThemeSettings.fromJson(Map<String, dynamic> json);
}

@reflector
class InternalLinkTypeUnknownDeepLink extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeUnknownDeepLink';

  String link;

  @override
  Map<String, dynamic> get params => {
    'link': link,
  };

  InternalLinkTypeUnknownDeepLink({
    this.link,
  });

  InternalLinkTypeUnknownDeepLink.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
  }
}

@reflector
class InternalLinkTypeVoiceChat extends InternalLinkType {
  @override
  String get tdType => 'internalLinkTypeVoiceChat';

  String chatUsername;
  String inviteHash;
  bool isLiveStream;

  @override
  Map<String, dynamic> get params => {
    'chat_username': chatUsername,
    'invite_hash': inviteHash,
    'is_live_stream': isLiveStream,
  };

  InternalLinkTypeVoiceChat({
    this.chatUsername,
    this.inviteHash,
    this.isLiveStream,
  });

  InternalLinkTypeVoiceChat.fromJson(Map<String, dynamic> json) {
    chatUsername = tryConvertToTdObject(json['chat_username']);
    inviteHash = tryConvertToTdObject(json['invite_hash']);
    isLiveStream = tryConvertToTdObject(json['is_live_stream']);
  }
}

@reflector
class MessageLink extends TdObject {
  @override
  String get tdType => 'messageLink';

  String link;
  bool isPublic;

  @override
  Map<String, dynamic> get params => {
    'link': link,
    'is_public': isPublic,
  };

  MessageLink({
    this.link,
    this.isPublic,
  });

  MessageLink.fromJson(Map<String, dynamic> json) {
    link = tryConvertToTdObject(json['link']);
    isPublic = tryConvertToTdObject(json['is_public']);
  }
}

@reflector
class MessageLinkInfo extends TdObject {
  @override
  String get tdType => 'messageLinkInfo';

  bool isPublic;
  int chatId;
  Message message;
  int mediaTimestamp;
  bool forAlbum;
  bool forComment;

  @override
  Map<String, dynamic> get params => {
    'is_public': isPublic,
    'chat_id': chatId,
    'message': message,
    'media_timestamp': mediaTimestamp,
    'for_album': forAlbum,
    'for_comment': forComment,
  };

  MessageLinkInfo({
    this.isPublic,
    this.chatId,
    this.message,
    this.mediaTimestamp,
    this.forAlbum,
    this.forComment,
  });

  MessageLinkInfo.fromJson(Map<String, dynamic> json) {
    isPublic = tryConvertToTdObject(json['is_public']);
    chatId = tryConvertToTdObject(json['chat_id']);
    message = tryConvertToTdObject(json['message']);
    mediaTimestamp = tryConvertToTdObject(json['media_timestamp']);
    forAlbum = tryConvertToTdObject(json['for_album']);
    forComment = tryConvertToTdObject(json['for_comment']);
  }
}

@reflector
class FilePart extends TdObject {
  @override
  String get tdType => 'filePart';

  String data;

  @override
  Map<String, dynamic> get params => {
    'data': data,
  };

  FilePart({
    this.data,
  });

  FilePart.fromJson(Map<String, dynamic> json) {
    data = tryConvertToTdObject(json['data']);
  }
}

abstract class FileType extends TdObject {}

@reflector
class FileTypeNone extends FileType {
  @override
  String get tdType => 'fileTypeNone';

  @override
  Map<String, dynamic> get params => {};

  FileTypeNone();

  FileTypeNone.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeAnimation extends FileType {
  @override
  String get tdType => 'fileTypeAnimation';

  @override
  Map<String, dynamic> get params => {};

  FileTypeAnimation();

  FileTypeAnimation.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeAudio extends FileType {
  @override
  String get tdType => 'fileTypeAudio';

  @override
  Map<String, dynamic> get params => {};

  FileTypeAudio();

  FileTypeAudio.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeDocument extends FileType {
  @override
  String get tdType => 'fileTypeDocument';

  @override
  Map<String, dynamic> get params => {};

  FileTypeDocument();

  FileTypeDocument.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypePhoto extends FileType {
  @override
  String get tdType => 'fileTypePhoto';

  @override
  Map<String, dynamic> get params => {};

  FileTypePhoto();

  FileTypePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeProfilePhoto extends FileType {
  @override
  String get tdType => 'fileTypeProfilePhoto';

  @override
  Map<String, dynamic> get params => {};

  FileTypeProfilePhoto();

  FileTypeProfilePhoto.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSecret extends FileType {
  @override
  String get tdType => 'fileTypeSecret';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecret();

  FileTypeSecret.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSecretThumbnail extends FileType {
  @override
  String get tdType => 'fileTypeSecretThumbnail';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecretThumbnail();

  FileTypeSecretThumbnail.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSecure extends FileType {
  @override
  String get tdType => 'fileTypeSecure';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSecure();

  FileTypeSecure.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeSticker extends FileType {
  @override
  String get tdType => 'fileTypeSticker';

  @override
  Map<String, dynamic> get params => {};

  FileTypeSticker();

  FileTypeSticker.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeThumbnail extends FileType {
  @override
  String get tdType => 'fileTypeThumbnail';

  @override
  Map<String, dynamic> get params => {};

  FileTypeThumbnail();

  FileTypeThumbnail.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeUnknown extends FileType {
  @override
  String get tdType => 'fileTypeUnknown';

  @override
  Map<String, dynamic> get params => {};

  FileTypeUnknown();

  FileTypeUnknown.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeVideo extends FileType {
  @override
  String get tdType => 'fileTypeVideo';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVideo();

  FileTypeVideo.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeVideoNote extends FileType {
  @override
  String get tdType => 'fileTypeVideoNote';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVideoNote();

  FileTypeVideoNote.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeVoiceNote extends FileType {
  @override
  String get tdType => 'fileTypeVoiceNote';

  @override
  Map<String, dynamic> get params => {};

  FileTypeVoiceNote();

  FileTypeVoiceNote.fromJson(Map<String, dynamic> json);
}

@reflector
class FileTypeWallpaper extends FileType {
  @override
  String get tdType => 'fileTypeWallpaper';

  @override
  Map<String, dynamic> get params => {};

  FileTypeWallpaper();

  FileTypeWallpaper.fromJson(Map<String, dynamic> json);
}

@reflector
class StorageStatisticsByFileType extends TdObject {
  @override
  String get tdType => 'storageStatisticsByFileType';

  FileType fileType;
  int size;
  int count;

  @override
  Map<String, dynamic> get params => {
    'file_type': fileType,
    'size': size,
    'count': count,
  };

  StorageStatisticsByFileType({
    this.fileType,
    this.size,
    this.count,
  });

  StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) {
    fileType = tryConvertToTdObject(json['file_type']);
    size = tryConvertToTdObject(json['size']);
    count = tryConvertToTdObject(json['count']);
  }
}

@reflector
class StorageStatisticsByChat extends TdObject {
  @override
  String get tdType => 'storageStatisticsByChat';

  int chatId;
  int size;
  int count;
  List<StorageStatisticsByFileType> byFileType;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'size': size,
    'count': count,
    'by_file_type': byFileType,
  };

  StorageStatisticsByChat({
    this.chatId,
    this.size,
    this.count,
    this.byFileType,
  });

  StorageStatisticsByChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    size = tryConvertToTdObject(json['size']);
    count = tryConvertToTdObject(json['count']);
    byFileType = tryConvertToTdObject(json['by_file_type']);
  }
}

@reflector
class StorageStatistics extends TdObject {
  @override
  String get tdType => 'storageStatistics';

  int size;
  int count;
  List<StorageStatisticsByChat> byChat;

  @override
  Map<String, dynamic> get params => {
    'size': size,
    'count': count,
    'by_chat': byChat,
  };

  StorageStatistics({
    this.size,
    this.count,
    this.byChat,
  });

  StorageStatistics.fromJson(Map<String, dynamic> json) {
    size = tryConvertToTdObject(json['size']);
    count = tryConvertToTdObject(json['count']);
    byChat = tryConvertToTdObject(json['by_chat']);
  }
}

@reflector
class StorageStatisticsFast extends TdObject {
  @override
  String get tdType => 'storageStatisticsFast';

  int filesSize;
  int fileCount;
  int databaseSize;
  int languagePackDatabaseSize;
  int logSize;

  @override
  Map<String, dynamic> get params => {
    'files_size': filesSize,
    'file_count': fileCount,
    'database_size': databaseSize,
    'language_pack_database_size': languagePackDatabaseSize,
    'log_size': logSize,
  };

  StorageStatisticsFast({
    this.filesSize,
    this.fileCount,
    this.databaseSize,
    this.languagePackDatabaseSize,
    this.logSize,
  });

  StorageStatisticsFast.fromJson(Map<String, dynamic> json) {
    filesSize = tryConvertToTdObject(json['files_size']);
    fileCount = tryConvertToTdObject(json['file_count']);
    databaseSize = tryConvertToTdObject(json['database_size']);
    languagePackDatabaseSize = tryConvertToTdObject(json['language_pack_database_size']);
    logSize = tryConvertToTdObject(json['log_size']);
  }
}

@reflector
class DatabaseStatistics extends TdObject {
  @override
  String get tdType => 'databaseStatistics';

  String statistics;

  @override
  Map<String, dynamic> get params => {
    'statistics': statistics,
  };

  DatabaseStatistics({
    this.statistics,
  });

  DatabaseStatistics.fromJson(Map<String, dynamic> json) {
    statistics = tryConvertToTdObject(json['statistics']);
  }
}

abstract class NetworkType extends TdObject {}

@reflector
class NetworkTypeNone extends NetworkType {
  @override
  String get tdType => 'networkTypeNone';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeNone();

  NetworkTypeNone.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeMobile extends NetworkType {
  @override
  String get tdType => 'networkTypeMobile';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeMobile();

  NetworkTypeMobile.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeMobileRoaming extends NetworkType {
  @override
  String get tdType => 'networkTypeMobileRoaming';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeMobileRoaming();

  NetworkTypeMobileRoaming.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeWiFi extends NetworkType {
  @override
  String get tdType => 'networkTypeWiFi';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeWiFi();

  NetworkTypeWiFi.fromJson(Map<String, dynamic> json);
}

@reflector
class NetworkTypeOther extends NetworkType {
  @override
  String get tdType => 'networkTypeOther';

  @override
  Map<String, dynamic> get params => {};

  NetworkTypeOther();

  NetworkTypeOther.fromJson(Map<String, dynamic> json);
}

abstract class NetworkStatisticsEntry extends TdObject {}

@reflector
class NetworkStatisticsEntryFile extends NetworkStatisticsEntry {
  @override
  String get tdType => 'networkStatisticsEntryFile';

  FileType fileType;
  NetworkType networkType;
  int sentBytes;
  int receivedBytes;

  @override
  Map<String, dynamic> get params => {
    'file_type': fileType,
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
  };

  NetworkStatisticsEntryFile({
    this.fileType,
    this.networkType,
    this.sentBytes,
    this.receivedBytes,
  });

  NetworkStatisticsEntryFile.fromJson(Map<String, dynamic> json) {
    fileType = tryConvertToTdObject(json['file_type']);
    networkType = tryConvertToTdObject(json['network_type']);
    sentBytes = tryConvertToTdObject(json['sent_bytes']);
    receivedBytes = tryConvertToTdObject(json['received_bytes']);
  }
}

@reflector
class NetworkStatisticsEntryCall extends NetworkStatisticsEntry {
  @override
  String get tdType => 'networkStatisticsEntryCall';

  NetworkType networkType;
  int sentBytes;
  int receivedBytes;
  double duration;

  @override
  Map<String, dynamic> get params => {
    'network_type': networkType,
    'sent_bytes': sentBytes,
    'received_bytes': receivedBytes,
    'duration': duration,
  };

  NetworkStatisticsEntryCall({
    this.networkType,
    this.sentBytes,
    this.receivedBytes,
    this.duration,
  });

  NetworkStatisticsEntryCall.fromJson(Map<String, dynamic> json) {
    networkType = tryConvertToTdObject(json['network_type']);
    sentBytes = tryConvertToTdObject(json['sent_bytes']);
    receivedBytes = tryConvertToTdObject(json['received_bytes']);
    duration = tryConvertToTdObject(json['duration']);
  }
}

@reflector
class NetworkStatistics extends TdObject {
  @override
  String get tdType => 'networkStatistics';

  int sinceDate;
  List<NetworkStatisticsEntry> entries;

  @override
  Map<String, dynamic> get params => {
    'since_date': sinceDate,
    'entries': entries,
  };

  NetworkStatistics({
    this.sinceDate,
    this.entries,
  });

  NetworkStatistics.fromJson(Map<String, dynamic> json) {
    sinceDate = tryConvertToTdObject(json['since_date']);
    entries = tryConvertToTdObject(json['entries']);
  }
}

@reflector
class AutoDownloadSettings extends TdObject {
  @override
  String get tdType => 'autoDownloadSettings';

  bool isAutoDownloadEnabled;
  int maxPhotoFileSize;
  int maxVideoFileSize;
  int maxOtherFileSize;
  int videoUploadBitrate;
  bool preloadLargeVideos;
  bool preloadNextAudio;
  bool useLessDataForCalls;

  @override
  Map<String, dynamic> get params => {
    'is_auto_download_enabled': isAutoDownloadEnabled,
    'max_photo_file_size': maxPhotoFileSize,
    'max_video_file_size': maxVideoFileSize,
    'max_other_file_size': maxOtherFileSize,
    'video_upload_bitrate': videoUploadBitrate,
    'preload_large_videos': preloadLargeVideos,
    'preload_next_audio': preloadNextAudio,
    'use_less_data_for_calls': useLessDataForCalls,
  };

  AutoDownloadSettings({
    this.isAutoDownloadEnabled,
    this.maxPhotoFileSize,
    this.maxVideoFileSize,
    this.maxOtherFileSize,
    this.videoUploadBitrate,
    this.preloadLargeVideos,
    this.preloadNextAudio,
    this.useLessDataForCalls,
  });

  AutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    isAutoDownloadEnabled = tryConvertToTdObject(json['is_auto_download_enabled']);
    maxPhotoFileSize = tryConvertToTdObject(json['max_photo_file_size']);
    maxVideoFileSize = tryConvertToTdObject(json['max_video_file_size']);
    maxOtherFileSize = tryConvertToTdObject(json['max_other_file_size']);
    videoUploadBitrate = tryConvertToTdObject(json['video_upload_bitrate']);
    preloadLargeVideos = tryConvertToTdObject(json['preload_large_videos']);
    preloadNextAudio = tryConvertToTdObject(json['preload_next_audio']);
    useLessDataForCalls = tryConvertToTdObject(json['use_less_data_for_calls']);
  }
}

@reflector
class AutoDownloadSettingsPresets extends TdObject {
  @override
  String get tdType => 'autoDownloadSettingsPresets';

  AutoDownloadSettings low;
  AutoDownloadSettings medium;
  AutoDownloadSettings high;

  @override
  Map<String, dynamic> get params => {
    'low': low,
    'medium': medium,
    'high': high,
  };

  AutoDownloadSettingsPresets({
    this.low,
    this.medium,
    this.high,
  });

  AutoDownloadSettingsPresets.fromJson(Map<String, dynamic> json) {
    low = tryConvertToTdObject(json['low']);
    medium = tryConvertToTdObject(json['medium']);
    high = tryConvertToTdObject(json['high']);
  }
}

abstract class ConnectionState extends TdObject {}

@reflector
class ConnectionStateWaitingForNetwork extends ConnectionState {
  @override
  String get tdType => 'connectionStateWaitingForNetwork';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateWaitingForNetwork();

  ConnectionStateWaitingForNetwork.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateConnectingToProxy extends ConnectionState {
  @override
  String get tdType => 'connectionStateConnectingToProxy';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateConnectingToProxy();

  ConnectionStateConnectingToProxy.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateConnecting extends ConnectionState {
  @override
  String get tdType => 'connectionStateConnecting';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateConnecting();

  ConnectionStateConnecting.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateUpdating extends ConnectionState {
  @override
  String get tdType => 'connectionStateUpdating';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateUpdating();

  ConnectionStateUpdating.fromJson(Map<String, dynamic> json);
}

@reflector
class ConnectionStateReady extends ConnectionState {
  @override
  String get tdType => 'connectionStateReady';

  @override
  Map<String, dynamic> get params => {};

  ConnectionStateReady();

  ConnectionStateReady.fromJson(Map<String, dynamic> json);
}

abstract class TopChatCategory extends TdObject {}

@reflector
class TopChatCategoryUsers extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryUsers';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryUsers();

  TopChatCategoryUsers.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryBots extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryBots';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryBots();

  TopChatCategoryBots.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryGroups extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryGroups';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryGroups();

  TopChatCategoryGroups.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryChannels extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryChannels';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryChannels();

  TopChatCategoryChannels.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryInlineBots extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryInlineBots';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryInlineBots();

  TopChatCategoryInlineBots.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryCalls extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryCalls';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryCalls();

  TopChatCategoryCalls.fromJson(Map<String, dynamic> json);
}

@reflector
class TopChatCategoryForwardChats extends TopChatCategory {
  @override
  String get tdType => 'topChatCategoryForwardChats';

  @override
  Map<String, dynamic> get params => {};

  TopChatCategoryForwardChats();

  TopChatCategoryForwardChats.fromJson(Map<String, dynamic> json);
}

abstract class TMeUrlType extends TdObject {}

@reflector
class TMeUrlTypeUser extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeUser';

  int userId;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
  };

  TMeUrlTypeUser({
    this.userId,
  });

  TMeUrlTypeUser.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
  }
}

@reflector
class TMeUrlTypeSupergroup extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeSupergroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  TMeUrlTypeSupergroup({
    this.supergroupId,
  });

  TMeUrlTypeSupergroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class TMeUrlTypeChatInvite extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeChatInvite';

  ChatInviteLinkInfo info;

  @override
  Map<String, dynamic> get params => {
    'info': info,
  };

  TMeUrlTypeChatInvite({
    this.info,
  });

  TMeUrlTypeChatInvite.fromJson(Map<String, dynamic> json) {
    info = tryConvertToTdObject(json['info']);
  }
}

@reflector
class TMeUrlTypeStickerSet extends TMeUrlType {
  @override
  String get tdType => 'tMeUrlTypeStickerSet';

  int stickerSetId;

  @override
  Map<String, dynamic> get params => {
    'sticker_set_id': stickerSetId,
  };

  TMeUrlTypeStickerSet({
    this.stickerSetId,
  });

  TMeUrlTypeStickerSet.fromJson(Map<String, dynamic> json) {
    stickerSetId = tryConvertToTdObject(json['sticker_set_id']);
  }
}

@reflector
class TMeUrl extends TdObject {
  @override
  String get tdType => 'tMeUrl';

  String url;
  TMeUrlType type;

  @override
  Map<String, dynamic> get params => {
    'url': url,
    'type': type,
  };

  TMeUrl({
    this.url,
    this.type,
  });

  TMeUrl.fromJson(Map<String, dynamic> json) {
    url = tryConvertToTdObject(json['url']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class TMeUrls extends TdObject {
  @override
  String get tdType => 'tMeUrls';

  List<TMeUrl> urls;

  @override
  Map<String, dynamic> get params => {
    'urls': urls,
  };

  TMeUrls({
    this.urls,
  });

  TMeUrls.fromJson(Map<String, dynamic> json) {
    urls = tryConvertToTdObject(json['urls']);
  }
}

abstract class SuggestedAction extends TdObject {}

@reflector
class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionEnableArchiveAndMuteNewChats';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionEnableArchiveAndMuteNewChats();

  SuggestedActionEnableArchiveAndMuteNewChats.fromJson(Map<String, dynamic> json);
}

@reflector
class SuggestedActionCheckPassword extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionCheckPassword';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionCheckPassword();

  SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json);
}

@reflector
class SuggestedActionCheckPhoneNumber extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionCheckPhoneNumber';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionCheckPhoneNumber();

  SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json);
}

@reflector
class SuggestedActionSeeTicksHint extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionSeeTicksHint';

  @override
  Map<String, dynamic> get params => {};

  SuggestedActionSeeTicksHint();

  SuggestedActionSeeTicksHint.fromJson(Map<String, dynamic> json);
}

@reflector
class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {
  @override
  String get tdType => 'suggestedActionConvertToBroadcastGroup';

  int supergroupId;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
  };

  SuggestedActionConvertToBroadcastGroup({
    this.supergroupId,
  });

  SuggestedActionConvertToBroadcastGroup.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
  }
}

@reflector
class Count extends TdObject {
  @override
  String get tdType => 'count';

  int count;

  @override
  Map<String, dynamic> get params => {
    'count': count,
  };

  Count({
    this.count,
  });

  Count.fromJson(Map<String, dynamic> json) {
    count = tryConvertToTdObject(json['count']);
  }
}

@reflector
class Text extends TdObject {
  @override
  String get tdType => 'text';

  String text;

  @override
  Map<String, dynamic> get params => {
    'text': text,
  };

  Text({
    this.text,
  });

  Text.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
  }
}

@reflector
class Seconds extends TdObject {
  @override
  String get tdType => 'seconds';

  double seconds;

  @override
  Map<String, dynamic> get params => {
    'seconds': seconds,
  };

  Seconds({
    this.seconds,
  });

  Seconds.fromJson(Map<String, dynamic> json) {
    seconds = tryConvertToTdObject(json['seconds']);
  }
}

@reflector
class DeepLinkInfo extends TdObject {
  @override
  String get tdType => 'deepLinkInfo';

  FormattedText text;
  bool needUpdateApplication;

  @override
  Map<String, dynamic> get params => {
    'text': text,
    'need_update_application': needUpdateApplication,
  };

  DeepLinkInfo({
    this.text,
    this.needUpdateApplication,
  });

  DeepLinkInfo.fromJson(Map<String, dynamic> json) {
    text = tryConvertToTdObject(json['text']);
    needUpdateApplication = tryConvertToTdObject(json['need_update_application']);
  }
}

abstract class TextParseMode extends TdObject {}

@reflector
class TextParseModeMarkdown extends TextParseMode {
  @override
  String get tdType => 'textParseModeMarkdown';

  int version;

  @override
  Map<String, dynamic> get params => {
    'version': version,
  };

  TextParseModeMarkdown({
    this.version,
  });

  TextParseModeMarkdown.fromJson(Map<String, dynamic> json) {
    version = tryConvertToTdObject(json['version']);
  }
}

@reflector
class TextParseModeHTML extends TextParseMode {
  @override
  String get tdType => 'textParseModeHTML';

  @override
  Map<String, dynamic> get params => {};

  TextParseModeHTML();

  TextParseModeHTML.fromJson(Map<String, dynamic> json);
}

abstract class ProxyType extends TdObject {}

@reflector
class ProxyTypeSocks5 extends ProxyType {
  @override
  String get tdType => 'proxyTypeSocks5';

  String username;
  String password;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
  };

  ProxyTypeSocks5({
    this.username,
    this.password,
  });

  ProxyTypeSocks5.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
    password = tryConvertToTdObject(json['password']);
  }
}

@reflector
class ProxyTypeHttp extends ProxyType {
  @override
  String get tdType => 'proxyTypeHttp';

  String username;
  String password;
  bool httpOnly;

  @override
  Map<String, dynamic> get params => {
    'username': username,
    'password': password,
    'http_only': httpOnly,
  };

  ProxyTypeHttp({
    this.username,
    this.password,
    this.httpOnly,
  });

  ProxyTypeHttp.fromJson(Map<String, dynamic> json) {
    username = tryConvertToTdObject(json['username']);
    password = tryConvertToTdObject(json['password']);
    httpOnly = tryConvertToTdObject(json['http_only']);
  }
}

@reflector
class ProxyTypeMtproto extends ProxyType {
  @override
  String get tdType => 'proxyTypeMtproto';

  String secret;

  @override
  Map<String, dynamic> get params => {
    'secret': secret,
  };

  ProxyTypeMtproto({
    this.secret,
  });

  ProxyTypeMtproto.fromJson(Map<String, dynamic> json) {
    secret = tryConvertToTdObject(json['secret']);
  }
}

@reflector
class Proxy extends TdObject {
  @override
  String get tdType => 'proxy';

  int id;
  String server;
  int port;
  int lastUsedDate;
  bool isEnabled;
  ProxyType type;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'server': server,
    'port': port,
    'last_used_date': lastUsedDate,
    'is_enabled': isEnabled,
    'type': type,
  };

  Proxy({
    this.id,
    this.server,
    this.port,
    this.lastUsedDate,
    this.isEnabled,
    this.type,
  });

  Proxy.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    server = tryConvertToTdObject(json['server']);
    port = tryConvertToTdObject(json['port']);
    lastUsedDate = tryConvertToTdObject(json['last_used_date']);
    isEnabled = tryConvertToTdObject(json['is_enabled']);
    type = tryConvertToTdObject(json['type']);
  }
}

@reflector
class Proxies extends TdObject {
  @override
  String get tdType => 'proxies';

  List<Proxy> proxies;

  @override
  Map<String, dynamic> get params => {
    'proxies': proxies,
  };

  Proxies({
    this.proxies,
  });

  Proxies.fromJson(Map<String, dynamic> json) {
    proxies = tryConvertToTdObject(json['proxies']);
  }
}

abstract class InputSticker extends TdObject {}

@reflector
class InputStickerStatic extends InputSticker {
  @override
  String get tdType => 'inputStickerStatic';

  InputFile sticker;
  String emojis;
  MaskPosition maskPosition;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emojis': emojis,
    'mask_position': maskPosition,
  };

  InputStickerStatic({
    this.sticker,
    this.emojis,
    this.maskPosition,
  });

  InputStickerStatic.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    emojis = tryConvertToTdObject(json['emojis']);
    maskPosition = tryConvertToTdObject(json['mask_position']);
  }
}

@reflector
class InputStickerAnimated extends InputSticker {
  @override
  String get tdType => 'inputStickerAnimated';

  InputFile sticker;
  String emojis;

  @override
  Map<String, dynamic> get params => {
    'sticker': sticker,
    'emojis': emojis,
  };

  InputStickerAnimated({
    this.sticker,
    this.emojis,
  });

  InputStickerAnimated.fromJson(Map<String, dynamic> json) {
    sticker = tryConvertToTdObject(json['sticker']);
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class DateRange extends TdObject {
  @override
  String get tdType => 'dateRange';

  int startDate;
  int endDate;

  @override
  Map<String, dynamic> get params => {
    'start_date': startDate,
    'end_date': endDate,
  };

  DateRange({
    this.startDate,
    this.endDate,
  });

  DateRange.fromJson(Map<String, dynamic> json) {
    startDate = tryConvertToTdObject(json['start_date']);
    endDate = tryConvertToTdObject(json['end_date']);
  }
}

@reflector
class StatisticalValue extends TdObject {
  @override
  String get tdType => 'statisticalValue';

  double value;
  double previousValue;
  double growthRatePercentage;

  @override
  Map<String, dynamic> get params => {
    'value': value,
    'previous_value': previousValue,
    'growth_rate_percentage': growthRatePercentage,
  };

  StatisticalValue({
    this.value,
    this.previousValue,
    this.growthRatePercentage,
  });

  StatisticalValue.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
    previousValue = tryConvertToTdObject(json['previous_value']);
    growthRatePercentage = tryConvertToTdObject(json['growth_rate_percentage']);
  }
}

abstract class StatisticalGraph extends TdObject {}

@reflector
class StatisticalGraphData extends StatisticalGraph {
  @override
  String get tdType => 'statisticalGraphData';

  String jsonData;
  String zoomToken;

  @override
  Map<String, dynamic> get params => {
    'json_data': jsonData,
    'zoom_token': zoomToken,
  };

  StatisticalGraphData({
    this.jsonData,
    this.zoomToken,
  });

  StatisticalGraphData.fromJson(Map<String, dynamic> json) {
    jsonData = tryConvertToTdObject(json['json_data']);
    zoomToken = tryConvertToTdObject(json['zoom_token']);
  }
}

@reflector
class StatisticalGraphAsync extends StatisticalGraph {
  @override
  String get tdType => 'statisticalGraphAsync';

  String token;

  @override
  Map<String, dynamic> get params => {
    'token': token,
  };

  StatisticalGraphAsync({
    this.token,
  });

  StatisticalGraphAsync.fromJson(Map<String, dynamic> json) {
    token = tryConvertToTdObject(json['token']);
  }
}

@reflector
class StatisticalGraphError extends StatisticalGraph {
  @override
  String get tdType => 'statisticalGraphError';

  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'error_message': errorMessage,
  };

  StatisticalGraphError({
    this.errorMessage,
  });

  StatisticalGraphError.fromJson(Map<String, dynamic> json) {
    errorMessage = tryConvertToTdObject(json['error_message']);
  }
}

@reflector
class ChatStatisticsMessageInteractionInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsMessageInteractionInfo';

  int messageId;
  int viewCount;
  int forwardCount;

  @override
  Map<String, dynamic> get params => {
    'message_id': messageId,
    'view_count': viewCount,
    'forward_count': forwardCount,
  };

  ChatStatisticsMessageInteractionInfo({
    this.messageId,
    this.viewCount,
    this.forwardCount,
  });

  ChatStatisticsMessageInteractionInfo.fromJson(Map<String, dynamic> json) {
    messageId = tryConvertToTdObject(json['message_id']);
    viewCount = tryConvertToTdObject(json['view_count']);
    forwardCount = tryConvertToTdObject(json['forward_count']);
  }
}

@reflector
class ChatStatisticsMessageSenderInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsMessageSenderInfo';

  int userId;
  int sentMessageCount;
  int averageCharacterCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'sent_message_count': sentMessageCount,
    'average_character_count': averageCharacterCount,
  };

  ChatStatisticsMessageSenderInfo({
    this.userId,
    this.sentMessageCount,
    this.averageCharacterCount,
  });

  ChatStatisticsMessageSenderInfo.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    sentMessageCount = tryConvertToTdObject(json['sent_message_count']);
    averageCharacterCount = tryConvertToTdObject(json['average_character_count']);
  }
}

@reflector
class ChatStatisticsAdministratorActionsInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsAdministratorActionsInfo';

  int userId;
  int deletedMessageCount;
  int bannedUserCount;
  int restrictedUserCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'deleted_message_count': deletedMessageCount,
    'banned_user_count': bannedUserCount,
    'restricted_user_count': restrictedUserCount,
  };

  ChatStatisticsAdministratorActionsInfo({
    this.userId,
    this.deletedMessageCount,
    this.bannedUserCount,
    this.restrictedUserCount,
  });

  ChatStatisticsAdministratorActionsInfo.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    deletedMessageCount = tryConvertToTdObject(json['deleted_message_count']);
    bannedUserCount = tryConvertToTdObject(json['banned_user_count']);
    restrictedUserCount = tryConvertToTdObject(json['restricted_user_count']);
  }
}

@reflector
class ChatStatisticsInviterInfo extends TdObject {
  @override
  String get tdType => 'chatStatisticsInviterInfo';

  int userId;
  int addedMemberCount;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'added_member_count': addedMemberCount,
  };

  ChatStatisticsInviterInfo({
    this.userId,
    this.addedMemberCount,
  });

  ChatStatisticsInviterInfo.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    addedMemberCount = tryConvertToTdObject(json['added_member_count']);
  }
}

abstract class ChatStatistics extends TdObject {}

@reflector
class ChatStatisticsSupergroup extends ChatStatistics {
  @override
  String get tdType => 'chatStatisticsSupergroup';

  DateRange period;
  StatisticalValue memberCount;
  StatisticalValue messageCount;
  StatisticalValue viewerCount;
  StatisticalValue senderCount;
  StatisticalGraph memberCountGraph;
  StatisticalGraph joinGraph;
  StatisticalGraph joinBySourceGraph;
  StatisticalGraph languageGraph;
  StatisticalGraph messageContentGraph;
  StatisticalGraph actionGraph;
  StatisticalGraph dayGraph;
  StatisticalGraph weekGraph;
  List<ChatStatisticsMessageSenderInfo> topSenders;
  List<ChatStatisticsAdministratorActionsInfo> topAdministrators;
  List<ChatStatisticsInviterInfo> topInviters;

  @override
  Map<String, dynamic> get params => {
    'period': period,
    'member_count': memberCount,
    'message_count': messageCount,
    'viewer_count': viewerCount,
    'sender_count': senderCount,
    'member_count_graph': memberCountGraph,
    'join_graph': joinGraph,
    'join_by_source_graph': joinBySourceGraph,
    'language_graph': languageGraph,
    'message_content_graph': messageContentGraph,
    'action_graph': actionGraph,
    'day_graph': dayGraph,
    'week_graph': weekGraph,
    'top_senders': topSenders,
    'top_administrators': topAdministrators,
    'top_inviters': topInviters,
  };

  ChatStatisticsSupergroup({
    this.period,
    this.memberCount,
    this.messageCount,
    this.viewerCount,
    this.senderCount,
    this.memberCountGraph,
    this.joinGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageContentGraph,
    this.actionGraph,
    this.dayGraph,
    this.weekGraph,
    this.topSenders,
    this.topAdministrators,
    this.topInviters,
  });

  ChatStatisticsSupergroup.fromJson(Map<String, dynamic> json) {
    period = tryConvertToTdObject(json['period']);
    memberCount = tryConvertToTdObject(json['member_count']);
    messageCount = tryConvertToTdObject(json['message_count']);
    viewerCount = tryConvertToTdObject(json['viewer_count']);
    senderCount = tryConvertToTdObject(json['sender_count']);
    memberCountGraph = tryConvertToTdObject(json['member_count_graph']);
    joinGraph = tryConvertToTdObject(json['join_graph']);
    joinBySourceGraph = tryConvertToTdObject(json['join_by_source_graph']);
    languageGraph = tryConvertToTdObject(json['language_graph']);
    messageContentGraph = tryConvertToTdObject(json['message_content_graph']);
    actionGraph = tryConvertToTdObject(json['action_graph']);
    dayGraph = tryConvertToTdObject(json['day_graph']);
    weekGraph = tryConvertToTdObject(json['week_graph']);
    topSenders = tryConvertToTdObject(json['top_senders']);
    topAdministrators = tryConvertToTdObject(json['top_administrators']);
    topInviters = tryConvertToTdObject(json['top_inviters']);
  }
}

@reflector
class ChatStatisticsChannel extends ChatStatistics {
  @override
  String get tdType => 'chatStatisticsChannel';

  DateRange period;
  StatisticalValue memberCount;
  StatisticalValue meanViewCount;
  StatisticalValue meanShareCount;
  double enabledNotificationsPercentage;
  StatisticalGraph memberCountGraph;
  StatisticalGraph joinGraph;
  StatisticalGraph muteGraph;
  StatisticalGraph viewCountByHourGraph;
  StatisticalGraph viewCountBySourceGraph;
  StatisticalGraph joinBySourceGraph;
  StatisticalGraph languageGraph;
  StatisticalGraph messageInteractionGraph;
  StatisticalGraph instantViewInteractionGraph;
  List<ChatStatisticsMessageInteractionInfo> recentMessageInteractions;

  @override
  Map<String, dynamic> get params => {
    'period': period,
    'member_count': memberCount,
    'mean_view_count': meanViewCount,
    'mean_share_count': meanShareCount,
    'enabled_notifications_percentage': enabledNotificationsPercentage,
    'member_count_graph': memberCountGraph,
    'join_graph': joinGraph,
    'mute_graph': muteGraph,
    'view_count_by_hour_graph': viewCountByHourGraph,
    'view_count_by_source_graph': viewCountBySourceGraph,
    'join_by_source_graph': joinBySourceGraph,
    'language_graph': languageGraph,
    'message_interaction_graph': messageInteractionGraph,
    'instant_view_interaction_graph': instantViewInteractionGraph,
    'recent_message_interactions': recentMessageInteractions,
  };

  ChatStatisticsChannel({
    this.period,
    this.memberCount,
    this.meanViewCount,
    this.meanShareCount,
    this.enabledNotificationsPercentage,
    this.memberCountGraph,
    this.joinGraph,
    this.muteGraph,
    this.viewCountByHourGraph,
    this.viewCountBySourceGraph,
    this.joinBySourceGraph,
    this.languageGraph,
    this.messageInteractionGraph,
    this.instantViewInteractionGraph,
    this.recentMessageInteractions,
  });

  ChatStatisticsChannel.fromJson(Map<String, dynamic> json) {
    period = tryConvertToTdObject(json['period']);
    memberCount = tryConvertToTdObject(json['member_count']);
    meanViewCount = tryConvertToTdObject(json['mean_view_count']);
    meanShareCount = tryConvertToTdObject(json['mean_share_count']);
    enabledNotificationsPercentage = tryConvertToTdObject(json['enabled_notifications_percentage']);
    memberCountGraph = tryConvertToTdObject(json['member_count_graph']);
    joinGraph = tryConvertToTdObject(json['join_graph']);
    muteGraph = tryConvertToTdObject(json['mute_graph']);
    viewCountByHourGraph = tryConvertToTdObject(json['view_count_by_hour_graph']);
    viewCountBySourceGraph = tryConvertToTdObject(json['view_count_by_source_graph']);
    joinBySourceGraph = tryConvertToTdObject(json['join_by_source_graph']);
    languageGraph = tryConvertToTdObject(json['language_graph']);
    messageInteractionGraph = tryConvertToTdObject(json['message_interaction_graph']);
    instantViewInteractionGraph = tryConvertToTdObject(json['instant_view_interaction_graph']);
    recentMessageInteractions = tryConvertToTdObject(json['recent_message_interactions']);
  }
}

@reflector
class MessageStatistics extends TdObject {
  @override
  String get tdType => 'messageStatistics';

  StatisticalGraph messageInteractionGraph;

  @override
  Map<String, dynamic> get params => {
    'message_interaction_graph': messageInteractionGraph,
  };

  MessageStatistics({
    this.messageInteractionGraph,
  });

  MessageStatistics.fromJson(Map<String, dynamic> json) {
    messageInteractionGraph = tryConvertToTdObject(json['message_interaction_graph']);
  }
}

@reflector
class Point extends TdObject {
  @override
  String get tdType => 'point';

  double x;
  double y;

  @override
  Map<String, dynamic> get params => {
    'x': x,
    'y': y,
  };

  Point({
    this.x,
    this.y,
  });

  Point.fromJson(Map<String, dynamic> json) {
    x = tryConvertToTdObject(json['x']);
    y = tryConvertToTdObject(json['y']);
  }
}

abstract class VectorPathCommand extends TdObject {}

@reflector
class VectorPathCommandLine extends VectorPathCommand {
  @override
  String get tdType => 'vectorPathCommandLine';

  Point endPoint;

  @override
  Map<String, dynamic> get params => {
    'end_point': endPoint,
  };

  VectorPathCommandLine({
    this.endPoint,
  });

  VectorPathCommandLine.fromJson(Map<String, dynamic> json) {
    endPoint = tryConvertToTdObject(json['end_point']);
  }
}

@reflector
class VectorPathCommandCubicBezierCurve extends VectorPathCommand {
  @override
  String get tdType => 'vectorPathCommandCubicBezierCurve';

  Point startControlPoint;
  Point endControlPoint;
  Point endPoint;

  @override
  Map<String, dynamic> get params => {
    'start_control_point': startControlPoint,
    'end_control_point': endControlPoint,
    'end_point': endPoint,
  };

  VectorPathCommandCubicBezierCurve({
    this.startControlPoint,
    this.endControlPoint,
    this.endPoint,
  });

  VectorPathCommandCubicBezierCurve.fromJson(Map<String, dynamic> json) {
    startControlPoint = tryConvertToTdObject(json['start_control_point']);
    endControlPoint = tryConvertToTdObject(json['end_control_point']);
    endPoint = tryConvertToTdObject(json['end_point']);
  }
}

abstract class BotCommandScope extends TdObject {}

@reflector
class BotCommandScopeDefault extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeDefault';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeDefault();

  BotCommandScopeDefault.fromJson(Map<String, dynamic> json);
}

@reflector
class BotCommandScopeAllPrivateChats extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeAllPrivateChats';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeAllPrivateChats();

  BotCommandScopeAllPrivateChats.fromJson(Map<String, dynamic> json);
}

@reflector
class BotCommandScopeAllGroupChats extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeAllGroupChats';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeAllGroupChats();

  BotCommandScopeAllGroupChats.fromJson(Map<String, dynamic> json);
}

@reflector
class BotCommandScopeAllChatAdministrators extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeAllChatAdministrators';

  @override
  Map<String, dynamic> get params => {};

  BotCommandScopeAllChatAdministrators();

  BotCommandScopeAllChatAdministrators.fromJson(Map<String, dynamic> json);
}

@reflector
class BotCommandScopeChat extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeChat';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  BotCommandScopeChat({
    this.chatId,
  });

  BotCommandScopeChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class BotCommandScopeChatAdministrators extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeChatAdministrators';

  int chatId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
  };

  BotCommandScopeChatAdministrators({
    this.chatId,
  });

  BotCommandScopeChatAdministrators.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
  }
}

@reflector
class BotCommandScopeChatMember extends BotCommandScope {
  @override
  String get tdType => 'botCommandScopeChatMember';

  int chatId;
  int userId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'user_id': userId,
  };

  BotCommandScopeChatMember({
    this.chatId,
    this.userId,
  });

  BotCommandScopeChatMember.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    userId = tryConvertToTdObject(json['user_id']);
  }
}

abstract class Update extends TdObject {}

@reflector
class UpdateAuthorizationState extends Update {
  @override
  String get tdType => 'updateAuthorizationState';

  AuthorizationState authorizationState;

  @override
  Map<String, dynamic> get params => {
    'authorization_state': authorizationState,
  };

  UpdateAuthorizationState({
    this.authorizationState,
  });

  UpdateAuthorizationState.fromJson(Map<String, dynamic> json) {
    authorizationState = tryConvertToTdObject(json['authorization_state']);
  }
}

@reflector
class UpdateNewMessage extends Update {
  @override
  String get tdType => 'updateNewMessage';

  Message message;

  @override
  Map<String, dynamic> get params => {
    'message': message,
  };

  UpdateNewMessage({
    this.message,
  });

  UpdateNewMessage.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
  }
}

@reflector
class UpdateMessageSendAcknowledged extends Update {
  @override
  String get tdType => 'updateMessageSendAcknowledged';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageSendAcknowledged({
    this.chatId,
    this.messageId,
  });

  UpdateMessageSendAcknowledged.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class UpdateMessageSendSucceeded extends Update {
  @override
  String get tdType => 'updateMessageSendSucceeded';

  Message message;
  int oldMessageId;

  @override
  Map<String, dynamic> get params => {
    'message': message,
    'old_message_id': oldMessageId,
  };

  UpdateMessageSendSucceeded({
    this.message,
    this.oldMessageId,
  });

  UpdateMessageSendSucceeded.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
    oldMessageId = tryConvertToTdObject(json['old_message_id']);
  }
}

@reflector
class UpdateMessageSendFailed extends Update {
  @override
  String get tdType => 'updateMessageSendFailed';

  Message message;
  int oldMessageId;
  int errorCode;
  String errorMessage;

  @override
  Map<String, dynamic> get params => {
    'message': message,
    'old_message_id': oldMessageId,
    'error_code': errorCode,
    'error_message': errorMessage,
  };

  UpdateMessageSendFailed({
    this.message,
    this.oldMessageId,
    this.errorCode,
    this.errorMessage,
  });

  UpdateMessageSendFailed.fromJson(Map<String, dynamic> json) {
    message = tryConvertToTdObject(json['message']);
    oldMessageId = tryConvertToTdObject(json['old_message_id']);
    errorCode = tryConvertToTdObject(json['error_code']);
    errorMessage = tryConvertToTdObject(json['error_message']);
  }
}

@reflector
class UpdateMessageContent extends Update {
  @override
  String get tdType => 'updateMessageContent';

  int chatId;
  int messageId;
  MessageContent newContent;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'new_content': newContent,
  };

  UpdateMessageContent({
    this.chatId,
    this.messageId,
    this.newContent,
  });

  UpdateMessageContent.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    newContent = tryConvertToTdObject(json['new_content']);
  }
}

@reflector
class UpdateMessageEdited extends Update {
  @override
  String get tdType => 'updateMessageEdited';

  int chatId;
  int messageId;
  int editDate;
  ReplyMarkup replyMarkup;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'edit_date': editDate,
    'reply_markup': replyMarkup,
  };

  UpdateMessageEdited({
    this.chatId,
    this.messageId,
    this.editDate,
    this.replyMarkup,
  });

  UpdateMessageEdited.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    editDate = tryConvertToTdObject(json['edit_date']);
    replyMarkup = tryConvertToTdObject(json['reply_markup']);
  }
}

@reflector
class UpdateMessageIsPinned extends Update {
  @override
  String get tdType => 'updateMessageIsPinned';

  int chatId;
  int messageId;
  bool isPinned;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'is_pinned': isPinned,
  };

  UpdateMessageIsPinned({
    this.chatId,
    this.messageId,
    this.isPinned,
  });

  UpdateMessageIsPinned.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    isPinned = tryConvertToTdObject(json['is_pinned']);
  }
}

@reflector
class UpdateMessageInteractionInfo extends Update {
  @override
  String get tdType => 'updateMessageInteractionInfo';

  int chatId;
  int messageId;
  MessageInteractionInfo interactionInfo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'interaction_info': interactionInfo,
  };

  UpdateMessageInteractionInfo({
    this.chatId,
    this.messageId,
    this.interactionInfo,
  });

  UpdateMessageInteractionInfo.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    interactionInfo = tryConvertToTdObject(json['interaction_info']);
  }
}

@reflector
class UpdateMessageContentOpened extends Update {
  @override
  String get tdType => 'updateMessageContentOpened';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageContentOpened({
    this.chatId,
    this.messageId,
  });

  UpdateMessageContentOpened.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class UpdateMessageMentionRead extends Update {
  @override
  String get tdType => 'updateMessageMentionRead';

  int chatId;
  int messageId;
  int unreadMentionCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'unread_mention_count': unreadMentionCount,
  };

  UpdateMessageMentionRead({
    this.chatId,
    this.messageId,
    this.unreadMentionCount,
  });

  UpdateMessageMentionRead.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    unreadMentionCount = tryConvertToTdObject(json['unread_mention_count']);
  }
}

@reflector
class UpdateMessageLiveLocationViewed extends Update {
  @override
  String get tdType => 'updateMessageLiveLocationViewed';

  int chatId;
  int messageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
  };

  UpdateMessageLiveLocationViewed({
    this.chatId,
    this.messageId,
  });

  UpdateMessageLiveLocationViewed.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
  }
}

@reflector
class UpdateNewChat extends Update {
  @override
  String get tdType => 'updateNewChat';

  Chat chat;

  @override
  Map<String, dynamic> get params => {
    'chat': chat,
  };

  UpdateNewChat({
    this.chat,
  });

  UpdateNewChat.fromJson(Map<String, dynamic> json) {
    chat = tryConvertToTdObject(json['chat']);
  }
}

@reflector
class UpdateChatTitle extends Update {
  @override
  String get tdType => 'updateChatTitle';

  int chatId;
  String title;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'title': title,
  };

  UpdateChatTitle({
    this.chatId,
    this.title,
  });

  UpdateChatTitle.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    title = tryConvertToTdObject(json['title']);
  }
}

@reflector
class UpdateChatPhoto extends Update {
  @override
  String get tdType => 'updateChatPhoto';

  int chatId;
  ChatPhotoInfo photo;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'photo': photo,
  };

  UpdateChatPhoto({
    this.chatId,
    this.photo,
  });

  UpdateChatPhoto.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    photo = tryConvertToTdObject(json['photo']);
  }
}

@reflector
class UpdateChatPermissions extends Update {
  @override
  String get tdType => 'updateChatPermissions';

  int chatId;
  ChatPermissions permissions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'permissions': permissions,
  };

  UpdateChatPermissions({
    this.chatId,
    this.permissions,
  });

  UpdateChatPermissions.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    permissions = tryConvertToTdObject(json['permissions']);
  }
}

@reflector
class UpdateChatLastMessage extends Update {
  @override
  String get tdType => 'updateChatLastMessage';

  int chatId;
  Message lastMessage;
  List<ChatPosition> positions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_message': lastMessage,
    'positions': positions,
  };

  UpdateChatLastMessage({
    this.chatId,
    this.lastMessage,
    this.positions,
  });

  UpdateChatLastMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    lastMessage = tryConvertToTdObject(json['last_message']);
    positions = tryConvertToTdObject(json['positions']);
  }
}

@reflector
class UpdateChatPosition extends Update {
  @override
  String get tdType => 'updateChatPosition';

  int chatId;
  ChatPosition position;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'position': position,
  };

  UpdateChatPosition({
    this.chatId,
    this.position,
  });

  UpdateChatPosition.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    position = tryConvertToTdObject(json['position']);
  }
}

@reflector
class UpdateChatIsMarkedAsUnread extends Update {
  @override
  String get tdType => 'updateChatIsMarkedAsUnread';

  int chatId;
  bool isMarkedAsUnread;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_marked_as_unread': isMarkedAsUnread,
  };

  UpdateChatIsMarkedAsUnread({
    this.chatId,
    this.isMarkedAsUnread,
  });

  UpdateChatIsMarkedAsUnread.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isMarkedAsUnread = tryConvertToTdObject(json['is_marked_as_unread']);
  }
}

@reflector
class UpdateChatIsBlocked extends Update {
  @override
  String get tdType => 'updateChatIsBlocked';

  int chatId;
  bool isBlocked;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'is_blocked': isBlocked,
  };

  UpdateChatIsBlocked({
    this.chatId,
    this.isBlocked,
  });

  UpdateChatIsBlocked.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    isBlocked = tryConvertToTdObject(json['is_blocked']);
  }
}

@reflector
class UpdateChatHasScheduledMessages extends Update {
  @override
  String get tdType => 'updateChatHasScheduledMessages';

  int chatId;
  bool hasScheduledMessages;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'has_scheduled_messages': hasScheduledMessages,
  };

  UpdateChatHasScheduledMessages({
    this.chatId,
    this.hasScheduledMessages,
  });

  UpdateChatHasScheduledMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    hasScheduledMessages = tryConvertToTdObject(json['has_scheduled_messages']);
  }
}

@reflector
class UpdateChatVoiceChat extends Update {
  @override
  String get tdType => 'updateChatVoiceChat';

  int chatId;
  VoiceChat voiceChat;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'voice_chat': voiceChat,
  };

  UpdateChatVoiceChat({
    this.chatId,
    this.voiceChat,
  });

  UpdateChatVoiceChat.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    voiceChat = tryConvertToTdObject(json['voice_chat']);
  }
}

@reflector
class UpdateChatDefaultDisableNotification extends Update {
  @override
  String get tdType => 'updateChatDefaultDisableNotification';

  int chatId;
  bool defaultDisableNotification;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'default_disable_notification': defaultDisableNotification,
  };

  UpdateChatDefaultDisableNotification({
    this.chatId,
    this.defaultDisableNotification,
  });

  UpdateChatDefaultDisableNotification.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    defaultDisableNotification = tryConvertToTdObject(json['default_disable_notification']);
  }
}

@reflector
class UpdateChatReadInbox extends Update {
  @override
  String get tdType => 'updateChatReadInbox';

  int chatId;
  int lastReadInboxMessageId;
  int unreadCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_read_inbox_message_id': lastReadInboxMessageId,
    'unread_count': unreadCount,
  };

  UpdateChatReadInbox({
    this.chatId,
    this.lastReadInboxMessageId,
    this.unreadCount,
  });

  UpdateChatReadInbox.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    lastReadInboxMessageId = tryConvertToTdObject(json['last_read_inbox_message_id']);
    unreadCount = tryConvertToTdObject(json['unread_count']);
  }
}

@reflector
class UpdateChatReadOutbox extends Update {
  @override
  String get tdType => 'updateChatReadOutbox';

  int chatId;
  int lastReadOutboxMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'last_read_outbox_message_id': lastReadOutboxMessageId,
  };

  UpdateChatReadOutbox({
    this.chatId,
    this.lastReadOutboxMessageId,
  });

  UpdateChatReadOutbox.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    lastReadOutboxMessageId = tryConvertToTdObject(json['last_read_outbox_message_id']);
  }
}

@reflector
class UpdateChatUnreadMentionCount extends Update {
  @override
  String get tdType => 'updateChatUnreadMentionCount';

  int chatId;
  int unreadMentionCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'unread_mention_count': unreadMentionCount,
  };

  UpdateChatUnreadMentionCount({
    this.chatId,
    this.unreadMentionCount,
  });

  UpdateChatUnreadMentionCount.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    unreadMentionCount = tryConvertToTdObject(json['unread_mention_count']);
  }
}

@reflector
class UpdateChatNotificationSettings extends Update {
  @override
  String get tdType => 'updateChatNotificationSettings';

  int chatId;
  ChatNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'notification_settings': notificationSettings,
  };

  UpdateChatNotificationSettings({
    this.chatId,
    this.notificationSettings,
  });

  UpdateChatNotificationSettings.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
  }
}

@reflector
class UpdateScopeNotificationSettings extends Update {
  @override
  String get tdType => 'updateScopeNotificationSettings';

  NotificationSettingsScope scope;
  ScopeNotificationSettings notificationSettings;

  @override
  Map<String, dynamic> get params => {
    'scope': scope,
    'notification_settings': notificationSettings,
  };

  UpdateScopeNotificationSettings({
    this.scope,
    this.notificationSettings,
  });

  UpdateScopeNotificationSettings.fromJson(Map<String, dynamic> json) {
    scope = tryConvertToTdObject(json['scope']);
    notificationSettings = tryConvertToTdObject(json['notification_settings']);
  }
}

@reflector
class UpdateChatMessageTtlSetting extends Update {
  @override
  String get tdType => 'updateChatMessageTtlSetting';

  int chatId;
  int messageTtlSetting;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ttl_setting': messageTtlSetting,
  };

  UpdateChatMessageTtlSetting({
    this.chatId,
    this.messageTtlSetting,
  });

  UpdateChatMessageTtlSetting.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageTtlSetting = tryConvertToTdObject(json['message_ttl_setting']);
  }
}

@reflector
class UpdateChatActionBar extends Update {
  @override
  String get tdType => 'updateChatActionBar';

  int chatId;
  ChatActionBar actionBar;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'action_bar': actionBar,
  };

  UpdateChatActionBar({
    this.chatId,
    this.actionBar,
  });

  UpdateChatActionBar.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    actionBar = tryConvertToTdObject(json['action_bar']);
  }
}

@reflector
class UpdateChatTheme extends Update {
  @override
  String get tdType => 'updateChatTheme';

  int chatId;
  String themeName;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'theme_name': themeName,
  };

  UpdateChatTheme({
    this.chatId,
    this.themeName,
  });

  UpdateChatTheme.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    themeName = tryConvertToTdObject(json['theme_name']);
  }
}

@reflector
class UpdateChatReplyMarkup extends Update {
  @override
  String get tdType => 'updateChatReplyMarkup';

  int chatId;
  int replyMarkupMessageId;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'reply_markup_message_id': replyMarkupMessageId,
  };

  UpdateChatReplyMarkup({
    this.chatId,
    this.replyMarkupMessageId,
  });

  UpdateChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    replyMarkupMessageId = tryConvertToTdObject(json['reply_markup_message_id']);
  }
}

@reflector
class UpdateChatDraftMessage extends Update {
  @override
  String get tdType => 'updateChatDraftMessage';

  int chatId;
  DraftMessage draftMessage;
  List<ChatPosition> positions;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'draft_message': draftMessage,
    'positions': positions,
  };

  UpdateChatDraftMessage({
    this.chatId,
    this.draftMessage,
    this.positions,
  });

  UpdateChatDraftMessage.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    draftMessage = tryConvertToTdObject(json['draft_message']);
    positions = tryConvertToTdObject(json['positions']);
  }
}

@reflector
class UpdateChatFilters extends Update {
  @override
  String get tdType => 'updateChatFilters';

  List<ChatFilterInfo> chatFilters;

  @override
  Map<String, dynamic> get params => {
    'chat_filters': chatFilters,
  };

  UpdateChatFilters({
    this.chatFilters,
  });

  UpdateChatFilters.fromJson(Map<String, dynamic> json) {
    chatFilters = tryConvertToTdObject(json['chat_filters']);
  }
}

@reflector
class UpdateChatOnlineMemberCount extends Update {
  @override
  String get tdType => 'updateChatOnlineMemberCount';

  int chatId;
  int onlineMemberCount;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'online_member_count': onlineMemberCount,
  };

  UpdateChatOnlineMemberCount({
    this.chatId,
    this.onlineMemberCount,
  });

  UpdateChatOnlineMemberCount.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    onlineMemberCount = tryConvertToTdObject(json['online_member_count']);
  }
}

@reflector
class UpdateNotification extends Update {
  @override
  String get tdType => 'updateNotification';

  int notificationGroupId;
  Notification notification;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'notification': notification,
  };

  UpdateNotification({
    this.notificationGroupId,
    this.notification,
  });

  UpdateNotification.fromJson(Map<String, dynamic> json) {
    notificationGroupId = tryConvertToTdObject(json['notification_group_id']);
    notification = tryConvertToTdObject(json['notification']);
  }
}

@reflector
class UpdateNotificationGroup extends Update {
  @override
  String get tdType => 'updateNotificationGroup';

  int notificationGroupId;
  NotificationGroupType type;
  int chatId;
  int notificationSettingsChatId;
  bool isSilent;
  int totalCount;
  List<Notification> addedNotifications;
  List<int> removedNotificationIds;

  @override
  Map<String, dynamic> get params => {
    'notification_group_id': notificationGroupId,
    'type': type,
    'chat_id': chatId,
    'notification_settings_chat_id': notificationSettingsChatId,
    'is_silent': isSilent,
    'total_count': totalCount,
    'added_notifications': addedNotifications,
    'removed_notification_ids': removedNotificationIds,
  };

  UpdateNotificationGroup({
    this.notificationGroupId,
    this.type,
    this.chatId,
    this.notificationSettingsChatId,
    this.isSilent,
    this.totalCount,
    this.addedNotifications,
    this.removedNotificationIds,
  });

  UpdateNotificationGroup.fromJson(Map<String, dynamic> json) {
    notificationGroupId = tryConvertToTdObject(json['notification_group_id']);
    type = tryConvertToTdObject(json['type']);
    chatId = tryConvertToTdObject(json['chat_id']);
    notificationSettingsChatId = tryConvertToTdObject(json['notification_settings_chat_id']);
    isSilent = tryConvertToTdObject(json['is_silent']);
    totalCount = tryConvertToTdObject(json['total_count']);
    addedNotifications = tryConvertToTdObject(json['added_notifications']);
    removedNotificationIds = tryConvertToTdObject(json['removed_notification_ids']);
  }
}

@reflector
class UpdateActiveNotifications extends Update {
  @override
  String get tdType => 'updateActiveNotifications';

  List<NotificationGroup> groups;

  @override
  Map<String, dynamic> get params => {
    'groups': groups,
  };

  UpdateActiveNotifications({
    this.groups,
  });

  UpdateActiveNotifications.fromJson(Map<String, dynamic> json) {
    groups = tryConvertToTdObject(json['groups']);
  }
}

@reflector
class UpdateHavePendingNotifications extends Update {
  @override
  String get tdType => 'updateHavePendingNotifications';

  bool haveDelayedNotifications;
  bool haveUnreceivedNotifications;

  @override
  Map<String, dynamic> get params => {
    'have_delayed_notifications': haveDelayedNotifications,
    'have_unreceived_notifications': haveUnreceivedNotifications,
  };

  UpdateHavePendingNotifications({
    this.haveDelayedNotifications,
    this.haveUnreceivedNotifications,
  });

  UpdateHavePendingNotifications.fromJson(Map<String, dynamic> json) {
    haveDelayedNotifications = tryConvertToTdObject(json['have_delayed_notifications']);
    haveUnreceivedNotifications = tryConvertToTdObject(json['have_unreceived_notifications']);
  }
}

@reflector
class UpdateDeleteMessages extends Update {
  @override
  String get tdType => 'updateDeleteMessages';

  int chatId;
  List<int> messageIds;
  bool isPermanent;
  bool fromCache;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_ids': messageIds,
    'is_permanent': isPermanent,
    'from_cache': fromCache,
  };

  UpdateDeleteMessages({
    this.chatId,
    this.messageIds,
    this.isPermanent,
    this.fromCache,
  });

  UpdateDeleteMessages.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageIds = tryConvertToTdObject(json['message_ids']);
    isPermanent = tryConvertToTdObject(json['is_permanent']);
    fromCache = tryConvertToTdObject(json['from_cache']);
  }
}

@reflector
class UpdateUserChatAction extends Update {
  @override
  String get tdType => 'updateUserChatAction';

  int chatId;
  int messageThreadId;
  int userId;
  ChatAction action;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_thread_id': messageThreadId,
    'user_id': userId,
    'action': action,
  };

  UpdateUserChatAction({
    this.chatId,
    this.messageThreadId,
    this.userId,
    this.action,
  });

  UpdateUserChatAction.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageThreadId = tryConvertToTdObject(json['message_thread_id']);
    userId = tryConvertToTdObject(json['user_id']);
    action = tryConvertToTdObject(json['action']);
  }
}

@reflector
class UpdateUserStatus extends Update {
  @override
  String get tdType => 'updateUserStatus';

  int userId;
  UserStatus status;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'status': status,
  };

  UpdateUserStatus({
    this.userId,
    this.status,
  });

  UpdateUserStatus.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    status = tryConvertToTdObject(json['status']);
  }
}

@reflector
class UpdateUser extends Update {
  @override
  String get tdType => 'updateUser';

  User user;

  @override
  Map<String, dynamic> get params => {
    'user': user,
  };

  UpdateUser({
    this.user,
  });

  UpdateUser.fromJson(Map<String, dynamic> json) {
    user = tryConvertToTdObject(json['user']);
  }
}

@reflector
class UpdateBasicGroup extends Update {
  @override
  String get tdType => 'updateBasicGroup';

  BasicGroup basicGroup;

  @override
  Map<String, dynamic> get params => {
    'basic_group': basicGroup,
  };

  UpdateBasicGroup({
    this.basicGroup,
  });

  UpdateBasicGroup.fromJson(Map<String, dynamic> json) {
    basicGroup = tryConvertToTdObject(json['basic_group']);
  }
}

@reflector
class UpdateSupergroup extends Update {
  @override
  String get tdType => 'updateSupergroup';

  Supergroup supergroup;

  @override
  Map<String, dynamic> get params => {
    'supergroup': supergroup,
  };

  UpdateSupergroup({
    this.supergroup,
  });

  UpdateSupergroup.fromJson(Map<String, dynamic> json) {
    supergroup = tryConvertToTdObject(json['supergroup']);
  }
}

@reflector
class UpdateSecretChat extends Update {
  @override
  String get tdType => 'updateSecretChat';

  SecretChat secretChat;

  @override
  Map<String, dynamic> get params => {
    'secret_chat': secretChat,
  };

  UpdateSecretChat({
    this.secretChat,
  });

  UpdateSecretChat.fromJson(Map<String, dynamic> json) {
    secretChat = tryConvertToTdObject(json['secret_chat']);
  }
}

@reflector
class UpdateUserFullInfo extends Update {
  @override
  String get tdType => 'updateUserFullInfo';

  int userId;
  UserFullInfo userFullInfo;

  @override
  Map<String, dynamic> get params => {
    'user_id': userId,
    'user_full_info': userFullInfo,
  };

  UpdateUserFullInfo({
    this.userId,
    this.userFullInfo,
  });

  UpdateUserFullInfo.fromJson(Map<String, dynamic> json) {
    userId = tryConvertToTdObject(json['user_id']);
    userFullInfo = tryConvertToTdObject(json['user_full_info']);
  }
}

@reflector
class UpdateBasicGroupFullInfo extends Update {
  @override
  String get tdType => 'updateBasicGroupFullInfo';

  int basicGroupId;
  BasicGroupFullInfo basicGroupFullInfo;

  @override
  Map<String, dynamic> get params => {
    'basic_group_id': basicGroupId,
    'basic_group_full_info': basicGroupFullInfo,
  };

  UpdateBasicGroupFullInfo({
    this.basicGroupId,
    this.basicGroupFullInfo,
  });

  UpdateBasicGroupFullInfo.fromJson(Map<String, dynamic> json) {
    basicGroupId = tryConvertToTdObject(json['basic_group_id']);
    basicGroupFullInfo = tryConvertToTdObject(json['basic_group_full_info']);
  }
}

@reflector
class UpdateSupergroupFullInfo extends Update {
  @override
  String get tdType => 'updateSupergroupFullInfo';

  int supergroupId;
  SupergroupFullInfo supergroupFullInfo;

  @override
  Map<String, dynamic> get params => {
    'supergroup_id': supergroupId,
    'supergroup_full_info': supergroupFullInfo,
  };

  UpdateSupergroupFullInfo({
    this.supergroupId,
    this.supergroupFullInfo,
  });

  UpdateSupergroupFullInfo.fromJson(Map<String, dynamic> json) {
    supergroupId = tryConvertToTdObject(json['supergroup_id']);
    supergroupFullInfo = tryConvertToTdObject(json['supergroup_full_info']);
  }
}

@reflector
class UpdateServiceNotification extends Update {
  @override
  String get tdType => 'updateServiceNotification';

  String type;
  MessageContent content;

  @override
  Map<String, dynamic> get params => {
    'type': type,
    'content': content,
  };

  UpdateServiceNotification({
    this.type,
    this.content,
  });

  UpdateServiceNotification.fromJson(Map<String, dynamic> json) {
    type = tryConvertToTdObject(json['type']);
    content = tryConvertToTdObject(json['content']);
  }
}

@reflector
class UpdateFile extends Update {
  @override
  String get tdType => 'updateFile';

  File file;

  @override
  Map<String, dynamic> get params => {
    'file': file,
  };

  UpdateFile({
    this.file,
  });

  UpdateFile.fromJson(Map<String, dynamic> json) {
    file = tryConvertToTdObject(json['file']);
  }
}

@reflector
class UpdateFileGenerationStart extends Update {
  @override
  String get tdType => 'updateFileGenerationStart';

  int generationId;
  String originalPath;
  String destinationPath;
  String conversion;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
    'original_path': originalPath,
    'destination_path': destinationPath,
    'conversion': conversion,
  };

  UpdateFileGenerationStart({
    this.generationId,
    this.originalPath,
    this.destinationPath,
    this.conversion,
  });

  UpdateFileGenerationStart.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
    originalPath = tryConvertToTdObject(json['original_path']);
    destinationPath = tryConvertToTdObject(json['destination_path']);
    conversion = tryConvertToTdObject(json['conversion']);
  }
}

@reflector
class UpdateFileGenerationStop extends Update {
  @override
  String get tdType => 'updateFileGenerationStop';

  int generationId;

  @override
  Map<String, dynamic> get params => {
    'generation_id': generationId,
  };

  UpdateFileGenerationStop({
    this.generationId,
  });

  UpdateFileGenerationStop.fromJson(Map<String, dynamic> json) {
    generationId = tryConvertToTdObject(json['generation_id']);
  }
}

@reflector
class UpdateCall extends Update {
  @override
  String get tdType => 'updateCall';

  Call call;

  @override
  Map<String, dynamic> get params => {
    'call': call,
  };

  UpdateCall({
    this.call,
  });

  UpdateCall.fromJson(Map<String, dynamic> json) {
    call = tryConvertToTdObject(json['call']);
  }
}

@reflector
class UpdateGroupCall extends Update {
  @override
  String get tdType => 'updateGroupCall';

  GroupCall groupCall;

  @override
  Map<String, dynamic> get params => {
    'group_call': groupCall,
  };

  UpdateGroupCall({
    this.groupCall,
  });

  UpdateGroupCall.fromJson(Map<String, dynamic> json) {
    groupCall = tryConvertToTdObject(json['group_call']);
  }
}

@reflector
class UpdateGroupCallParticipant extends Update {
  @override
  String get tdType => 'updateGroupCallParticipant';

  int groupCallId;
  GroupCallParticipant participant;

  @override
  Map<String, dynamic> get params => {
    'group_call_id': groupCallId,
    'participant': participant,
  };

  UpdateGroupCallParticipant({
    this.groupCallId,
    this.participant,
  });

  UpdateGroupCallParticipant.fromJson(Map<String, dynamic> json) {
    groupCallId = tryConvertToTdObject(json['group_call_id']);
    participant = tryConvertToTdObject(json['participant']);
  }
}

@reflector
class UpdateNewCallSignalingData extends Update {
  @override
  String get tdType => 'updateNewCallSignalingData';

  int callId;
  String data;

  @override
  Map<String, dynamic> get params => {
    'call_id': callId,
    'data': data,
  };

  UpdateNewCallSignalingData({
    this.callId,
    this.data,
  });

  UpdateNewCallSignalingData.fromJson(Map<String, dynamic> json) {
    callId = tryConvertToTdObject(json['call_id']);
    data = tryConvertToTdObject(json['data']);
  }
}

@reflector
class UpdateUserPrivacySettingRules extends Update {
  @override
  String get tdType => 'updateUserPrivacySettingRules';

  UserPrivacySetting setting;
  UserPrivacySettingRules rules;

  @override
  Map<String, dynamic> get params => {
    'setting': setting,
    'rules': rules,
  };

  UpdateUserPrivacySettingRules({
    this.setting,
    this.rules,
  });

  UpdateUserPrivacySettingRules.fromJson(Map<String, dynamic> json) {
    setting = tryConvertToTdObject(json['setting']);
    rules = tryConvertToTdObject(json['rules']);
  }
}

@reflector
class UpdateUnreadMessageCount extends Update {
  @override
  String get tdType => 'updateUnreadMessageCount';

  ChatList chatList;
  int unreadCount;
  int unreadUnmutedCount;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
  };

  UpdateUnreadMessageCount({
    this.chatList,
    this.unreadCount,
    this.unreadUnmutedCount,
  });

  UpdateUnreadMessageCount.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    unreadCount = tryConvertToTdObject(json['unread_count']);
    unreadUnmutedCount = tryConvertToTdObject(json['unread_unmuted_count']);
  }
}

@reflector
class UpdateUnreadChatCount extends Update {
  @override
  String get tdType => 'updateUnreadChatCount';

  ChatList chatList;
  int totalCount;
  int unreadCount;
  int unreadUnmutedCount;
  int markedAsUnreadCount;
  int markedAsUnreadUnmutedCount;

  @override
  Map<String, dynamic> get params => {
    'chat_list': chatList,
    'total_count': totalCount,
    'unread_count': unreadCount,
    'unread_unmuted_count': unreadUnmutedCount,
    'marked_as_unread_count': markedAsUnreadCount,
    'marked_as_unread_unmuted_count': markedAsUnreadUnmutedCount,
  };

  UpdateUnreadChatCount({
    this.chatList,
    this.totalCount,
    this.unreadCount,
    this.unreadUnmutedCount,
    this.markedAsUnreadCount,
    this.markedAsUnreadUnmutedCount,
  });

  UpdateUnreadChatCount.fromJson(Map<String, dynamic> json) {
    chatList = tryConvertToTdObject(json['chat_list']);
    totalCount = tryConvertToTdObject(json['total_count']);
    unreadCount = tryConvertToTdObject(json['unread_count']);
    unreadUnmutedCount = tryConvertToTdObject(json['unread_unmuted_count']);
    markedAsUnreadCount = tryConvertToTdObject(json['marked_as_unread_count']);
    markedAsUnreadUnmutedCount = tryConvertToTdObject(json['marked_as_unread_unmuted_count']);
  }
}

@reflector
class UpdateOption extends Update {
  @override
  String get tdType => 'updateOption';

  String name;
  OptionValue value;

  @override
  Map<String, dynamic> get params => {
    'name': name,
    'value': value,
  };

  UpdateOption({
    this.name,
    this.value,
  });

  UpdateOption.fromJson(Map<String, dynamic> json) {
    name = tryConvertToTdObject(json['name']);
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class UpdateStickerSet extends Update {
  @override
  String get tdType => 'updateStickerSet';

  StickerSet stickerSet;

  @override
  Map<String, dynamic> get params => {
    'sticker_set': stickerSet,
  };

  UpdateStickerSet({
    this.stickerSet,
  });

  UpdateStickerSet.fromJson(Map<String, dynamic> json) {
    stickerSet = tryConvertToTdObject(json['sticker_set']);
  }
}

@reflector
class UpdateInstalledStickerSets extends Update {
  @override
  String get tdType => 'updateInstalledStickerSets';

  bool isMasks;
  List<int> stickerSetIds;

  @override
  Map<String, dynamic> get params => {
    'is_masks': isMasks,
    'sticker_set_ids': stickerSetIds,
  };

  UpdateInstalledStickerSets({
    this.isMasks,
    this.stickerSetIds,
  });

  UpdateInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    isMasks = tryConvertToTdObject(json['is_masks']);
    stickerSetIds = tryConvertToTdObject(json['sticker_set_ids']);
  }
}

@reflector
class UpdateTrendingStickerSets extends Update {
  @override
  String get tdType => 'updateTrendingStickerSets';

  StickerSets stickerSets;

  @override
  Map<String, dynamic> get params => {
    'sticker_sets': stickerSets,
  };

  UpdateTrendingStickerSets({
    this.stickerSets,
  });

  UpdateTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    stickerSets = tryConvertToTdObject(json['sticker_sets']);
  }
}

@reflector
class UpdateRecentStickers extends Update {
  @override
  String get tdType => 'updateRecentStickers';

  bool isAttached;
  List<int> stickerIds;

  @override
  Map<String, dynamic> get params => {
    'is_attached': isAttached,
    'sticker_ids': stickerIds,
  };

  UpdateRecentStickers({
    this.isAttached,
    this.stickerIds,
  });

  UpdateRecentStickers.fromJson(Map<String, dynamic> json) {
    isAttached = tryConvertToTdObject(json['is_attached']);
    stickerIds = tryConvertToTdObject(json['sticker_ids']);
  }
}

@reflector
class UpdateFavoriteStickers extends Update {
  @override
  String get tdType => 'updateFavoriteStickers';

  List<int> stickerIds;

  @override
  Map<String, dynamic> get params => {
    'sticker_ids': stickerIds,
  };

  UpdateFavoriteStickers({
    this.stickerIds,
  });

  UpdateFavoriteStickers.fromJson(Map<String, dynamic> json) {
    stickerIds = tryConvertToTdObject(json['sticker_ids']);
  }
}

@reflector
class UpdateSavedAnimations extends Update {
  @override
  String get tdType => 'updateSavedAnimations';

  List<int> animationIds;

  @override
  Map<String, dynamic> get params => {
    'animation_ids': animationIds,
  };

  UpdateSavedAnimations({
    this.animationIds,
  });

  UpdateSavedAnimations.fromJson(Map<String, dynamic> json) {
    animationIds = tryConvertToTdObject(json['animation_ids']);
  }
}

@reflector
class UpdateSelectedBackground extends Update {
  @override
  String get tdType => 'updateSelectedBackground';

  bool forDarkTheme;
  Background background;

  @override
  Map<String, dynamic> get params => {
    'for_dark_theme': forDarkTheme,
    'background': background,
  };

  UpdateSelectedBackground({
    this.forDarkTheme,
    this.background,
  });

  UpdateSelectedBackground.fromJson(Map<String, dynamic> json) {
    forDarkTheme = tryConvertToTdObject(json['for_dark_theme']);
    background = tryConvertToTdObject(json['background']);
  }
}

@reflector
class UpdateChatThemes extends Update {
  @override
  String get tdType => 'updateChatThemes';

  List<ChatTheme> chatThemes;

  @override
  Map<String, dynamic> get params => {
    'chat_themes': chatThemes,
  };

  UpdateChatThemes({
    this.chatThemes,
  });

  UpdateChatThemes.fromJson(Map<String, dynamic> json) {
    chatThemes = tryConvertToTdObject(json['chat_themes']);
  }
}

@reflector
class UpdateLanguagePackStrings extends Update {
  @override
  String get tdType => 'updateLanguagePackStrings';

  String localizationTarget;
  String languagePackId;
  List<LanguagePackString> strings;

  @override
  Map<String, dynamic> get params => {
    'localization_target': localizationTarget,
    'language_pack_id': languagePackId,
    'strings': strings,
  };

  UpdateLanguagePackStrings({
    this.localizationTarget,
    this.languagePackId,
    this.strings,
  });

  UpdateLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    localizationTarget = tryConvertToTdObject(json['localization_target']);
    languagePackId = tryConvertToTdObject(json['language_pack_id']);
    strings = tryConvertToTdObject(json['strings']);
  }
}

@reflector
class UpdateConnectionState extends Update {
  @override
  String get tdType => 'updateConnectionState';

  ConnectionState state;

  @override
  Map<String, dynamic> get params => {
    'state': state,
  };

  UpdateConnectionState({
    this.state,
  });

  UpdateConnectionState.fromJson(Map<String, dynamic> json) {
    state = tryConvertToTdObject(json['state']);
  }
}

@reflector
class UpdateTermsOfService extends Update {
  @override
  String get tdType => 'updateTermsOfService';

  String termsOfServiceId;
  TermsOfService termsOfService;

  @override
  Map<String, dynamic> get params => {
    'terms_of_service_id': termsOfServiceId,
    'terms_of_service': termsOfService,
  };

  UpdateTermsOfService({
    this.termsOfServiceId,
    this.termsOfService,
  });

  UpdateTermsOfService.fromJson(Map<String, dynamic> json) {
    termsOfServiceId = tryConvertToTdObject(json['terms_of_service_id']);
    termsOfService = tryConvertToTdObject(json['terms_of_service']);
  }
}

@reflector
class UpdateUsersNearby extends Update {
  @override
  String get tdType => 'updateUsersNearby';

  List<ChatNearby> usersNearby;

  @override
  Map<String, dynamic> get params => {
    'users_nearby': usersNearby,
  };

  UpdateUsersNearby({
    this.usersNearby,
  });

  UpdateUsersNearby.fromJson(Map<String, dynamic> json) {
    usersNearby = tryConvertToTdObject(json['users_nearby']);
  }
}

@reflector
class UpdateDiceEmojis extends Update {
  @override
  String get tdType => 'updateDiceEmojis';

  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'emojis': emojis,
  };

  UpdateDiceEmojis({
    this.emojis,
  });

  UpdateDiceEmojis.fromJson(Map<String, dynamic> json) {
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class UpdateAnimatedEmojiMessageClicked extends Update {
  @override
  String get tdType => 'updateAnimatedEmojiMessageClicked';

  int chatId;
  int messageId;
  Sticker sticker;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'message_id': messageId,
    'sticker': sticker,
  };

  UpdateAnimatedEmojiMessageClicked({
    this.chatId,
    this.messageId,
    this.sticker,
  });

  UpdateAnimatedEmojiMessageClicked.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    sticker = tryConvertToTdObject(json['sticker']);
  }
}

@reflector
class UpdateAnimationSearchParameters extends Update {
  @override
  String get tdType => 'updateAnimationSearchParameters';

  String provider;
  List<String> emojis;

  @override
  Map<String, dynamic> get params => {
    'provider': provider,
    'emojis': emojis,
  };

  UpdateAnimationSearchParameters({
    this.provider,
    this.emojis,
  });

  UpdateAnimationSearchParameters.fromJson(Map<String, dynamic> json) {
    provider = tryConvertToTdObject(json['provider']);
    emojis = tryConvertToTdObject(json['emojis']);
  }
}

@reflector
class UpdateSuggestedActions extends Update {
  @override
  String get tdType => 'updateSuggestedActions';

  List<SuggestedAction> addedActions;
  List<SuggestedAction> removedActions;

  @override
  Map<String, dynamic> get params => {
    'added_actions': addedActions,
    'removed_actions': removedActions,
  };

  UpdateSuggestedActions({
    this.addedActions,
    this.removedActions,
  });

  UpdateSuggestedActions.fromJson(Map<String, dynamic> json) {
    addedActions = tryConvertToTdObject(json['added_actions']);
    removedActions = tryConvertToTdObject(json['removed_actions']);
  }
}

@reflector
class UpdateNewInlineQuery extends Update {
  @override
  String get tdType => 'updateNewInlineQuery';

  int id;
  int senderUserId;
  Location userLocation;
  ChatType chatType;
  String query;
  String offset;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'chat_type': chatType,
    'query': query,
    'offset': offset,
  };

  UpdateNewInlineQuery({
    this.id,
    this.senderUserId,
    this.userLocation,
    this.chatType,
    this.query,
    this.offset,
  });

  UpdateNewInlineQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    userLocation = tryConvertToTdObject(json['user_location']);
    chatType = tryConvertToTdObject(json['chat_type']);
    query = tryConvertToTdObject(json['query']);
    offset = tryConvertToTdObject(json['offset']);
  }
}

@reflector
class UpdateNewChosenInlineResult extends Update {
  @override
  String get tdType => 'updateNewChosenInlineResult';

  int senderUserId;
  Location userLocation;
  String query;
  String resultId;
  String inlineMessageId;

  @override
  Map<String, dynamic> get params => {
    'sender_user_id': senderUserId,
    'user_location': userLocation,
    'query': query,
    'result_id': resultId,
    'inline_message_id': inlineMessageId,
  };

  UpdateNewChosenInlineResult({
    this.senderUserId,
    this.userLocation,
    this.query,
    this.resultId,
    this.inlineMessageId,
  });

  UpdateNewChosenInlineResult.fromJson(Map<String, dynamic> json) {
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    userLocation = tryConvertToTdObject(json['user_location']);
    query = tryConvertToTdObject(json['query']);
    resultId = tryConvertToTdObject(json['result_id']);
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
  }
}

@reflector
class UpdateNewCallbackQuery extends Update {
  @override
  String get tdType => 'updateNewCallbackQuery';

  int id;
  int senderUserId;
  int chatId;
  int messageId;
  int chatInstance;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'chat_id': chatId,
    'message_id': messageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  UpdateNewCallbackQuery({
    this.id,
    this.senderUserId,
    this.chatId,
    this.messageId,
    this.chatInstance,
    this.payload,
  });

  UpdateNewCallbackQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    chatId = tryConvertToTdObject(json['chat_id']);
    messageId = tryConvertToTdObject(json['message_id']);
    chatInstance = tryConvertToTdObject(json['chat_instance']);
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class UpdateNewInlineCallbackQuery extends Update {
  @override
  String get tdType => 'updateNewInlineCallbackQuery';

  int id;
  int senderUserId;
  String inlineMessageId;
  int chatInstance;
  CallbackQueryPayload payload;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'inline_message_id': inlineMessageId,
    'chat_instance': chatInstance,
    'payload': payload,
  };

  UpdateNewInlineCallbackQuery({
    this.id,
    this.senderUserId,
    this.inlineMessageId,
    this.chatInstance,
    this.payload,
  });

  UpdateNewInlineCallbackQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    inlineMessageId = tryConvertToTdObject(json['inline_message_id']);
    chatInstance = tryConvertToTdObject(json['chat_instance']);
    payload = tryConvertToTdObject(json['payload']);
  }
}

@reflector
class UpdateNewShippingQuery extends Update {
  @override
  String get tdType => 'updateNewShippingQuery';

  int id;
  int senderUserId;
  String invoicePayload;
  Address shippingAddress;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'invoice_payload': invoicePayload,
    'shipping_address': shippingAddress,
  };

  UpdateNewShippingQuery({
    this.id,
    this.senderUserId,
    this.invoicePayload,
    this.shippingAddress,
  });

  UpdateNewShippingQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    invoicePayload = tryConvertToTdObject(json['invoice_payload']);
    shippingAddress = tryConvertToTdObject(json['shipping_address']);
  }
}

@reflector
class UpdateNewPreCheckoutQuery extends Update {
  @override
  String get tdType => 'updateNewPreCheckoutQuery';

  int id;
  int senderUserId;
  String currency;
  int totalAmount;
  String invoicePayload;
  String shippingOptionId;
  OrderInfo orderInfo;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'sender_user_id': senderUserId,
    'currency': currency,
    'total_amount': totalAmount,
    'invoice_payload': invoicePayload,
    'shipping_option_id': shippingOptionId,
    'order_info': orderInfo,
  };

  UpdateNewPreCheckoutQuery({
    this.id,
    this.senderUserId,
    this.currency,
    this.totalAmount,
    this.invoicePayload,
    this.shippingOptionId,
    this.orderInfo,
  });

  UpdateNewPreCheckoutQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    senderUserId = tryConvertToTdObject(json['sender_user_id']);
    currency = tryConvertToTdObject(json['currency']);
    totalAmount = tryConvertToTdObject(json['total_amount']);
    invoicePayload = tryConvertToTdObject(json['invoice_payload']);
    shippingOptionId = tryConvertToTdObject(json['shipping_option_id']);
    orderInfo = tryConvertToTdObject(json['order_info']);
  }
}

@reflector
class UpdateNewCustomEvent extends Update {
  @override
  String get tdType => 'updateNewCustomEvent';

  String event;

  @override
  Map<String, dynamic> get params => {
    'event': event,
  };

  UpdateNewCustomEvent({
    this.event,
  });

  UpdateNewCustomEvent.fromJson(Map<String, dynamic> json) {
    event = tryConvertToTdObject(json['event']);
  }
}

@reflector
class UpdateNewCustomQuery extends Update {
  @override
  String get tdType => 'updateNewCustomQuery';

  int id;
  String data;
  int timeout;

  @override
  Map<String, dynamic> get params => {
    'id': id,
    'data': data,
    'timeout': timeout,
  };

  UpdateNewCustomQuery({
    this.id,
    this.data,
    this.timeout,
  });

  UpdateNewCustomQuery.fromJson(Map<String, dynamic> json) {
    id = tryConvertToTdObject(json['id']);
    data = tryConvertToTdObject(json['data']);
    timeout = tryConvertToTdObject(json['timeout']);
  }
}

@reflector
class UpdatePoll extends Update {
  @override
  String get tdType => 'updatePoll';

  Poll poll;

  @override
  Map<String, dynamic> get params => {
    'poll': poll,
  };

  UpdatePoll({
    this.poll,
  });

  UpdatePoll.fromJson(Map<String, dynamic> json) {
    poll = tryConvertToTdObject(json['poll']);
  }
}

@reflector
class UpdatePollAnswer extends Update {
  @override
  String get tdType => 'updatePollAnswer';

  int pollId;
  int userId;
  List<int> optionIds;

  @override
  Map<String, dynamic> get params => {
    'poll_id': pollId,
    'user_id': userId,
    'option_ids': optionIds,
  };

  UpdatePollAnswer({
    this.pollId,
    this.userId,
    this.optionIds,
  });

  UpdatePollAnswer.fromJson(Map<String, dynamic> json) {
    pollId = tryConvertToTdObject(json['poll_id']);
    userId = tryConvertToTdObject(json['user_id']);
    optionIds = tryConvertToTdObject(json['option_ids']);
  }
}

@reflector
class UpdateChatMember extends Update {
  @override
  String get tdType => 'updateChatMember';

  int chatId;
  int actorUserId;
  int date;
  ChatInviteLink inviteLink;
  ChatMember oldChatMember;
  ChatMember newChatMember;

  @override
  Map<String, dynamic> get params => {
    'chat_id': chatId,
    'actor_user_id': actorUserId,
    'date': date,
    'invite_link': inviteLink,
    'old_chat_member': oldChatMember,
    'new_chat_member': newChatMember,
  };

  UpdateChatMember({
    this.chatId,
    this.actorUserId,
    this.date,
    this.inviteLink,
    this.oldChatMember,
    this.newChatMember,
  });

  UpdateChatMember.fromJson(Map<String, dynamic> json) {
    chatId = tryConvertToTdObject(json['chat_id']);
    actorUserId = tryConvertToTdObject(json['actor_user_id']);
    date = tryConvertToTdObject(json['date']);
    inviteLink = tryConvertToTdObject(json['invite_link']);
    oldChatMember = tryConvertToTdObject(json['old_chat_member']);
    newChatMember = tryConvertToTdObject(json['new_chat_member']);
  }
}

@reflector
class Updates extends TdObject {
  @override
  String get tdType => 'updates';

  List<Update> updates;

  @override
  Map<String, dynamic> get params => {
    'updates': updates,
  };

  Updates({
    this.updates,
  });

  Updates.fromJson(Map<String, dynamic> json) {
    updates = tryConvertToTdObject(json['updates']);
  }
}

abstract class LogStream extends TdObject {}

@reflector
class LogStreamDefault extends LogStream {
  @override
  String get tdType => 'logStreamDefault';

  @override
  Map<String, dynamic> get params => {};

  LogStreamDefault();

  LogStreamDefault.fromJson(Map<String, dynamic> json);
}

@reflector
class LogStreamFile extends LogStream {
  @override
  String get tdType => 'logStreamFile';

  String path;
  int maxFileSize;
  bool redirectStderr;

  @override
  Map<String, dynamic> get params => {
    'path': path,
    'max_file_size': maxFileSize,
    'redirect_stderr': redirectStderr,
  };

  LogStreamFile({
    this.path,
    this.maxFileSize,
    this.redirectStderr,
  });

  LogStreamFile.fromJson(Map<String, dynamic> json) {
    path = tryConvertToTdObject(json['path']);
    maxFileSize = tryConvertToTdObject(json['max_file_size']);
    redirectStderr = tryConvertToTdObject(json['redirect_stderr']);
  }
}

@reflector
class LogStreamEmpty extends LogStream {
  @override
  String get tdType => 'logStreamEmpty';

  @override
  Map<String, dynamic> get params => {};

  LogStreamEmpty();

  LogStreamEmpty.fromJson(Map<String, dynamic> json);
}

@reflector
class LogVerbosityLevel extends TdObject {
  @override
  String get tdType => 'logVerbosityLevel';

  int verbosityLevel;

  @override
  Map<String, dynamic> get params => {
    'verbosity_level': verbosityLevel,
  };

  LogVerbosityLevel({
    this.verbosityLevel,
  });

  LogVerbosityLevel.fromJson(Map<String, dynamic> json) {
    verbosityLevel = tryConvertToTdObject(json['verbosity_level']);
  }
}

@reflector
class LogTags extends TdObject {
  @override
  String get tdType => 'logTags';

  List<String> tags;

  @override
  Map<String, dynamic> get params => {
    'tags': tags,
  };

  LogTags({
    this.tags,
  });

  LogTags.fromJson(Map<String, dynamic> json) {
    tags = tryConvertToTdObject(json['tags']);
  }
}

@reflector
class TestInt extends TdObject {
  @override
  String get tdType => 'testInt';

  int value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestInt({
    this.value,
  });

  TestInt.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestString extends TdObject {
  @override
  String get tdType => 'testString';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestString({
    this.value,
  });

  TestString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestBytes extends TdObject {
  @override
  String get tdType => 'testBytes';

  String value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestBytes({
    this.value,
  });

  TestBytes.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorInt extends TdObject {
  @override
  String get tdType => 'testVectorInt';

  List<int> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorInt({
    this.value,
  });

  TestVectorInt.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorIntObject extends TdObject {
  @override
  String get tdType => 'testVectorIntObject';

  List<TestInt> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorIntObject({
    this.value,
  });

  TestVectorIntObject.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorString extends TdObject {
  @override
  String get tdType => 'testVectorString';

  List<String> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorString({
    this.value,
  });

  TestVectorString.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}

@reflector
class TestVectorStringObject extends TdObject {
  @override
  String get tdType => 'testVectorStringObject';

  List<TestString> value;

  @override
  Map<String, dynamic> get params => {
    'value': value,
  };

  TestVectorStringObject({
    this.value,
  });

  TestVectorStringObject.fromJson(Map<String, dynamic> json) {
    value = tryConvertToTdObject(json['value']);
  }
}
