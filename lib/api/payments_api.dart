part of yapily_sdk.api;



class PaymentsApi {
  final ApiClient apiClient;

  PaymentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Initiate a new single payment for user to authorise
  ///
  /// 
  Future<ApiResponseOfAuthorisationRequestResponse> createPaymentInitiationUsingPOST({ SortCodePaymentAuthRequest paymentAuthRequest }) async {
    Object postBody = paymentAuthRequest;

    // verify required params are set

    // create path and map variables
    String path = "/payment-sortcode-auth-requests".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json;charset=UTF-8"];

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
  /// Create a new single payment
  ///
  /// 
  Future<ApiResponseOfPaymentResponse> createPaymentUsingPOST(String consent, { SortCodePaymentRequest paymentRequest }) async {
    Object postBody = paymentRequest;

    // verify required params are set
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }

    // create path and map variables
    String path = "/payment-sortcode".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["consent"] = consent;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

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
          apiClient.deserialize(response.body, 'ApiResponseOfPaymentResponse') as ApiResponseOfPaymentResponse ;
    } else {
      return null;
    }
  }
  /// Get status of a payment
  ///
  /// 
  Future<ApiResponseOfPaymentResponse> getPaymentStatusUsingGET(String paymentId, String consent) async {
    Object postBody = null;

    // verify required params are set
    if(paymentId == null) {
     throw new ApiException(400, "Missing required param: paymentId");
    }
    if(consent == null) {
     throw new ApiException(400, "Missing required param: consent");
    }

    // create path and map variables
    String path = "/payments/{paymentId}".replaceAll("{format}","json").replaceAll("{" + "paymentId" + "}", paymentId.toString());

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
          apiClient.deserialize(response.body, 'ApiResponseOfPaymentResponse') as ApiResponseOfPaymentResponse ;
    } else {
      return null;
    }
  }
}
