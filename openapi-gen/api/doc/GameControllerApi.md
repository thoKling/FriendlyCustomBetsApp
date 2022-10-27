# custom_bet_api.api.GameControllerApi

## Load the API package
```dart
import 'package:custom_bet_api/api.dart';
```

All URIs are relative to *http://localhost:7000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGameToTournament**](GameControllerApi.md#addgametotournament) | **POST** /tournament/{tournamentId}/game/addGame | Add a new game to a Tournament


# **addGameToTournament**
> MyTournament addGameToTournament(tournamentId, game)

Add a new game to a Tournament

### Example
```dart
import 'package:custom_bet_api/api.dart';
// TODO Configure OAuth2 access token for authorization: Auth0
//defaultApiClient.getAuthentication<OAuth>('Auth0').accessToken = 'YOUR_ACCESS_TOKEN';

final api = CustomBetApi().getGameControllerApi();
final int tournamentId = 789; // int | 
final Game game = ; // Game | 

try {
    final response = api.addGameToTournament(tournamentId, game);
    print(response);
} catch on DioError (e) {
    print('Exception when calling GameControllerApi->addGameToTournament: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tournamentId** | **int**|  | 
 **game** | [**Game**](Game.md)|  | 

### Return type

[**MyTournament**](MyTournament.md)

### Authorization

[Auth0](../README.md#Auth0)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

