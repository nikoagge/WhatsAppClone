//
//  Builder.swift
//  WhatsAppClone
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit
import Landing
import ChatRoomLogin

public final class Builder {
    public static  func build(windowScene: UIWindowScene) -> UIWindow {
        let window = Window(windowScene: windowScene)
        let landingModule = Landing.Builder.build
        let chatRoomLoginModule = ChatRoomLogin.Builder.build
        let router = Router(window: window, submodules: (
            landingModule: landingModule,
            chatRoomLoginModule: chatRoomLoginModule)
        )
        let presenter = Presenter(router: router)
        window.presenter = presenter
        
        return window
    }
}
