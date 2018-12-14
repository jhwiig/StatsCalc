//
//  Confidence Interval.swift
//  statscalc
//
//  Created by Jack Wiig on 12/2/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct ConfidenceInterval {
    static func run() {
        print("Confidence Interval")
        
        guard let n = getInput("n (Sample Size)") else { return }
        guard let xbar = getInput("x̄ (Sample Mean)") else { return }
        guard let s = getInput("s (Sample StDev)") else { return }
        guard let t = getInput("What is your t-value?") else { return }
        
        printLines()
        print("x̄ ± t*(s/√n)")
        print("\(xbar) ± \(t)*(\(s)/√\(n))")
        
        let lower = xbar - t*(s / sqrt(n))
        let upper = xbar + t*(s / sqrt(n))
        
        print("Your confidence interval is:\n(\(lower), \(upper))")
    }
}
