//
//  DetailGallery.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct DetailGallery: View {
    //property
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment:.center, spacing: 15){
                ForEach(animal.gallery, id: \.self){ item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//:ForEach
            }//:HStack
        }//:ScrollView
    }//:body
}

#Preview {
    DetailGallery(animal: Animal.sampleAnimal)
}
