// APIs.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import PromiseKit

class SwaggerClientAPI {
    static let basePath = "http://localhost:3333/"
    static var credential: NSURLCredential?
    static var requestBuilderFactory: RequestBuilderFactory = AlamofireRequestBuilderFactory()
}

class APIBase {
    func toParameters(encodable: JSONEncodable?) -> [String: AnyObject]? {
        let encoded: AnyObject? = encodable?.encode()

        if encoded! is [AnyObject] {
            var dictionary = [String:AnyObject]()
            for (index, item) in (encoded as! [AnyObject]).enumerate() {
                dictionary["\(index)"] = item
            }
            return dictionary
        } else {
            return encoded as? [String:AnyObject]
        }
    }
}

class RequestBuilder<T> {
    var credential: NSURLCredential?
    var headers: [String:String] = [:]
    let parameters: [String:AnyObject]?
    let isBody: Bool
    let method: String
    let URLString: String
    
    required init(method: String, URLString: String, parameters: [String:AnyObject]?, isBody: Bool) {
        self.method = method
        self.URLString = URLString
        self.parameters = parameters
        self.isBody = isBody
    }
    
    func execute() -> Promise<Response<T>>  { fatalError("Not implemented") }

    func addHeader(name name: String, value: String) -> Self {
        if !value.isEmpty {
            headers[name] = value
        }
        return self
    }
    
    func addCredential() -> Self {
        self.credential = SwaggerClientAPI.credential
        return self
    }
}

protocol RequestBuilderFactory {
    func getBuilder<T>() -> RequestBuilder<T>.Type
}


