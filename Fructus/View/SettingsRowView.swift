//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Nindya Alita Rosalia on 06/09/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if(content != nil){
                    Text(content!)
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.circle").foregroundColor(Color.red)
                }else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
//        SettingsRowView(name: "Developer", content: "John / jane")
//            .previewLayout(.sizeThatFits)
//            .padding()
        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
