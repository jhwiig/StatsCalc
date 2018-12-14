//
//  ConfidenceMoreSamples.swift
//  statscalc
//
//  Created by Jack Wiig on 12/6/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct ConfidenceMoreSamples {
    static func run() {
        print("More Samples in a Confidence Interval")
        
        guard let s = getInput("s (Sample Stdev)") else { return }
        guard let W = getInput("W (Width of the Interval)") else { return }
        guard let t = getInput("t-value") else { return }
        
        printLines()
        print("""
             4*(z^2)*(s^2)
        n = --------------
                 W^2
        """)
        printLines()
        print("""
                4*(\(t)^2)*(\(s)^2)
            n = ------------------
                    \(W)^2
            """)
        printLines()
        
        let n = (4 * pow(t, 2) * pow(s, 2)) / pow(W, 2)
        
        print("You need \(n) total samples")
    }
}
