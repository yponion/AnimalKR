//
//  AppInfoLabel.swift
//  AnimalKR
//
//  Created by yp on 2024/05/17.
//

import SwiftUI

struct AppInfoLabel: View {
    //property
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            
            Image(systemName: labelImage)
                .hTrailing()
        }//:HStack
    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
