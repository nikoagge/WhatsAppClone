//
//  Builder.swift
//  ChatRoomLogin
//
//  Created by Nikos Aggelidis on 20/3/22.
//

import UIKit
import Utility

public class Builder {
    public static func build() -> UIViewController {
        let chatRoomLoginStoryboard = UIStoryboard(name: "ChatRoomLogin", bundle: Bundle(for: self))
        let chatRoomLoginStoryboardViewController = ChatRoomLoginViewController.instantiate(from: chatRoomLoginStoryboard)
        
        return chatRoomLoginStoryboardViewController
    }
}
