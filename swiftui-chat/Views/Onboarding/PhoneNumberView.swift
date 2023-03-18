//
//  PhoneNumberView.swift
//  swiftui-chat
//
//  Created by Rodrigo Soares on 18/03/23.
//

import SwiftUI

struct PhoneNumberView: View {
    
    @Binding var currentStep: OnboardingStep
    
    @State var phoneNumber = ""
    
    var body: some View {
        
        VStack {
            
            Text("Verification")
                .font(Font.tittleText)
                .padding(.top, 52)
            
            Text("Enter your mobile number below. We'll send \nyou a verification code after.")
              .font(Font.bodyParagraph)
              .multilineTextAlignment(.center)
              .padding(.top, 12)
            
            
            // Textfield
            ZStack {
                
                Rectangle()
                    .frame(height: 56)
                    .foregroundColor(Color("input"))
                
                HStack {
                    TextField("e.g. +1 613 515 0123", text: $phoneNumber)
                    
                    Spacer()
                    
                    Button {
                        // Clear textfield
                        phoneNumber = ""
                    } label: {
                        Image(systemName: "multiply.circle.fill")
                    }
                    .frame(width: 19, height: 19)
                    .tint(Color("icons-input"))
                }
                .padding()
            }
            .padding(.top, 34 )
            
            Spacer()
            
            Button {
                // Next step
                currentStep = .verification 
            } label: {
                Text("Next")
            }
            .buttonStyle(OnboardingButtonStyle())
            .padding(.bottom, 87)
        }
        .padding(.horizontal)
    }
}

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberView(currentStep: .constant(.phonenumber))
    }
}
