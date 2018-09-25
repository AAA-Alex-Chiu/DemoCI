//
//  LoggingConfiguration.swift
//  DemoCI
//
//  Created by Alex on 11/1/16.
//  Copyright © 2017 AAA. All rights reserved.
//

import UIKit
import Swiftilities
import Services

struct LoggingConfiguration: AppLifecycle {

    func onDidLaunch(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        Log.logLevel = .info
        NetworkLog.logLevel = .info
    }

}
