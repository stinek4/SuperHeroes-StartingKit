//
//  Superhero.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import Foundation


// TODO: From the looks of things, this Struct is missing some crucial protocols to confirm 😰
struct Superhero {
    static let MAX_SKILL_VALUE: Int = 60
    static let TOTAL_OF_SKILLS_VALUE: Int = 100
    static let TOTAL_HEATH: Int = 150
    
    let id: Int
    let name: String
    let avatarUrl: String?
    let color: UInt32
    
    let attack: Int
    let speed: Int
    let defence: Int
    
    init(name: String, avatarUrl: String?, color: UInt32, attack: Int, speed: Int, defence: Int) {
        
        // TODO: Oh no, Konstantin haven't checked that skills are in 1...60 range, hasn't checked
        // the total sum of skills. He hasn't checked anything!! 😰
        // HINT: init?(...) - makes the constructor optional. So you can avoid corrupted input data
        
        self.id = name.hash
        self.name = name
        self.avatarUrl = avatarUrl
        self.color = color
        self.attack = attack
        self.speed = speed
        self.defence = defence
    }
}
