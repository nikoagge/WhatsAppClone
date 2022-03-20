//
//  Presenter.swift
//  Window
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

protocol Routing {
    func routeToLanding()
    func routeToLogin()
}

class Presenter: Presentation {
    private let router: Routing
    
    init(router: Routing) {
        self.router = router
        
        process()
    }
}

private extension Presenter {
    func process() {
        self.router.routeToLanding()
    }
}
