//
//  Window.swift
//  Window
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

protocol Presentation {
    
}

class Window: UIWindow {
    var presenter: Presentation?

    override init(windowScene: UIWindowScene) {
        super.init(windowScene: windowScene)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)        
    }
}
