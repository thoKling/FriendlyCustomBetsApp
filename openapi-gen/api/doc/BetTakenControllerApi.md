# custom_bet_api.api.BetTakenControllerApi

## Load the API package
```dart
import 'package:custom_bet_api/api.dart';
```

All URIs are relative to *http://localhost:7000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**takeBet**](BetTakenControllerApi.md#takebet) | **POST** /tournament/{tournamentId}/takenBet/takeBet/{betId}/{gameId} | Take a bet on an existing bet


# **takeBet**
> BetTaken takeBet(tournamentId, gameId, betId, takeBetRequest)

Take a bet on an existing bet

### Example
```dart
import 'package:custom_bet_api/api.dart';
// TODO Configure OAuth2 access token for authorization: Auth0
//defaultApiClient.getAuthentication<OAuth>('Auth0').accessToken = 'YOUR_ACCESS_TOKEN';

final api = CustomBetApi().getBetTakenControllerApi();
final int tournamentId = 789; // int | 
final int gameId = 789; // int | 
final int betId = 789; // int | 
final TakeBetRequest takeBetRequest = ; // TakeBetRequest | 

try {
    final response = api.takeBet(tournamentId, gameId, betId, takeBetRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling BetTakenControllerApi->takeBet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tournamentId** | **int**|  | 
 **gameId** | **int**|  | 
 **betId** | **int**|  | 
 **takeBetRequest** | [**TakeBetRequest**](TakeBetRequest.md)|  | 

### Return type

[**BetTaken**](BetTaken.md)

### Authorization

[Auth0](../README.md#Auth0)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

