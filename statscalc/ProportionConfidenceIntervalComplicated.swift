//
//  ProportionConfidenceIntervalComplicated.swift
//  statscalc
//
//  Created by Jack Wiig on 12/2/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct ProportionConfidenceIntervalComplicated {
    static func run() {
        print("Confidence Interval with a Proportion (Complicated)")

        guard let p = getInput("p (Proportion)") else { return }
        guard let n = getInput("n (Sample Size)") else { return }
        guard let z = getInput("What is your z-value?") else { return }
        
        printLines()
        let q = 1 - p
        print("q = \(q)")
        print("n*p = \(n*p), n*q = \(n*q)")
        printLines()
        
        print("""
              p + (z^2 / 2*n)
        p̃  = -----------------
              1 + (z^2 / n)
        """)
        
        print("""
              \(p) + (\(z)^2 / 2*\(n))
        p̃ =  -------------------------
              1 + (\(z)^2 / \(n))
        """)
        
        let p_tilde = (p + (pow(z, 2) / (2 * n))) / (1 + (pow(z, 2) / n))
        print("p̃ = \(p_tilde)")
        
        printLines()
        
        print("""
                ________________________
               / (p*q)/n + (z^2 / 4*n^2)
              / ------------------------
        p̃ ± z√      1 + (z^2 / n)
        """)
        
        print("""
                                    _______________________________
                                   / (\(p)*\(q))/\(n) + (\(z)^2 / 4*\(n)^2)
                                  / ---------------------
        \(p_tilde) ± \(z)√      1 + (\(z)^2 / \(n))
        """)
        
        let lower = p_tilde - z * sqrt((((p * q) / n) + (pow(z, 2) / (4 * pow(n, 2)))) / (1 + (pow(z, 2) / n)))
        let upper = p_tilde + z * sqrt((((p * q) / n) + (pow(z, 2) / (4 * pow(n, 2)))) / (1 + (pow(z, 2) / n)))

        print("Your confidence interval is:\n(\(lower), \(upper))")

    }
}
