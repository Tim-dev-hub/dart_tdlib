TDLib for Dart (WIP)
===

A port of the Telegram Database Library (TDLib) for Dart.

# Example 
```dart
import 'package:myapp/tdlib/client.dart';
import 'package:myapp/tdlib/src/tdapi/tdapi.dart';
import 'package:myapp/tdlib/td_api.dart';

void main() async {
  var client = TelegramClient();
  await client.init();
  await client.send(SetLogVerbosityLevel(newVerbosityLevel: 0));

  client.updateAuthorizationState.listen((authState) {
    print("Authorization state been updated: ${authState.getConstructor()}");
    if (authState.getConstructor() ==
        AuthorizationStateWaitPhoneNumber.CONSTRUCTOR) {
      client.send(SetAuthenticationPhoneNumber(
          phoneNumber: "+8 800 55 3535",
          settings: PhoneNumberAuthenticationSettings(
              allowFlashCall: false,
              isCurrentPhoneNumber: false,
              allowSmsRetrieverApi: false)));
    }
  });
}
```

# Building
1. Copy actual sheme [from repo](https://raw.githubusercontent.com/tdlib/td/master/td/generate/scheme/td_api.tl) to data/td_api.tl
2. ```dart generate.dart```
