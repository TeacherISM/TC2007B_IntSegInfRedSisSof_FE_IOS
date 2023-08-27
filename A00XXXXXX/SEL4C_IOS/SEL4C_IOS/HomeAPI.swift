//
// HomeAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//


import Alamofire
import Foundation

open class HomeAPI {
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeCreate(body: Home, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homeCreateWithRequestBuilder(body: body).addCredential().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /home/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<Home> 
     */
    open class func homeCreateWithRequestBuilder(body: Home) -> RequestBuilder<Home> {
        let path = "/home/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter title2: (form)  
     - parameter _description2: (form)  
     - parameter createdAt2: (form)  
     - parameter title: (form)  
     - parameter _description: (form)  
     - parameter createdAt: (form)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeCreate(title2: String, _description2: String, createdAt2: Date, title: String, _description: String, createdAt: Date, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homeCreateWithRequestBuilder(title2: title2, _description2: _description2, createdAt2: createdAt2, title: title, _description: _description, createdAt: createdAt).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /home/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter title2: (form)  
     - parameter _description2: (form)  
     - parameter createdAt2: (form)  
     - parameter title: (form)  
     - parameter _description: (form)  
     - parameter createdAt: (form)  

     - returns: RequestBuilder<Home> 
     */
    open class func homeCreateWithRequestBuilder(title2: String, _description2: String, createdAt2: Date, title: String, _description: String, createdAt: Date) -> RequestBuilder<Home> {
        let path = "/home/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeDestroy(_id: Int, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        homeDestroyWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /home/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - parameter _id: (path) A unique integer value identifying this home model. 

     - returns: RequestBuilder<Void> 
     */
    open class func homeDestroyWithRequestBuilder(_id: Int) -> RequestBuilder<Void> {
        var path = "/home/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter page: (query) A page number within the paginated result set. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeList(page: Int? = nil, completion: @escaping ((_ data: PaginatedHomeList?,_ error: Error?) -> Void)) {
        let username = "A00XXXXXX"
        let password = "password"
        let loginString = "\(username):\(password)"
        let loginData = loginString.data(using: .utf8)!
        let base64LoginString = loginData.base64EncodedString()

        homeListWithRequestBuilder(page: page)
            .addHeader(name: "Authorization", value: "Basic \(base64LoginString)")
            .execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /home/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "next" : "http://api.example.org/accounts/?page=4",
  "previous" : "http://api.example.org/accounts/?page=2",
  "count" : 123,
  "results" : [ {
    "description" : "description",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "title" : "title"
  }, {
    "description" : "description",
    "created_at" : "2000-01-23T04:56:07.000+00:00",
    "title" : "title"
  } ]
}}]
     - parameter page: (query) A page number within the paginated result set. (optional)

     - returns: RequestBuilder<PaginatedHomeList> 
     */
    open class func homeListWithRequestBuilder(page: Int? = nil) -> RequestBuilder<PaginatedHomeList> {
        let path = "/home/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "page": page?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<PaginatedHomeList>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homePartialUpdate(_id: Int, body: PatchedHome? = nil, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homePartialUpdateWithRequestBuilder(_id: _id, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /home/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<Home> 
     */
    open class func homePartialUpdateWithRequestBuilder(_id: Int, body: PatchedHome? = nil) -> RequestBuilder<Home> {
        var path = "/home/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter title2: (form)  (optional)
     - parameter _description2: (form)  (optional)
     - parameter createdAt2: (form)  (optional)
     - parameter title: (form)  (optional)
     - parameter _description: (form)  (optional)
     - parameter createdAt: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homePartialUpdate(_id: Int, title2: String? = nil, _description2: String? = nil, createdAt2: Date? = nil, title: String? = nil, _description: String? = nil, createdAt: Date? = nil, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homePartialUpdateWithRequestBuilder(_id: _id, title2: title2, _description2: _description2, createdAt2: createdAt2, title: title, _description: _description, createdAt: createdAt).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /home/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter title2: (form)  (optional)
     - parameter _description2: (form)  (optional)
     - parameter createdAt2: (form)  (optional)
     - parameter title: (form)  (optional)
     - parameter _description: (form)  (optional)
     - parameter createdAt: (form)  (optional)

     - returns: RequestBuilder<Home> 
     */
    open class func homePartialUpdateWithRequestBuilder(_id: Int, title2: String? = nil, _description2: String? = nil, createdAt2: Date? = nil, title: String? = nil, _description: String? = nil, createdAt: Date? = nil) -> RequestBuilder<Home> {
        var path = "/home/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeRetrieve(_id: Int, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homeRetrieveWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /home/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter _id: (path) A unique integer value identifying this home model. 

     - returns: RequestBuilder<Home> 
     */
    open class func homeRetrieveWithRequestBuilder(_id: Int) -> RequestBuilder<Home> {
        var path = "/home/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)  
     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeUpdate(body: Home, _id: Int, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homeUpdateWithRequestBuilder(body: body, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /home/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter body: (body)  
     - parameter _id: (path) A unique integer value identifying this home model. 

     - returns: RequestBuilder<Home> 
     */
    open class func homeUpdateWithRequestBuilder(body: Home, _id: Int) -> RequestBuilder<Home> {
        var path = "/home/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter title2: (form)  
     - parameter _description2: (form)  
     - parameter createdAt2: (form)  
     - parameter title: (form)  
     - parameter _description: (form)  
     - parameter createdAt: (form)  
     - parameter _id: (path) A unique integer value identifying this home model. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func homeUpdate(title2: String, _description2: String, createdAt2: Date, title: String, _description: String, createdAt: Date, _id: Int, completion: @escaping ((_ data: Home?,_ error: Error?) -> Void)) {
        homeUpdateWithRequestBuilder(title2: title2, _description2: _description2, createdAt2: createdAt2, title: title, _description: _description, createdAt: createdAt, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /home/{id}/

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "description" : "description",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "title" : "title"
}}]
     - parameter title2: (form)  
     - parameter _description2: (form)  
     - parameter createdAt2: (form)  
     - parameter title: (form)  
     - parameter _description: (form)  
     - parameter createdAt: (form)  
     - parameter _id: (path) A unique integer value identifying this home model. 

     - returns: RequestBuilder<Home> 
     */
    open class func homeUpdateWithRequestBuilder(title2: String, _description2: String, createdAt2: Date, title: String, _description: String, createdAt: Date, _id: Int) -> RequestBuilder<Home> {
        var path = "/home/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Home>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    
    
    
    
}
