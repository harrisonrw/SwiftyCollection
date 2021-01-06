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
            Spacer()
            HStack(alignment: .top) {
                Spacer()
                Text(recipe.title)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            Spacer()
        }
        .background(Color(.blue))
        
    }
}

struct RecipeCell_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCell(recipe: Recipe(title: "Grilled Salmon", image: "", isFavorite: false))
    }
}
