//
//  TwoSampleSame.swift
//  statscalc
//
//  Created by Jack Wiig on 12/2/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct TwoSampleSameVariance {
    
    static func run() {
        print("Two Sample t-Confidence Interval (Equal Variances)")
        
        guard let n1 = getInput("n1 (Sample Size)") else { return }
        guard let xbar1 = getInput("x̄1 (Sample Mean)") else { return }
        guard let s1 = getInput("s1 (Sample StDev)") else { return }
        
        guard let n2 = getInput("n2 (Sample Size)") else { return }
        guard let xbar2 = getInput("x̄2 (Sample Mean)") else { return }
        guard let s2 = getInput("s2 (Sample StDev)") else { return }
        
        
        let pooled_estimator = sqrt(((n1 - 1) * pow(s1, 2) + (n2 - 1) * pow(s2, 2)) / (n1 + n2 - 2))
        
        printLines()
        print("""
                                   _____________________________
                                  / (n1 - 1)s1^2 + (n2 - 1)s2^2
                                 /  ----------------------------
        sp (pooled estimator) = √           n1 + n2 - 2
        

        """)
        printLines()
        print("""
                                   _____________________________
                                  / (\(n1) - 1)\(s1)^2 + (\(n2) - 1)\(s2)^2
                                 /  ----------------------------
        sp (pooled estimator) = √           \(n1) + \(n2) - 2
        

        """)
        
        printLines()
        print("Pooled estimator = \(pooled_estimator).")
        
        let df = n1 + n2 - 2
        printLines()
        print("Degrees of freedom = n1 + n2 - 2 = \(n1) + \(n2) - 2 = \(df)")
        
        guard let t = getInput("What is your t-value?") else { return }
        
        let variance_difference = (pow(pooled_estimator, 2) / n1) + (pow(pooled_estimator, 2) / n2)
        printLines()
        print("""
                        sp^2     sp^2      \(pooled_estimator)^2   \(pooled_estimator)^2
        s(x̄1-x̄2)^2 =   ------ + ------ =   ------------------ + ---------------------
                         n1       n2               \(n1)                   \(n2)
        """)
        print("Variance Difference = \(variance_difference)")
        
        printLines()
        print("x̄1 - x̄2 ± t*s(x̄1-x̄2)")
        print("\(xbar1) - \(xbar2) ± \(t)√\(variance_difference)")
        
        let lower = xbar1 - xbar2 - t*sqrt(variance_difference)
        let upper = xbar1 - xbar2 + t*sqrt(variance_difference)
        
        print("Your confidence interval is:\n(\(lower), \(upper))")
        
    }
}
