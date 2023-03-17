//
//  RootView.swift
//  swiftui-chat
//
//  Created by Rodrigo Soares on 16/03/23.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .contacts
    
    
    var body: some View {
        
        VStack {
            
            Text("Hello, World!")
                .padding()
                .font(Font.settings)
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
