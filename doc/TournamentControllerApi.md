# custom_bet_api.api.TournamentControllerApi

## Load the API package
```dart
import 'package:custom_bet_api/api.dart';
```

All URIs are relative to *http://localhost:7000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addGameToTournament**](TournamentControllerApi.md#addgametotournament) | **POST** /tournament/addGame | Add a new game to a Tournament
[**createTournament**](TournamentControllerApi.md#createtournament) | **POST** /tournament/create | Create a tournament
[**getMyTournaments**](TournamentControllerApi.md#getmytournaments) | **GET** /tournament/myTournaments | Fetch all tournaments where user participate
[**getTournament**](TournamentControllerApi.md#gettournament) | **GET** /tournament/{tournamentId} | Fetch a tournament by its id
[**joinTournament**](TournamentControllerApi.md#jointournament) | **POST** /tournament/join | Join a tournament by its id


# **addGameToTournament**
> Game addGameToTournament(addGameToTournamentRequest)

Add a new game to a Tournament

### Example
```dart
import 'package:custom_bet_api/api.dart';

final api = CustomBetApi().getTournamentControllerApi();
final AddGameToTournamentRequest addGameToTournamentRequest = ; // AddGameToTournamentRequest | 

try {
    final response = api.addGameToTournament(addGameToTournamentRequest);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TournamentControllerApi->addGameToTournament: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addGameToTournamentRequest** | [**AddGameToTournamentRequest**](AddGameToTournamentRequest.md)|  | 

### Return type

[**Game**](Game.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createTournament**
> MyTournament createTournament(body)

Create a tournament

### Example
```dart
import 'package:custom_bet_api/api.dart';

final api = CustomBetApi().getTournamentControllerApi();
final String body = body_example; // String | 

try {
    final response = api.createTournament(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TournamentControllerApi->createTournament: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **String**|  | 

### Return type

[**MyTournament**](MyTournament.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyTournaments**
> BuiltList<MyTournament> getMyTournaments()

Fetch all tournaments where user participate

### Example
```dart
import 'package:custom_bet_api/api.dart';

final api = CustomBetApi().getTournamentControllerApi();

try {
    final response = api.getMyTournaments();
    print(response);
} catch on DioError (e) {
    print('Exception when calling TournamentControllerApi->getMyTournaments: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;MyTournament&gt;**](MyTournament.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTournament**
> MyTournament getTournament(tournamentId)

Fetch a tournament by its id

### Example
```dart
import 'package:custom_bet_api/api.dart';

final api = CustomBetApi().getTournamentControllerApi();
final int tournamentId = 789; // int | 

try {
    final response = api.getTournament(tournamentId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TournamentControllerApi->getTournament: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tournamentId** | **int**|  | 

### Return type

[**MyTournament**](MyTournament.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinTournament**
> MyTournament joinTournament(body)

Join a tournament by its id

### Example
```dart
import 'package:custom_bet_api/api.dart';

final api = CustomBetApi().getTournamentControllerApi();
final int body = 789; // int | 

try {
    final response = api.joinTournament(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling TournamentControllerApi->joinTournament: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **int**|  | 

### Return type

[**MyTournament**](MyTournament.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

