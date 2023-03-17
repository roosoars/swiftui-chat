//
//  AuthViewModel.swift
//  swiftui-chat
//
//  Created by Rodrigo Soares on 17/03/23.
//

import Foundation
import FirebaseAuth

class AuthViewModel {
    
    static func isUserLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    static func getLoggedInUserId() -> String {
        return Auth.auth().currentUser?.uid ?? ""
    }
    
    static func logout() {
       try? Auth.auth().signOut()
    }
}
