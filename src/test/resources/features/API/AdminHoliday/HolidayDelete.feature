Feature: As an administrator, I want to be able to delete holiday information for the specified id number via API connection.

  Scenario: When a DELETE request containing valid authorization credentials and the holiday id to be deleted is sent to
  the /api/holidayDelete endpoint, the expected status code returned should be 202, and the message in the response body
  should confirm: "holiday deleted successfully".

    * The api user constructs the base url with the "admin" token.
    # APi kullanicisi "admin" token ile base urli olusturur
    * The api user sets "api/holidayDelete" path parameters
    # APi kullanicisi "api/holidayDelete" path parametrelerini olusturur
    * The api user prepares a DELETE request containing the holiday ids to be deleted to send to the api holidayDelete endpoint.
    # Api kullanicisi api holidayDelete endpointine gondermek icin silinmek istenen holiday idsini iceren bir delete request hazirlar
    * The api user sends the DELETE request and saves the response returned from the api holidayDelete endpoint.
    # Api kullanicisi delete request gonderir ve api holidayDelete endpointinden donen responsei kaydeder
    * The api user verifies that the status code is 202
    # Api kullanicisi status codeun 202 oldugunu dogrular
    * The api user verifies that the message information in the response body is "holiday deleted successfully"
    # Api kullanicisi response bodydeki message bilgisinin "holiday deleted successfully" oldugunu dogrular


  Scenario: When a DELETE request containing valid authorization credentials and an incorrect (non-existent in the system)
  holiday id is sent to the /api/holidayDelete endpoint, the expected status code returned should be 404, and the
  message in the response body should confirm: "holiday not found".

    * The api user constructs the base url with the "admin" token.
    # APi kullanicisi "admin" token ile base urli olusturur
    * The api user sets "api/holidayDelete" path parameters
    # APi kullanicisi "api/holidayDelete" path parametrelerini olusturur
    * The api user prepares a DELETE request containing the holiday ids that are not present in the system to send to the api holidayDelete endpoint.
    # Api kullanicisi api holidayDelete endpointine gondermek icin sistemde bulunmayan holiday idsini iceren bir delete request hazirlar
    * The api user sends the DELETE request and saves the response returned from the api holidayDelete endpoint.
    # Api kullanicisi delete request gonderir ve api holidayDelete endpointinden donen responsei kaydeder
    * The api user verifies that the status code is 404
    # Api kullanicisi status codeun 404 oldugunu dogrular
    * The api user verifies that the message information in the response body is "holiday not found"
    # Api kullanicisi response bodydeki message bilgisinin "holiday not found" oldugunu dogrular


  Scenario: When a DELETE request containing invalid authorization credentials and the holiday id to be deleted is sent to
  the /api/holidayDelete endpoint, the expected status code returned should be 401, and the message in the
  response body should confirm: "Unauthenticated.".

    * The api user constructs the base url with the "invalid" token.
    # APi kullanicisi "invalid" token ile base urli olusturur
    * The api user sets "api/holidayDelete" path parameters
    # APi kullanicisi "api/holidayDelete" path parametrelerini olusturur
    * The api user prepares a DELETE request containing the holiday ids to be deleted to send to the api holidayDelete endpoint.
    # Api kullanicisi api holidayDelete endpointine gondermek icin silinmek istenen holiday idsini iceren bir delete request hazirlar
    * The api user saves the response returned from the api holidayDelete endpoint and confirms that the status code is '401' and the reason phrase is Unauthorized.
    # Api kullanicisi api holidayDelete endpointinden donen responsei kaydeder, status codeun '401' ve reason phrase bilgisinin Unauthorized oldugunu dogrular

  @API
  Scenario: The Deleted Id information in the response body returned from the /api/holidayDelete endpoint should be
  verified to be the same as the 'id' information in the DELETE request body sent to the /api/holidayDelete endpoint.

    * The api user constructs the base url with the "admin" token.
    # APi kullanicisi "admin" token ile base urli olusturur
    * The api user sets "api/holidayDelete" path parameters
    # APi kullanicisi "api/holidayDelete" path parametrelerini olusturur
    * The api user prepares a DELETE request containing the holiday ids to be deleted to send to the api holidayDelete endpoint.
    # Api kullanicisi api holidayDelete endpointine gondermek icin silinmek istenen holiday idsini iceren bir delete request hazirlar
    * The api user sends the DELETE request and saves the response returned from the api holidayDelete endpoint.
    # Api kullanicisi delete request gonderir ve api holidayDelete endpointinden donen responsei kaydeder
    * The api user verifies that the Deleted id information in the response body is the same as the id information in the request body.
    # Api kullanicisi response body icindeki Deleted Id bilgisinin request body icindeki id bilgisi ile ayni oldugu dogrular