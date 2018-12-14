//
//  TwoSamplet-CI.swift
//  statscalc
//
//  Created by Jack Wiig on 12/1/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct TwoSampletCI {

    static func run() {
        print("Two-Sample t-Confidence Interval (Unequal Variances)")
        
        guard let n1 = getInput("n1 (Sample Size)") else { return }
        guard let xbar1 = getInput("x̄1 (Sample Mean)") else { return }
        guard let s1 = getInput("s1 (Sample StDev)") else { return }
        
        guard let n2 = getInput("n2 (Sample Size)") else { return }
        guard let xbar2 = getInput("x̄2 (Sample Mean)") else { return }
        guard let s2 = getInput("s2 (Sample StDev)") else { return }

        
        let sampleOneSDSquaredOverCount = pow(s1, 2) / n1
        let sampleTwoSDSquaredOverCount = pow(s2, 2) / n2
        
        let topOfDegreesOfFreedomForumla = pow(sampleOneSDSquaredOverCount + sampleTwoSDSquaredOverCount, 2)
        let bottomOfDegreesOfFreedomForumla = pow(sampleOneSDSquaredOverCount, 2) / (n1 - 1)
            + pow(sampleTwoSDSquaredOverCount, 2) / (n2 - 1)
        
        let df = topOfDegreesOfFreedomForumla / bottomOfDegreesOfFreedomForumla

        printLines()
        
        print("""
                       ( s1^2   s2^2 )  ^ 2
                       ( ---- + ---- )
                       ( n1     n2   )
        df =    -----------------------------
                ( s1^2 ) ^ 2    ( s2^2 ) ^ 2
                ( ---- )        ( ---- )
                (  n1  )        (  n2  )
                ------------- + ------------
                    n1 - 1          n2 - 1
        """)
        
        printLines()
        
        print("""
                       ( \(s1)^2   \(s2)^2 ) ^ 2
                       ( ------- + ------- )
                       ( \(n1)     \(n2)   )
        df =    -----------------------------
                ( \(s1)^2 ) ^ 2    ( \(s2)^2 ) ^ 2
                ( ------- )        ( ------- )
                (  \(n1)  )        (  \(n2)  )
                ------------- +    ---------------
                    \(n1) - 1          \(n2) - 1
        """)
        
        printLines()
        
        guard let t = getInput("Your DF is: \(df). What is your t-value?") else { return }
        
        print("""
                      ______________
                     / s1^2    s2^2
                    /  ----- + -----
        x̄1 - x̄2 ± t√   n1       n2
        """)
        
        printLines()
        
        print("""
                                 ____________________
                                / \(s1)^2    \(s2)^2
                               /  -------  +  -------
        \(xbar1) - \(xbar2) ± \(t)√   \(n1)      \(n2)
        """)
        
        printLines()
        
        let lower = xbar1 - xbar2 - t * sqrt(sampleOneSDSquaredOverCount + sampleTwoSDSquaredOverCount)
        let upper = xbar1 - xbar2 + t * sqrt(sampleOneSDSquaredOverCount + sampleTwoSDSquaredOverCount)
        
        print("Your confidence interval is:\n(\(lower), \(upper))")        
    }
}
