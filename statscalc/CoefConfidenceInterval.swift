//
//  CoefConfidenceInterval.swift
//  statscalc
//
//  Created by Jack Wiig on 12/6/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

struct CoefficientConfidenceInterval {
    
    static func run() {
        print("Coefficient Confidence Interval")
        
        guard let coef = getInput("Coefficient") else { return }
        guard let SEcoef = getInput("SEcoef") else { return }
        guard let t = getInput("t-Value") else { return }
        
        printLines()
        print("coef ± t * SEcoef")
        printLines()
        print("\(coef) ± \(t) * \(SEcoef)")
        printLines()
        
        let lower = coef - t * SEcoef;
        let upper = coef + t * SEcoef;
        
        print("Your confidence interval is:\n(\(lower), \(upper))")
    }
}
