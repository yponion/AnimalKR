//
//  ExternalWebLink.swift
//  AnimalKR
//
//  Created by yp on 2024/05/17.
//

import SwiftUI

struct ExternalWebLink: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "golbe")
                Text("멸종 위기 야생생물 포털")
                
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: URL(string: animal.link)!, label: {
                        Text(animal.name)
                    })
                    .foregroundColor(.accentColor)
                }//:Group
            }//:HStack
        }//:GroupBox
    }
}

#Preview {
    ExternalWebLink(animal: Animal.sampleAnimal)
}
