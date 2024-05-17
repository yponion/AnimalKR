//
//  DetailFact.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct DetailFact: View {
    //property
    let animal: Animal
    
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self){ item in
                    Text(item)
                }
            }//:TabView
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GroupBox
    }
}

#Preview {
    DetailFact(animal: Animal.sampleAnimal)
}
