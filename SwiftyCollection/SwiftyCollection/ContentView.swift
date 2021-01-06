//
//  ContentView.swift
//  SwiftyCollection
//
//  Created by Robert Harrison on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    private var recipes = [
        Recipe(title: "Spaghetti & Meatballs", image: "", isFavorite: false),
        Recipe(title: "Baked Lemon Chicken", image: "", isFavorite: false),
        Recipe(title: "Chicken Parmesan", image: "", isFavorite: false),
        Recipe(title: "Shrimp Stir Fry", image: "", isFavorite: false),
        Recipe(title: "Blueberry Pancakes", image: "", isFavorite: false),
        Recipe(title: "Grilled Salmon", image: "", isFavorite: false),
        Recipe(title: "Breakfast Burrito", image: "", isFavorite: false)
    ]
    
    private var gridItemLayout = [ GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 20) {
                    ForEach(recipes, id: \.self) { recipe in
                        
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
                .padding(15)
            }
            .navigationTitle("Recipes")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
