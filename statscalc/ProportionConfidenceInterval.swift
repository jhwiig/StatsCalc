//
//  ProportionConfidenceInterval.swift
//  statscalc
//
//  Created by Jack Wiig on 12/2/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct ProportionConfidenceInterval {
    static func run() {
        print("Confidence Interval with a Proportion (Simple)")
        
        guard let p = getInput("p (Proportion)") else { return }
        guard let n = getInput("n (Sample Size)") else { return }
        guard let z = getInput("What is your z-value?") else { return }
        
        printLines()
        let q = 1 - p
        print("q = \(q)")
        print("n*p = \(n*p), n*q = \(n*q)")
        printLines()
        
        print("""
                _______
               / p * q
              / -------
        p ± z√     n
        """)
        
        print("""
                      __________
                     / \(p) * \(q)
                    / -------
        \(p) ± \(z)√     \(n)
        """)
        
        let lower = p - z * sqrt((p * q) / n)
        let upper = p + z * sqrt((p * q) / n)

        print("Your tolerance interval is:\n(\(lower), \(upper))")
    }
}
