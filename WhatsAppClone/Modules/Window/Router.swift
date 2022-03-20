//
//  Router.swift
//  Window
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

class Router {
    private unowned let window: UIWindow
    private let submodules: Submodules
    
    typealias Submodules = (
        landingModule: () -> UIViewController, ()
    )
    
    init(window: UIWindow, submodules: Submodules) {
        self.window = window
        self.submodules = submodules
    }
}

extension Router: Routing {
    func routeToLanding() {
        let landingView = self.submodules.landingModule()
        self.window.rootViewController = landingView
        self.window.makeKeyAndVisible()
    }
}
