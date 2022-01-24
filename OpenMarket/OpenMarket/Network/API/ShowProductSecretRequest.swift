//
//  ShowProductSecretRequest.swift
//  OpenMarket
//
//  Created by Jae-hoon Sim on 2022/01/07.
//

import Foundation

struct ShowProductSecretRequest: OpenMarketJSONRequest {
    
    var method: HTTPMethod
    var header: [String : String]?
    var body: [String : String]
    var path: String
    
    init(productID: String, header: [String : String], body: [String : String]) {
        self.method = .POST
        self.path = "/api/products/\(productID)/secret"
        self.header = header
        self.body = body
    }
    
}
