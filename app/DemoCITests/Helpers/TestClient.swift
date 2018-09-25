//
//  TestClient.swift
//  DemoCI
//
//  Created by Alex on 7/24/17.
//
//

import Foundation
@testable import DemoCI

enum TestClient {

    static var baseURL: URL {
        return URL(string: "https://google.com")!
    }

}
