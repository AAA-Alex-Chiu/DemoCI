//
//  RandomEndpoint.swift
//  DemoCI
//
//  Created by Alex on 11/3/16.
//  Copyright © 2017 AAA. All rights reserved.
//

import Alamofire
import Marshal
@testable import DemoCI
import Services

struct TestEndpoint: APIEndpoint {
    typealias ResponseType = [TestEndpointResult]
    var path: String { return "test" }
    var method: HTTPMethod { return .get }
    var encoding: ParameterEncoding { return URLEncoding.default }
    var parameters: JSONObject? { return [:] }
    var headers: HTTPHeaders { return [:] }

}

struct TestEndpointResult: Unmarshaling {

    let value: String

    init(object: MarshaledObject) throws {
        value = try object.value(for: "value")
    }
}
