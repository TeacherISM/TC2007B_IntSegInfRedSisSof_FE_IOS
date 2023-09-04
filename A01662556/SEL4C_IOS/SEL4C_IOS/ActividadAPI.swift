//
//  ActividadAPI.swift
//  SEL4C_IOS
//
//

import Foundation
import Alamofire

open class ActividadAPI {
    /**

     - parameter body: (body)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actividadCreate(body: Actividad, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadCreateWithRequestBuilder(body: body).addCredential().execute { (response, error) -> Void in
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
    open class func actividadCreateWithRequestBuilder(body: Actividad) -> RequestBuilder<Actividad> {
        let path = "/actividades/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
        
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
    open class func actividadCreate(titulo2: String, descripcion2: String, tokens2: Int, titulo: String, descripcion: String, tokens: Int, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadCreateWithRequestBuilder(titulo2: titulo2, descripcion2: descripcion2, tokens2: tokens2, titulo: titulo, descripcion: descripcion, tokens: tokens).execute { (response, error) -> Void in
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
    open class func actividadCreateWithRequestBuilder(titulo2: String, descripcion2: String, tokens2: Int, titulo: String, descripcion: String, tokens: Int) -> RequestBuilder<Actividad> {
        let path = "/actividades/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A unique integer value identifying this home model.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actividadDestroy(_id: Int, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        actividadDestroyWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
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
    open class func actividadDestroyWithRequestBuilder(_id: Int) -> RequestBuilder<Void> {
        var path = "/actividades/{id}/"
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
    open class func actividadList(page: Int? = nil, completion: @escaping ((_ data: PaginatedActividadList?,_ error: Error?) -> Void)) {
        let username = "A01662556"
        let password = "django040903"
        let loginString = "\(username):\(password)"
        let loginData = loginString.data(using: .utf8)!
        let base64LoginString = loginData.base64EncodedString()

        actividadListWithRequestBuilder(page: page)
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
    open class func actividadListWithRequestBuilder(page: Int? = nil) -> RequestBuilder<PaginatedActividadList> {
        let path = "/actividades/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "page": page?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<PaginatedActividadList>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this home model.
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actividadPartialUpdate(_id: Int, body: PatchedActividad? = nil, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadPartialUpdateWithRequestBuilder(_id: _id, body: body).execute { (response, error) -> Void in
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
    open class func actividadPartialUpdateWithRequestBuilder(_id: Int, body: PatchedActividad? = nil) -> RequestBuilder<Actividad> {
        var path = "/actividades/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
    open class func actividadPartialUpdate(_id: Int, titulo2: String? = nil, descripcion2: String? = nil, tokens2: Int? = nil, titulo: String? = nil, descripcion: String? = nil, tokens: Int? = nil, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadPartialUpdateWithRequestBuilder(_id: _id, titulo2: titulo2, descripcion2: descripcion2, tokens2: tokens2, titulo: titulo, descripcion: descripcion, tokens: tokens).execute { (response, error) -> Void in
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
    open class func actividadPartialUpdateWithRequestBuilder(_id: Int, titulo2: String? = nil, descripcion2: String? = nil, tokens2: Int? = nil, titulo: String? = nil, descripcion: String? = nil, tokens: Int? = nil) -> RequestBuilder<Actividad> {
        var path = "/actividades/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }

    /**

     - parameter _id: (path) A unique integer value identifying this home model.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actividadRetrieve(_id: Int, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadRetrieveWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
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
    open class func actividadRetrieveWithRequestBuilder(_id: Int) -> RequestBuilder<Actividad> {
        var path = "/actividades/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)
     - parameter _id: (path) A unique integer value identifying this home model.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func actividadUpdate(body: Actividad, _id: Int, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadUpdateWithRequestBuilder(body: body, _id: _id).execute { (response, error) -> Void in
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
    open class func actividadUpdateWithRequestBuilder(body: Actividad, _id: Int) -> RequestBuilder<Actividad> {
        var path = "/actividades/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

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
    open class func actividadUpdate(titulo2: String, descripcion2: String, tokens2: Int, titulo: String, descripcion: String, tokens: Int, _id: Int, completion: @escaping ((_ data: Actividad?,_ error: Error?) -> Void)) {
        actividadUpdateWithRequestBuilder(titulo2: titulo2, descripcion2: descripcion2, tokens2: tokens2, titulo: titulo, descripcion: descripcion, tokens: tokens, _id: _id).execute { (response, error) -> Void in
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
    open class func actividadUpdateWithRequestBuilder(titulo2: String, descripcion2: String, tokens2: Int, titulo: String, descripcion: String, tokens: Int, _id: Int) -> RequestBuilder<Actividad> {
        var path = "/actividades/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Actividad>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()
        
        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    
    
    
    
}

