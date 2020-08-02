//
//  Enemy.swift
//  ClassesDemo
//
//  Created by Mert Sevindik on 25.07.20.
//  Copyright © 2020 Mert Sevindik. All rights reserved.
//

import Foundation

class Enemy{
    var health = 100
    var attackStrength = 10
    
    func move(){
        print("Move forwards.")
    }
    
    func attack() {
        print("enemy hitted you with \(attackStrength).")
    }
}
