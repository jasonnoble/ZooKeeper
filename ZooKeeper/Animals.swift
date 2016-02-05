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

public class Animal {
  var name:String
  var color:String

  public init(name:String, color:String) {
    self.name = name
    self.color = color
  }

  deinit {
    print("✅")
  }

  public func report() {
    print("I'm a \(color) \(name) Aminal")
  }
}

public class Duck : Animal, Quackable {

  public init(color:String) {
    super.init(name: "Duck", color:color)
  }

  public func quack() {
    print("Quack")
  }

  deinit {
    print("🐤", terminator: " 🔫")
  }
}

public class Fish : Animal, Spawnable {

  public init(color:String) {
    super.init(name: "Fish", color:color)
  }

  public func spawn() {
    print("long trip ahead...")
  }

  deinit {
    print("🐟", terminator: " 🔫")
  }
}

