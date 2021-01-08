//
//  ContentView.swift
//  SwiftyCollection
//
//  Created by Robert Harrison on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    private var recipes = [
        Recipe(title: "Spaghetti & Meatballs", image: "spaghetti-meatballs", isFavorite: false),
        Recipe(title: "Baked Lemon Chicken", image: "baked-lemon-chicken", isFavorite: false),
        Recipe(title: "Chicken Parmesan", image: "chicken-parmesan", isFavorite: false),
        Recipe(title: "Shrimp Stir Fry", image: "shrimp-stir-fry", isFavorite: false),
        Recipe(title: "Blueberry Pancakes", image: "blueberry-pancakes", isFavorite: false),
        Recipe(title: "Grilled Salmon", image: "grilled-salmon", isFavorite: false),
        Recipe(title: "Breakfast Burrito", image: "breakfast-burrito", isFavorite: false)
    ]
    
    private var gridItemLayout = [
        GridItem(.flexible(), spacing: 15),
        GridItem(.flexible(), spacing: 15)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 15) {
                    ForEach(recipes, id: \.self) { recipe in
                        RecipeCell(recipe: recipe)
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
