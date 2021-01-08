//
//  RecipeCell.swift
//  SwiftyCollection
//
//  Created by Robert Harrison on 1/6/21.
//

import SwiftUI

struct RecipeCell: View {
    
    var recipe: Recipe
    
    var body: some View {
        
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
        
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe(title: "Grilled Salmon", image: "grilled-salmon", isFavorite: false))
            .previewLayout(PreviewLayout.fixed(width: 150, height: 200))
            
    }
}
