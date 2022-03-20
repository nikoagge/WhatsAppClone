//
//  Builder.swift
//  WhatsAppClone
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

public final class Builder {
    public static func build(completion: @escaping () -> Void) -> UIViewController {
        let landingStoryboard = UIStoryboard(name: "Landing", bundle: Bundle(for: self))
        let landingStoryboardViewController = LandingViewController.instantiate(from: landingStoryboard)
        landingStoryboardViewController.onStart = completion
        
        return landingStoryboardViewController
    }
}
