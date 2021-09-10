//
//  AddSuperheroView.swift
//  SuperHeroes
//
//  Created by Konstantin Loginov on 06.09.2021.
//

import SwiftUI

struct AddSuperheroView: View {

    var repository: SuperheroRepository
    private var viewModel = AddSuperheroViewModel()
    
    // HINT: use presentationMode to close down the sheet
    // (https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself)
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            VStack {
                Text("Create you own character")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding()
                Divider()
//                Group {
//                    TextField("What's your superhero's name?", text: /*TODO: Hm.. Konstantin left
//                              this code absolutely broken.. How do I bind text? To where should I bind it?*/)
//                        .padding(.vertical)
//                    Divider()
//                }
//                skillSliderBlock
//                ColorPicker(selection: viewModel.heroColor) {
//                    Text("Primary color")
//                        .font(.title3)
//                        .fontWeight(.bold)
//                }
//                .padding(.top)
                Spacer()
//                Button(action: {
//                    //TODO: User clicked on "Add a hero": how can we handle it? How can we test that the input is correct? How do we close the sheet after all? (see Hint above)
//                }, label: {
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 22)
//                            .foregroundColor(viewModel.isValidUser ? .white : .gray)
//                        Text("Add a hero")
//                            .foregroundColor(Color("standardBackground"))
//                            .font(.headline)
//                            .padding()
//                    }
//                    .frame(height: 44.0)
//                })
//                .disabled(!viewModel.isValidUser) // HINT: it's a good idea to have some property to control if the input is valid or not
                
            }
            .padding()
    }
    
//    var skillSliderBlock: some View {
//        Group {
//            HStack {
//                Text("Choose base parameters (Total: \(Superhero.TOTAL_OF_SKILLS_VALUE))")
//                    .font(.headline)
//                Spacer()
//            }
//            .padding(.top)
//
//            Divider()
//                .padding(.vertical)
//
//            SkillSliderView(label: "Attack",
//                            maxValue: Double(Superhero.MAX_SKILL_VALUE),
//                            minValue: 1,
//                            value: $viewModel.$attackValue)
//
//            Divider()
//                .padding(.vertical)
//
//            SkillSliderView(label: "Speed",
//                            maxValue: Double(Superhero.MAX_SKILL_VALUE),
//                            minValue: 1,
//                            value: viewModel.$speedValue)
//
//            Divider()
//                .padding(.vertical)
//
//            SkillSliderView(label: "Defence",
//                            maxValue: Double(Superhero.MAX_SKILL_VALUE),
//                            minValue: 1,
//                            value: $viewModel.defenceValue)
//
//            Divider()
//                .padding(.vertical)
//        }
//    }
}
