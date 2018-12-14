//
//  ToleranceInterval.swift
//  statscalc
//
//  Created by Jack Wiig on 12/2/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct ToleranceInterval {
    static func run() {
        print("Tolerance Interval")
        
        guard let xbar = getInput("x̄ (Sample Mean)") else { return }
        guard let s = getInput("s (Sample StDev)") else { return }
        guard let k = getInput("What is your k-value (k,2,alpha,gamma,n)?") else { return }
        
        printLines()
        print("x̄ ± k*s")
        print("\(xbar) ± \(k)*\(s)")
        
        let lower = xbar - k*s
        let upper = xbar + k*s
        
        print("Your tolerance interval is:\n(\(lower), \(upper))")
    }
}
