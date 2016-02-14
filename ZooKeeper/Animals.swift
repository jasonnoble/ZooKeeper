//
//  Animal.swift
//  ZooKeeper
//
//  Created by Jason Noble on 2/4/16.
//  Copyright © 2016 Jason Noble. All rights reserved.
//

import Foundation

protocol Quackable {
    func quack()
}

protocol Spawnable {
    func spawn()
}

/**
 This is the base Animal class.

 - Parameters:
   - name: The name of the Animal
   - color: The color of the Animal
   - isMale: Boolean value for the sex of the Animal
*/
public class Animal {
    var name:String
    var color:String
    var legCount:Int?
    var isMale:Bool
    
    public init(name:String, color:String, isMale:Bool) {
        self.name = name
        self.color = color
        self.isMale = isMale
    }
    
    deinit {
        print("✅")
    }
    
    public func report() -> String {
        let sex = isMale ? "male" : "female"
        return "I'm a \(sex) \(color) \(name) Animal"
    }
}

public class Duck : Animal, Quackable {
    
    public init(color:String, isMale:Bool) {
        super.init(name: "Duck", color:color, isMale:isMale)
        legCount = 2
    }
    
    public func quack() {
        print("Quack")
    }
    
    deinit {
        print("🐤", terminator: " 🔫")
    }
}

public class Fish : Animal, Spawnable {
    
    public init(color:String, isMale:Bool) {
        super.init(name: "Fish", color:color, isMale:isMale)
        legCount = 0
    }
    
    public func spawn() {
        print("long trip ahead...")
    }
    
    deinit {
        print("🐟", terminator: " 🔫")
    }
}

