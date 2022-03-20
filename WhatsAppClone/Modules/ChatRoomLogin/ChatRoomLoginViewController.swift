//
//  ChatRoomLoginViewController.swift
//  ChatRoomLogin
//
//  Created by Nikos Aggelidis on 20/3/22.
//

import UIKit

class ChatRoomLoginViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

private extension ChatRoomLoginViewController {
    func setupUI() {
        avatarImageView.image = UIImage(named: "male", in: Bundle(for: ChatRoomLoginViewController.self), with: nil)
        loginButton.setImage(UIImage(named: "login", in: Bundle(for: ChatRoomLoginViewController.self), with: nil), for: .normal)
    }
}
