//
//  InstabugConfiguration.swift
//  DemoCI
//
//  Created by Alex on 11/1/16.
//  Copyright © 2017 AAA. All rights reserved.
//

import Instabug
import UIKit
import Services

struct InstabugConfiguration: AppLifecycle {

    private static let instabugTokenKey = "InstabugToken"

    var isEnabled: Bool {
        return BuildType.active == .internal
    }

    func onDidLaunch(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        if let token = Bundle.main.object(forInfoDictionaryKey: InstabugConfiguration.instabugTokenKey) as? String, !token.isEmpty {
            Instabug.start(withToken: token, invocationEvent: .shake)
        }
        Instabug.setEmailFieldRequired(false)
        Instabug.setCrashReportingEnabled(false)
    }

}
