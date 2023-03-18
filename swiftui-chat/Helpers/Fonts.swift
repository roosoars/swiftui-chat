//
//  Fonts.swift
//  swiftui-chat
//
//  Created by Rodrigo Soares on 16/03/23.
//

import Foundation
import SwiftUI

extension Font {
    public static var bodyParagraph: Font {
        return Font.custom("LexendDeca-Regular", size: 14)
    }
    
    public static var button: Font {
        return Font.custom("LexendDeca-SemiBold", size: 14)
    }
    
    public static var smallText: Font {
        return Font.custom("LexendDeca-Regular", size: 10)
    }
    
    public static var tabBar: Font {
        return Font.custom("LexendDeca-Regular", size: 12)
    }
    
    public static var settings: Font {
        return Font.custom("LexendDeca-Regular", size: 16)
    }
    
    public static var tittleText: Font {
        return Font.custom("LexendDeca-Bold", size: 23)
    }
    
    public static var pageTittle: Font {
        return Font.custom("LexendDeca-SemiBold", size: 33)
    }
    
    public static var chatHeading: Font {
        return Font.custom("LexendDeca-SemiBold", size: 19 )
    }
}
