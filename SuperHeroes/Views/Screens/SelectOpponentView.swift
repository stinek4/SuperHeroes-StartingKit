//
//  SelectOpponentView.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct SelectOpponentView: View {
    @State private var isShowingAddNewHero = false
    
    @ObservedObject var viewModel: SelectOpponentViewModel
    var repository: SuperheroRepository
    
    init() {
        let repo = SuperheroRepository()
        viewModel = SelectOpponentViewModel(repo: repo)
        repository = repo
    }
    
    var body: some View {
        ZStack {
            Color("standardBackground").edgesIgnoringSafeArea(.all)
            
            VStack {
                CarouselSuperHeroView(selectedHero: $viewModel.opponentSuperhero, repository: repository)
                
                Spacer()
                
                if let you = viewModel.mySuperHero, let opponent = viewModel.opponentSuperhero {
                    NavigationLink(destination: BattleView(you: you, opponent: opponent)) {
                        Text("⚔️")
                            .font(.system(size: 76.0))
                            .padding()
                            .background(Circle().foregroundColor(Color("secondaryBackground")))
                            .shadow(radius: 10.0)
                    }
                }
                
                Spacer()
                
                Text("Your hero:")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                CarouselSuperHeroView(selectedHero: $viewModel.mySuperHero, repository: repository)
            }
            .padding(.vertical)
        }
        .foregroundColor(.white)
        .onAppear() {
            viewModel.mySuperHero = repository.heroes.first
            viewModel.opponentSuperhero = repository.heroes.last
        }
        .navigationBarTitle("Choose your opponent", displayMode: .inline)
        .navigationBarItems(trailing:
                                Button(action: {
                                    isShowingAddNewHero.toggle()
                                }) {
                                    Image(systemName: "plus.circle")
                                }
            .sheet(isPresented: $isShowingAddNewHero,
                   onDismiss: didDismiss) {
               // AddSuperheroView(repository: repository)
                 //   .preferredColorScheme(.dark)
            }
        )
        
    }
    
    func didDismiss() {
        viewModel.objectWillChange.send()
    }
}

struct SelectOpponentView_Previews: PreviewProvider {
    static var previews: some View {
        SelectOpponentView()
    }
}
