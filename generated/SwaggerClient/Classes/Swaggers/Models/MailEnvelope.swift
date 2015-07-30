//
// MailEnvelope.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class MailEnvelope: JSONEncodable {

    var mails: [Mail]?
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["mails"] = self.mails?.encode()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
