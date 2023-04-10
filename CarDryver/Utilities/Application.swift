//
//  Application.swift
//  CarDryver
//
//  Created by Daval Cato on 4/5/23.
//

import SwiftUI

// final means this class can't be parent of any other classes
final class ApplicationUtility {
    
    static var rootViewController: UIViewController {
        
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            
            return .init()
        }
        
        guard let root = screen.windows.first?.rootViewController else {
            
            return .init()
        }
        
        return root
    }
    
    
}








