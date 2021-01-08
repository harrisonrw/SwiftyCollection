//
//  RecipeCell.swift
//  SwiftyCollection
//
//  Created by Robert Harrison on 1/6/21.
//

import SwiftUI

struct RecipeCell: View {
    
    @State var recipe: Recipe
    
    var body: some View {
        
        ZStack {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .clipped()
                
                Text(recipe.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                      
                Spacer()
            }
            
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Spacer()
                    
                    Button(action: {
                        self.recipe.isFavorite = !self.recipe.isFavorite
                        
                    }) {
                       
                        let color = self.recipe.isFavorite ? Color(red: 248.0/255.0, green: 55.0/255.0, blue: 32.0/255.0) : Color.white
                        
                            Image(systemName: "heart.fill")
                                .font(.system(size: 12, weight: .semibold))
                                .frame(width: 32, height: 32)
                                .foregroundColor(color)
                                
                    }
                    .background(Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0.65))
                    .cornerRadius(16)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 10))
                }
                
                Spacer()
            }
        }
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe(title: "Grilled Salmon", image: "grilled-salmon", isFavorite: false))
            .previewLayout(PreviewLayout.fixed(width: 150, height: 200))
            
    }
}
