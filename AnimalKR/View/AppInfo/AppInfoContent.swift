//
//  AppInfoContent.swift
//  AnimalKR
//
//  Created by yp on 2024/05/17.
//

import SwiftUI

struct AppInfoContent: View {
    //property
    var name: String
    // optional property
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack{
            Divider()
                .padding(.vertical, 5)
            
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                
                // condition
                if (content != nil) {
                    Text(content ?? "noValue")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .hTrailing()
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: "https://\(linkDestination!)")!, label: {
                        
                        Spacer()
                        
                        Text(linkLabel!)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    })//:Link
                    
                    Image(systemName: "arrow.up.right.square").foregroundColor(.accentColor)
                } else {
                    EmptyView()
                }
            }//:HStack
        }//:VStack
    }
}

#Preview {
    Group{
        AppInfoContent(name: "Sample", content: "Jacob Ko")
        AppInfoContent(name: "Sample", linkLabel: "Jacob's Blog", linkDestination: "jcobko.info")
    }
}
