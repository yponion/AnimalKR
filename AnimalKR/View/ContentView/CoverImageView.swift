//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct CoverImageView: View {
    
    //property
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        TabView{
            ForEach(vm.coverImages) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            }//:ForEach
        }//:TabView
        .tabViewStyle(.page)
    }
}

#Preview {
    CoverImageView(vm: AnimalViewModel())
        .previewLayout(.fixed(width: 400, height: 300))
}
