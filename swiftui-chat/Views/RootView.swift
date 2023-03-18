//
//  RootView.swift
//  swiftui-chat
//
//  Created by Rodrigo Soares on 16/03/23.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .chats
    
    @State var isOnboarding = !AuthViewModel.isUserLoggedIn()
    
    var body: some View {
        
        VStack {
            
            Text("Hello, World!")
                .padding()
                .font(Font.chatHeading)
            
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .fullScreenCover(isPresented: $isOnboarding) {
            // On dismiss
        } content: {
            OnboardingContainerView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
