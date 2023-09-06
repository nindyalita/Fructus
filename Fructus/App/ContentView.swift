//
//  ContentView.swift
//  Fructus
//
//  Created by Nindya Alita Rosalia on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
                
            }
            .navigationTitle("Fruit")
            .navigationBarItems(
                trailing:
                    Button(action:{
                        isShowingSettings = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                    }//: BUTTON
                    .sheet(isPresented: $isShowingSettings){
                        SettingsView()
                    }
            )
        }//: NAVIGATION VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
