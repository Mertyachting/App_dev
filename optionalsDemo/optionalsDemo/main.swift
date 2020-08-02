//
//  main.swift
//  optionalsDemo
//
//  Created by Mert Sevindik on 26.07.20.
//  Copyright © 2020 Mert Sevindik. All rights reserved.
//

import Foundation

//let myOptional: String?
//
//myOptional = "Mert"
//
//let text: String = myOptional ?? "I am the default Value"
//
//print(text)
//
//if myOptional != nil {
//    let text: String = myOptional!
//}else{
//    print("myOptional was nil")
//}

//if let safeOptional = myOptional{
//    print(safeOptional)
//}


struct MyOptional {
    var property = 123
    func method() {
        print("whatever")
    }
}

let myOptiona : MyOptional?

myOptiona = MyOptional()

myOptiona?.method()
