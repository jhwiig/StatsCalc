//
//  main.swift
//  statscalc
//
//  Created by Jack Wiig on 12/1/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

print("Stats Calculations")

while true {
    printLines()
    print("0 - Confidence Interval")
    print("1 - Prediction Interval")
    print("2 - Tolerance Interval")
    print("3 - Confidence Interval with a Proportion (Simple)")
    print("4 - Confidence Interval with a Proportion (Complicated)")
    print("5 - Two Sample t-Confidence Interval (Equal Variances)")
    print("6 - Two Sample t-Confidence Interval (Unequal Variances)")
    print("7 - Comparison of Two Proportions")
    print("8 - Coefficent Confidence Interval")
    print("9 - More Samples in a Confidence Interval")
    print("10 - More Samples in a Proportion")
    printLines()
    
    let choice = getInput(nil)
    
    printLines()
    
    switch choice {
    case 0:
        ConfidenceInterval.run()
    case 1:
        PredictionInterval.run()
    case 2:
        ToleranceInterval.run()
    case 3:
        ProportionConfidenceInterval.run()
    case 4:
        ProportionConfidenceIntervalComplicated.run()
    case 5:
        TwoSampleSameVariance.run()
    case 6:
        TwoSampletCI.run()
    case 7:
        CompareTwoProportions.run()
    case 8:
        CoefficientConfidenceInterval.run()
    case 9:
        ConfidenceMoreSamples.run()
    case 10:
        MoreSamplesProportion.run()
    default:
        print("Invalid Option")
    }
    
    printLines()
}
