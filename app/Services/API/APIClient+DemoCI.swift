//
//  APIClient+DemoCI.swift
//  DemoCI
//
//  Created by Alex on 7/24/17.
//
//

import Foundation

extension APIClient {

    public static var shared = APIClient(baseURL: {
        let baseURL: URL
        switch APIEnvironment.active {
        case .develop:
            baseURL = URL(string: "https://DemoCI-dev.raizlabs.xyz")!
        case .sprint:
            baseURL = URL(string: "https://DemoCI-sprint.raizlabs.xyz")!
        case .production:
            fatalError("Specify the release server")
        }
        return baseURL
    }())

}
