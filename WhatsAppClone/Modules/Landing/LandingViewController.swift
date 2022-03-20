//
//  LandingViewController.swift
//  Landing
//
//  Created by Nikos Aggelidis on 19/3/22.
//

import UIKit

class LandingViewController: UIViewController {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    var onStart: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    @IBAction func startButtonTouchUpInside(_ sender: UIButton) {
        onStart?()
    }
}

private extension LandingViewController {
    func setupUI() {
        logoImageView.image = UIImage(named: "logo", in: Bundle(for: LandingViewController.self), with: nil)
        startButton.setImage(UIImage(named: "start", in: Bundle(for: LandingViewController.self), with: nil), for: .normal)
    }
}
