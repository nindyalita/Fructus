//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Nindya Alita Rosalia on 06/09/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    //MARK: PROPERTIES
    var textLabel: String
    var textImage: String
    
    var body: some View {
        HStack{
            Text(textLabel.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: textImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(textLabel: "Fructus", textImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
