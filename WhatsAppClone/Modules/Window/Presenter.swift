//
//  Presenter.swift
//  Window
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

protocol Routing {
    func routeToLanding()
}

class Presenter: Presentation {
    private let router: Routing
    
    
    
    init(router: Routing) {
        self.router = router
    }
}
