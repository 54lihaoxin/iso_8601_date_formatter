//
//  File.swift
//  ISO8601DateFormatter
//
//  Created by Li, Haoxin on 10/27/18.
//  Copyright © 2018 Haoxin Li. All rights reserved.
//

import Foundation

enum TimeZoneTests {
    
    static func testChangeTimeZoneTime() {
        print("\(#function) starts")
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        
        let sampleDateString = "2018-10-28T03:25:06.123"
        let loops = 50000
        let timezoneA = TimeZone(abbreviation: "PST")
        let timezoneB = TimeZone(abbreviation: "CST")
        
        // 1st sample
        let timestamp1 = Date()
        for i in 0...loops {
            if i % 2 == 0 {
                // no op
            } else {
                // no op
            }
            formatter.date(from: sampleDateString)
        }
        print("1st sample: no change in time zone = \(-timestamp1.timeIntervalSinceNow) seconds")
        
        // 2nd sample
        let timestamp2 = Date()
        for i in 0...loops {
            if i % 2 == 0 {
                formatter.timeZone = timezoneA
            } else {
                formatter.timeZone = timezoneA
            }
            formatter.date(from: sampleDateString)
        }
        print("2nd sample: assign the same time zone = \(-timestamp2.timeIntervalSinceNow) seconds")
        
        // 3rd sample
        let timestamp3 = Date()
        for i in 0...loops {
            if i % 2 == 0 {
                formatter.timeZone = timezoneA
            } else {
                formatter.timeZone = timezoneB
            }
            formatter.date(from: sampleDateString)
        }
        print("3rd sample: assign different time zones = \(-timestamp3.timeIntervalSinceNow) seconds")
        
        print("\(#function) ends")
    }
}
