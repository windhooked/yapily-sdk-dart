part of yapily_sdk.api;



class AccountsApi {
  final ApiClient apiClient;

  AccountsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get account
  ///
  /// 
  Future<ApiResponseOfAccount> getAccountUsingGET(String consent, String accountId) async {
    Object postBody = null;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }
    if(accountId == null) {
     throw new ApiException(400, "Missing required param: accountId");
    }

    // create path and map variables
    String path = "/accounts/{accountId}".replaceAll("{format}","json").replaceAll("{" + "accountId" + "}", accountId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiResponseOfAccount') as ApiResponseOfAccount ;
    } else {
      return null;
    }
  }
  /// Get accounts
  ///
  /// 
  Future<ApiListResponseOfAccount> getAccountsUsingGET(String consent) async {
    Object postBody = null;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }

    // create path and map variables
    String path = "/accounts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiListResponseOfAccount') as ApiListResponseOfAccount ;
    } else {
      return null;
    }
  }
  /// Initiate a new account request for user to authorize
  ///
  /// 
  Future<ApiResponseOfAuthorisationRequestResponse> initiateAccountRequestUsingPOST(AccountAuthorisationRequest accountAuthRequest) async {
    Object postBody = accountAuthRequest;

    // verify required params are set
    if(accountAuthRequest == null) {
     throw new ApiException(400, "Missing required param: accountAuthRequest");
    }

    // create path and map variables
    String path = "/account-auth-requests".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["basicAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ApiResponseOfAuthorisationRequestResponse') as ApiResponseOfAuthorisationRequestResponse ;
    } else {
      return null;
    }
  }
}
