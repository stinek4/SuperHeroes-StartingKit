//
//  CarouselSuperHeroView.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 05.09.2021.
//

import SwiftUI

struct CarouselSuperHeroView: View {
    
    @Binding var selectedHero: Superhero?
    let repository: SuperheroRepository
    
    var body: some View {
        
        HStack {
            Button(action: {
                // TODO: oh no.. Left button is not working 😰
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 28.0))
            })
            .opacity(repository.previousSuperhero(selectedHero) == nil ? 0.0 : 1.0)
            
            Spacer()
            
            if let selectedHero = selectedHero {
                SuperViewProfileView(superhero: selectedHero)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            Button(action: {
                withAnimation {
                    selectedHero = repository.nextSuperhero(selectedHero)
                }
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 28.0))
            })
            .opacity(repository.nextSuperhero(selectedHero) == nil ? 0.0 : 1.0)
        }
        .padding(.horizontal, 16.0)
    }
}
