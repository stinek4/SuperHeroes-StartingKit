//
//  BattleViewModel.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI


class SelectOpponentViewModel: ObservableObject {
    
    var hero = SuperheroRepository.provideDefaultSuperheroes()
    
    @Published var opponentSuperhero: Superhero?
    @Published var mySuperHero: Superhero?
//    @Published var newHero: Superhero


    init(repo: SuperheroRepository){
        opponentSuperhero = repo.heroes[3]
        mySuperHero = repo.heroes[0]
    }
    
    // TODO: Oh no! All the content of the select opponent viewModel is gone 😰
    // HINT: it's not actually too much of the content was stored here either.


//    func intentAddHero(){
//        superHeroRepo.addHero(Superhero)
//    }
    
    
//    //MARK: opponentSuperhero
//    func findOpponentSuperhero() -> Superhero?{
//        let opponentSuperHero = superHeroRepo.heroes.randomElement()
//        return opponentSuperHero
//
//    //MARK: mySuperHero
//    func findMySuperHero() -> Superhero?{
//        let mySyperHero = superHeroRepo.heroes.randomElement()
//        return mySyperHero
//        }
//    }
    
    //MARK: objectWillChange



}
