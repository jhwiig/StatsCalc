//
//  Utilities.swift
//  statscalc
//
//  Created by Jack Wiig on 12/1/18.
//  Copyright © 2018 Jack Wiig. All rights reserved.
//

import Foundation

func getInput(_ prompt: String?) -> Double? {
    if prompt != nil {
        print(prompt!)

    }
//
    guard let text = readLine(strippingNewline: true), let value = Double(text) else {
        return nil
    }
    
    return value
}


func printLines() {
    print("―――――――――――――――――――――――――")
}
