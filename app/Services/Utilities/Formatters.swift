//
//  Formatters.swift
//  DemoCI
//
//  Created by Alex on 11/1/16.
//  Copyright © 2017 AAA. All rights reserved.
//

import Marshal

public enum Formatters {

    public static var ISODateFormatter: ISO8601DateFormatter = {
        return ISO8601DateFormatter()
    }()

}
