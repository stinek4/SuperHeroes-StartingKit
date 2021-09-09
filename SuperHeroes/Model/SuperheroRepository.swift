//
//  SuperheroRepository.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 05.09.2021.
//

import Foundation

class SuperheroRepository {
    
    var heroes: [Superhero]
    
    init() {
        // TODO: oh no.. All the new heroes we add to the app - disappear after app-restart
        // What can we do with it???
        // HINT: How about UserDefaults & homeworks' read-assignment?
        
        heroes = SuperheroRepository.provideDefaultSuperheroes()
    }
    
    func addHero(_ superhero: Superhero) {
        heroes.append(superhero)
    }
    
    func previousSuperhero(_ currentSuperhero: Superhero?) -> Superhero? {
        // TODO: Oh.. Konstantin forgot to implement yet another method ☹️
    }
    
    func nextSuperhero(_ currentSuperhero: Superhero?) -> Superhero? {
        guard let currentSuperhero = currentSuperhero else { return nil }
        if let index = heroes.firstIndex(of: currentSuperhero), index < heroes.count - 1 {
            return heroes[index + 1]
        }
        
        return nil
    }
}

extension SuperheroRepository {
    // TODO: Oh no.. Some of the heroes are far too strong
    static func provideDefaultSuperheroes() -> [Superhero] {
        return [Superhero(name: "Captan America",
                          avatarUrl: "captain-america",
                          color: 0xFA5311,
                          attack: 51,
                          speed: 12,
                          defence: 370),
                Superhero(name: "Dr. Doom",
                          avatarUrl: "doctordoom",
                          color: 0x333333,
                          attack: 600,
                          speed: 10,
                          defence: 30),
                Superhero(name: "Gambit",
                          avatarUrl: "gambit",
                          color: 0x800080,
                          attack: 27,
                          speed: 13,
                          defence: 60),
                Superhero(name: "Invisible Woman",
                          avatarUrl: "invisiblewoman",
                          color: 0xFA5311,
                          attack: 23,
                          speed: 47,
                          defence: 30),
                Superhero(name: "Loki",
                          avatarUrl: "loki",
                          color: 0x097969,
                          attack: 51,
                          speed: 14,
                          defence: 35),
                Superhero(name: "War Machine",
                          avatarUrl: "warmachine",
                          color: 0xFF5733,
                          attack: 60,
                          speed: 5,
                          defence: 35)       
        ]
    }
    
}
