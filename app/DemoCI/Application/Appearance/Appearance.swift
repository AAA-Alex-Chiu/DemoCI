//
//  Appearance.swift
//  DemoCI
//
//  Created by Alex on 11/1/16.
//  Copyright © 2017 AAA. All rights reserved.
//

import UIKit

struct Appearance {
    static var shared = Appearance()

    func style() {
        // Configure UIAppearance proxies
    }
}

extension Appearance: AppLifecycle {
    func onDidLaunch(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        style()
    }
}
