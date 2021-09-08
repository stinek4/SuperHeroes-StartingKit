//
//  SuperViewProfileCompactView.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 02.09.2021.
//

import SwiftUI

struct SuperViewProfileCompactView: View {
    
    let superhero: Superhero
    
    // TODO: Binding? Should it be binding here? Does this view change the value of "health"?
    // If yes - keep it. If not - probably it shouldn't be Binding after all?
    @Binding var health: Int
    
    var body: some View {
        VStack {
            SuperViewAvatarView(superhero: superhero)
                .aspectRatio(1.0, contentMode: .fit)
            BarView(value: health, total: Superhero.TOTAL_HEATH, color: healthColor)
                .frame(height: 16.0)
                .padding()
        }
    }
    
    var healthColor: Color {
        switch health {
        case ..<(Superhero.TOTAL_HEATH / 4):
            return .red
        case Superhero.TOTAL_HEATH / 4..<Superhero.TOTAL_HEATH * 3 / 4:
            return .yellow
        default:
            return .green
        }
    }
}
