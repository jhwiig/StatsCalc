//
//  ProportionMoreSamples.swift
//  statscalc
//
//  Created by Jack Wiig on 12/6/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation


struct MoreSamplesProportion {
    static func run() {
        print("More Samples in a Proportion")
        
        guard let p = getInput("p (Proportion") else { return }
        guard let W = getInput("W (Width of the Interval)") else { return }
        guard let z = getInput("z-value") else { return }
        
        printLines()
        let q = 1 - p
        print("q: \(q)")
        
        printLines()
        print("""
             4*(z^2)*p*q
        n = -------------
               W^2
        """)
        printLines()
        print("""
             4*(\(z)^2)*\(p)*\(q)
        n = ------------------
               \(W)^2
        """)
        printLines()
        
        let n = (4 * pow(z, 2) * p * q) / pow(W, 2)
        
        print("You need \(n) total samples")
    }
}
