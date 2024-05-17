//
//  DetailView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct DetailView: View {
    //property
    let animal: Animal
    
    var body: some View {
        ScrollView{
            VStack(spacing:20){
                // 1. HeadImage
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // 2. Title
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 10)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:25)
                    )
                
                // 3. HeadLine
                Text(animal.headline)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .padding()
                
                // 4. Gallery
                Group{
                    DetailHead(headingImage: "photo.on.rectangle.angled", headingText: "\(animal.name) 사진들")
                    
                    DetailGallery(animal: animal)
                }//:Group
                
                // 5. Description
                Group{
                    DetailHead(headingImage: "info.circle", headingText: "자세한 정보")
                    
                    Text(animal.description)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                }//:Group
                
                // 6. Fact
                Group{
                    DetailHead(headingImage: "location.magnifyingglass", headingText: "팩트체크")
                    
                    DetailFact(animal: animal)
                }//:Group
                
                // 7. Fact
                Group{
                    DetailHead(headingImage: "books.vertical", headingText: "참고자료")
                    
                    ExternalWebLink(animal: animal)
                }//:Group
                
                // 8. Copyright
                Text(animal.copyright)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                
                
                
            }//:VStack
            .navigationBarTitle("\(animal.name) 자세히 알아보기", displayMode: .inline)
        }//:ScrollView
    }
}

#Preview {
    NavigationView{
        DetailView(animal: Animal.sampleAnimal)
    }
}
