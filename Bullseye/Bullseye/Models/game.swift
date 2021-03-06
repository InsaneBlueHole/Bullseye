//
//  game.swift
//  Bullseye
//
//  Created by A.M. Student on 1/8/21.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var count: Int = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(target - sliderValue)
    }
}
