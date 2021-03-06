//
// Tag.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


class Tag: JSONEncodable {

    var _default: Bool?
    var mails: [MailIdent]?
    var ident: String?
    var name: String?
    

    // MARK: JSONEncodable
    func encode() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["_default"] = self._default
        nillableDictionary["mails"] = self.mails?.encode()
        nillableDictionary["ident"] = self.ident
        nillableDictionary["name"] = self.name
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
