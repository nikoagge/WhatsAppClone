//
//  Builder.swift
//  WhatsAppClone
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

public final class Builder {
    public static  func build(windowScene: UIWindowScene) -> UIWindow {
        let window = Window(windowScene: windowScene)
        let router = Router()
        let presenter = Presenter(router: router)
        window.presenter = presenter
        
        return window
    }
}
