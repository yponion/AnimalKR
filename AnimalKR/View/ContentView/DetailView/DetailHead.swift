//
//  DetailHead.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct DetailHead: View {
    //property
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    DetailHead(headingImage: "gear", headingText: "Head Title")
}
