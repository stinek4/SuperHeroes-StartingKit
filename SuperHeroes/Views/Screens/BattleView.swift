//
//  BattleView.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 07.09.2021.
//

import SwiftUI
import Combine

struct BattleView: View {
    
    // HINT: this thing will fire an event every 2.5 seconds. It's working, no need to fix
    private let timer = Timer.publish(every: 2.5, on: .main, in: .common).autoconnect()
    
    private var viewModel: BattleViewModel
    
    init(you: Superhero, opponent: Superhero) {
        viewModel = BattleViewModel(you: you, opponent: opponent)
    }
    
    var body: some View {
        ZStack {
            Color("standardBackground").edgesIgnoringSafeArea(.all)
            
            VStack {
                SuperViewProfileCompactView(superhero: viewModel.opponent, health: $viewModel.opponentHeath)
                    .frame(width: 200.0)
                
                Spacer()
                
                switch viewModel.state {
                case .battle(let status):
                    Text(status)
                        .font(.system(size: 20.0, weight: .medium, design: .rounded))
                        .padding()
                case .result(let won):
                    Text(won ? "Great victory 🏆" : "You're dead ☠️")
                        .font(.system(size: 20.0, weight: .medium, design: .rounded))
                        .padding()
                }
                
                Spacer()
                
                SuperViewProfileCompactView(superhero: viewModel.you, health: viewModel.yourHeath)
                    .frame(width: 200.0)
            }
            .padding()
        }
        .navigationTitle("Battle")
        .onReceive(timer) { _ in
            
            // TODO: every 2.5 seconds, opponents do turn. Handle the turn here!
            // HINT: Send an intent to the ViewModel to actually do the turn:
            //  calculate the damage, health points left, state of the match & return result to UI
            
        }
        .animation(.default)
    }
    
}
