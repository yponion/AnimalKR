//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

class AnimalViewModel: ObservableObject {
    // property
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    @Published var videos: [Video] = Bundle.main.decode("videos.json")
    
    // GalleryView
    @Published var selectedAnimal: String = "tiger"
    
    // GridLayout
    @Published var gridLayout: [GridItem] = [GridItem(.flexible())]
    @Published var gridColumn: Double = 4.0
    
    // init
    init(){
        gridSwitch()
    }
    
    // func
    func gridSwitch(){
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumn))
    }
}
