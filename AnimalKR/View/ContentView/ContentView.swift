//
//  ContentView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct ContentView: View {
    
    // property
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView{
            List{
                // 1. Cover Image - hero Image
                CoverImageView(vm: vm)
                    .frame(height: CGFloat.screenHeight * 0.4)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                // Animal List
                ForEach(vm.animals){ animal in
                    NavigationLink {
                        // destination
                        DetailView(animal: animal)
                    } label: {
                        // list label
                        AnimalListView(animal: animal)
                            .listRowInsets(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    }
                }//:ForEach
                // Credit
                CreditView()
                    .hCenter()
            }//:List
            .listStyle(.plain)
            .navigationTitle("멸종위기 동물들")
        }//:NavigationView
    }
}

#Preview {
    ContentView(vm: AnimalViewModel())
}
