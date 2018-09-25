//
//  Analytics.swift
//  DemoCI
//
//  Created by Alex on 1/13/17.
//  Copyright © 2017 AAA All rights reserved.
//

import UIKit

public protocol AnalyticsService {

    func trackPageView(page: String)

}

extension AnalyticsService {

    public func track(_ viewController: UIViewController) {

        if let pageName = viewController.analyticsPageName {
            trackPageView(page: pageName)
        }

    }

}
