//
//  AnimalListView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct AnimalListView: View {
    
    // property
    let animal: Animal
    
    var body: some View {
        HStack (spacing:20) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(spacing:10){
                Text(animal.name)
                    .hLeading()
                    .font(.title)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 10)
            }
        }//:HStack
    }
}

#Preview {
    AnimalListView(animal: Animal.sampleAnimal)
}
