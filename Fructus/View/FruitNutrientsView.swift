//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Nindya Alita Rosalia on 04/09/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count, id: \.self){item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[0])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
                
            
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
