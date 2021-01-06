//
//  ContentView.swift
//  SwiftyCollection
//
//  Created by Robert Harrison on 1/6/21.
//

import SwiftUI

struct ContentView: View {
    
    private var recipes = [ "Spaghetti & Meatballs", "Baked Lemon Chicken", "Chicken Parmesan", "Shrimp Stir Fry", "Blueberry Pancakes", "Grilled Salmon", "Breakfast Burrito" ]
    
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
                                Text(recipe)
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
