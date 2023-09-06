//
//  OnboardingView.swift
//  Fructus
//
//  Created by Nindya Alita Rosalia on 31/08/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
