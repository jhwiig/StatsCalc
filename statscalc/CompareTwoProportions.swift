//
//  CompareTwoProportions.swift
//  statscalc
//
//  Created by Jack Wiig on 12/1/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct CompareTwoProportions {
    static func run() {
        print("Comparison of Two Proportions")
        
        guard let p1 = getInput("p1 (Proportion 1)") else { return }
        guard let n1 = getInput("n1 (Sample Size 1)") else { return }
        
        guard let p2 = getInput("p2 (Proportion 2)") else { return }
        guard let n2 = getInput("n2 (Sample Size 2)") else { return }
        
        printLines()
        let q1 = 1 - p1
        let q2 = 1 - p2
        print("q1 = \(q1)\nq2 = \(q2)")
        
        print("n1*p1 = \(n1*p1), n1*q1 = \(n1*q2)\nn2*p2 = \(n2*p2), n2*q2 = \(n2*q2)")
        printLines()
        
        guard let z = getInput("What is your z-value?") else { return }
        
        print("""
                       ___________________
                      / p1*q1     p2*q2
                     / ------  + -------
        p1 - p2 ± z √    n1        n2
        """)
        
        print("""
                             ____________________________
                            / \(p1)*\(q1)     \(p2)*\(q2)
                           / --------  +   ----------
        \(p1) - \(p2) ± \(z) √    \(n1)        \(n2)
        """)
        
        let lower = p1 - p2 - z*sqrt(((p1*q1)/n1) + ((p2*q2)/n2))
        let upper = p1 - p2 + z*sqrt(((p1*q1)/n1) + ((p2*q2)/n2))
        
        print("Your confidence interval is:\n(\(lower), \(upper))")
    }
}
