# custom_bet_api.api.BetControllerApi

## Load the API package
```dart
import 'package:custom_bet_api/api.dart';
```

All URIs are relative to *http://localhost:7000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBetToGame**](BetControllerApi.md#addbettogame) | **POST** /tournament/{tournamentId}/game/{gameId}/bet/addBet | Add a new bet to a Game


# **addBetToGame**
> MyTournament addBetToGame(tournamentId, gameId, bet)

Add a new bet to a Game

### Example
```dart
import 'package:custom_bet_api/api.dart';
// TODO Configure OAuth2 access token for authorization: Auth0
//defaultApiClient.getAuthentication<OAuth>('Auth0').accessToken = 'YOUR_ACCESS_TOKEN';

final api = CustomBetApi().getBetControllerApi();
final int tournamentId = 789; // int | 
final int gameId = 789; // int | 
final Bet bet = ; // Bet | 

try {
    final response = api.addBetToGame(tournamentId, gameId, bet);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BetControllerApi->addBetToGame: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tournamentId** | **int**|  | 
 **gameId** | **int**|  | 
 **bet** | [**Bet**](Bet.md)|  | 

### Return type

[**MyTournament**](MyTournament.md)

### Authorization

[Auth0](../README.md#Auth0)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

