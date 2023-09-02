//
// PCAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class PCAPI {
    /**

     - parameter body: (body)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCCreate(body: PCMaster, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCCreateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /PC/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter body: (body)

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCCreateWithRequestBuilder(body: PCMaster) -> RequestBuilder<PCMaster> {
        let path = "/PC/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCCreate(procesador2: String, tarjetaGrafica2: String, numVentiladores2: Int, fuentePoder2: String, fechaConsulta2: Date, procesador: String, tarjetaGrafica: String, numVentiladores: Int, fuentePoder: String, fechaConsulta: Date, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCCreateWithRequestBuilder(procesador2: procesador2, tarjetaGrafica2: tarjetaGrafica2, numVentiladores2: numVentiladores2, fuentePoder2: fuentePoder2, fechaConsulta2: fechaConsulta2, procesador: procesador, tarjetaGrafica: tarjetaGrafica, numVentiladores: numVentiladores, fuentePoder: fuentePoder, fechaConsulta: fechaConsulta).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /PC/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCCreateWithRequestBuilder(procesador2: String, tarjetaGrafica2: String, numVentiladores2: Int, fuentePoder2: String, fechaConsulta2: Date, procesador: String, tarjetaGrafica: String, numVentiladores: Int, fuentePoder: String, fechaConsulta: Date) -> RequestBuilder<PCMaster> {
        let path = "/PC/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)
     - parameter completion: completion handler to receive the data and the error objects
     */
 

    /**
     - POST /PC/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)

     - returns: RequestBuilder<PCMaster>
     */

    /**

     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCDestroy(_id: Int, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        pCDestroyWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - DELETE /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - parameter _id: (path) A unique integer value identifying this pc master.

     - returns: RequestBuilder<Void>
     */
    open class func pCDestroyWithRequestBuilder(_id: Int) -> RequestBuilder<Void> {
        var path = "/PC/{id}/"
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
    open class func pCList(page: Int? = nil, completion: @escaping ((_ data: PaginatedPCMasterList?,_ error: Error?) -> Void)) {
        let username = "A01661896"
        let password = "password"
        let loginString = "\(username):\(password)"
        let loginData = loginString.data(using: .utf8)!
        let base64LoginString = loginData.base64EncodedString()

        pCListWithRequestBuilder(page: page)
            .addHeader(name: "Authorization", value: "Basic \(base64LoginString)")
            .execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    
    /**
     - GET /PC/
     -

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
    "tarjetaGrafica" : "tarjetaGrafica",
    "NumVentiladores" : 0,
    "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
    "procesador" : "procesador",
    "FuentePoder" : "FuentePoder"
  }, {
    "tarjetaGrafica" : "tarjetaGrafica",
    "NumVentiladores" : 0,
    "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
    "procesador" : "procesador",
    "FuentePoder" : "FuentePoder"
  } ]
}}]
     - parameter page: (query) A page number within the paginated result set. (optional)

     - returns: RequestBuilder<PaginatedPCMasterList>
     */
    open class func pCListWithRequestBuilder(page: Int? = nil) -> RequestBuilder<PaginatedPCMasterList> {
        let path = "/PC/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "page": page?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<PaginatedPCMasterList>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter body: (body)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCPartialUpdate(_id: Int, body: PatchedPCMaster? = nil, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCPartialUpdateWithRequestBuilder(_id: _id, body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter body: (body)  (optional)

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCPartialUpdateWithRequestBuilder(_id: Int, body: PatchedPCMaster? = nil) -> RequestBuilder<PCMaster> {
        var path = "/PC/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter procesador2: (form)  (optional)
     - parameter tarjetaGrafica2: (form)  (optional)
     - parameter numVentiladores2: (form)  (optional)
     - parameter fuentePoder2: (form)  (optional)
     - parameter fechaConsulta2: (form)  (optional)
     - parameter procesador: (form)  (optional)
     - parameter tarjetaGrafica: (form)  (optional)
     - parameter numVentiladores: (form)  (optional)
     - parameter fuentePoder: (form)  (optional)
     - parameter fechaConsulta: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCPartialUpdate(_id: Int, procesador2: String? = nil, tarjetaGrafica2: String? = nil, numVentiladores2: Int? = nil, fuentePoder2: String? = nil, fechaConsulta2: Date? = nil, procesador: String? = nil, tarjetaGrafica: String? = nil, numVentiladores: Int? = nil, fuentePoder: String? = nil, fechaConsulta: Date? = nil, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCPartialUpdateWithRequestBuilder(_id: _id, procesador2: procesador2, tarjetaGrafica2: tarjetaGrafica2, numVentiladores2: numVentiladores2, fuentePoder2: fuentePoder2, fechaConsulta2: fechaConsulta2, procesador: procesador, tarjetaGrafica: tarjetaGrafica, numVentiladores: numVentiladores, fuentePoder: fuentePoder, fechaConsulta: fechaConsulta).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PATCH /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter procesador2: (form)  (optional)
     - parameter tarjetaGrafica2: (form)  (optional)
     - parameter numVentiladores2: (form)  (optional)
     - parameter fuentePoder2: (form)  (optional)
     - parameter fechaConsulta2: (form)  (optional)
     - parameter procesador: (form)  (optional)
     - parameter tarjetaGrafica: (form)  (optional)
     - parameter numVentiladores: (form)  (optional)
     - parameter fuentePoder: (form)  (optional)
     - parameter fechaConsulta: (form)  (optional)

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCPartialUpdateWithRequestBuilder(_id: Int, procesador2: String? = nil, tarjetaGrafica2: String? = nil, numVentiladores2: Int? = nil, fuentePoder2: String? = nil, fechaConsulta2: Date? = nil, procesador: String? = nil, tarjetaGrafica: String? = nil, numVentiladores: Int? = nil, fuentePoder: String? = nil, fechaConsulta: Date? = nil) -> RequestBuilder<PCMaster> {
        var path = "/PC/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter procesador2: (form)  (optional)
     - parameter tarjetaGrafica2: (form)  (optional)
     - parameter numVentiladores2: (form)  (optional)
     - parameter fuentePoder2: (form)  (optional)
     - parameter fechaConsulta2: (form)  (optional)
     - parameter procesador: (form)  (optional)
     - parameter tarjetaGrafica: (form)  (optional)
     - parameter numVentiladores: (form)  (optional)
     - parameter fuentePoder: (form)  (optional)
     - parameter fechaConsulta: (form)  (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */



    /**
     - PATCH /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter procesador2: (form)  (optional)
     - parameter tarjetaGrafica2: (form)  (optional)
     - parameter numVentiladores2: (form)  (optional)
     - parameter fuentePoder2: (form)  (optional)
     - parameter fechaConsulta2: (form)  (optional)
     - parameter procesador: (form)  (optional)
     - parameter tarjetaGrafica: (form)  (optional)
     - parameter numVentiladores: (form)  (optional)
     - parameter fuentePoder: (form)  (optional)
     - parameter fechaConsulta: (form)  (optional)

     - returns: RequestBuilder<PCMaster>
     */

    /**

     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCRetrieve(_id: Int, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCRetrieveWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter _id: (path) A unique integer value identifying this pc master.

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCRetrieveWithRequestBuilder(_id: Int) -> RequestBuilder<PCMaster> {
        var path = "/PC/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)
     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCUpdate(body: PCMaster, _id: Int, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCUpdateWithRequestBuilder(body: body, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter body: (body)
     - parameter _id: (path) A unique integer value identifying this pc master.

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCUpdateWithRequestBuilder(body: PCMaster, _id: Int) -> RequestBuilder<PCMaster> {
        var path = "/PC/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)
     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func pCUpdate(procesador2: String, tarjetaGrafica2: String, numVentiladores2: Int, fuentePoder2: String, fechaConsulta2: Date, procesador: String, tarjetaGrafica: String, numVentiladores: Int, fuentePoder: String, fechaConsulta: Date, _id: Int, completion: @escaping ((_ data: PCMaster?,_ error: Error?) -> Void)) {
        pCUpdateWithRequestBuilder(procesador2: procesador2, tarjetaGrafica2: tarjetaGrafica2, numVentiladores2: numVentiladores2, fuentePoder2: fuentePoder2, fechaConsulta2: fechaConsulta2, procesador: procesador, tarjetaGrafica: tarjetaGrafica, numVentiladores: numVentiladores, fuentePoder: fuentePoder, fechaConsulta: fechaConsulta, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)
     - parameter _id: (path) A unique integer value identifying this pc master.

     - returns: RequestBuilder<PCMaster>
     */
    open class func pCUpdateWithRequestBuilder(procesador2: String, tarjetaGrafica2: String, numVentiladores2: Int, fuentePoder2: String, fechaConsulta2: Date, procesador: String, tarjetaGrafica: String, numVentiladores: Int, fuentePoder: String, fechaConsulta: Date, _id: Int) -> RequestBuilder<PCMaster> {
        var path = "/PC/{id}/"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: {})
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<PCMaster>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)
     - parameter _id: (path) A unique integer value identifying this pc master.
     - parameter completion: completion handler to receive the data and the error objects
     */


    /**
     - PUT /PC/{id}/
     -

     - BASIC:
       - type: http
       - name: basicAuth
     - API Key:
       - type: apiKey sessionid (QUERY)
       - name: cookieAuth
     - examples: [{contentType=application/json, example={
  "tarjetaGrafica" : "tarjetaGrafica",
  "NumVentiladores" : 0,
  "FechaConsulta" : "2000-01-23T04:56:07.000+00:00",
  "procesador" : "procesador",
  "FuentePoder" : "FuentePoder"
}}]
     - parameter procesador2: (form)
     - parameter tarjetaGrafica2: (form)
     - parameter numVentiladores2: (form)
     - parameter fuentePoder2: (form)
     - parameter fechaConsulta2: (form)
     - parameter procesador: (form)
     - parameter tarjetaGrafica: (form)
     - parameter numVentiladores: (form)
     - parameter fuentePoder: (form)
     - parameter fechaConsulta: (form)
     - parameter _id: (path) A unique integer value identifying this pc master.

     - returns: RequestBuilder<PCMaster>
     */

}
