//
//  main.swift
//  Protocols
//
//  Created by Mert Sevindik on 02.08.20.
//  Copyright © 2020 Mert Sevindik. All rights reserved.
//

class Bird{
    var isFemale = true
    
    func layEgg() {
        if isFemale{
            print("Get Pregnant")
        }
    }
    func fly() {
        print("Fly Fly FLy Away")
    }
}

class Eagle: Bird {
    let myEgale = Eagle()
}


