//
//  Tests.swift
//  Tests
//
//  Created by A.M. Student on 1/11/21.
//

import XCTest
@testable import Bullseye

class Tests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func textScorePositive() {
        var guess = game.target + 5
        var score = game.point(ssliderValue: guess)
        XCTAssertEqual(score, 95)
    }

    func testScoreNegative() {
        var guess = game.target - 5
        var score = game.points(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }


