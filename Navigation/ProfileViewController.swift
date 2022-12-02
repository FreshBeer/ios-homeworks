//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Вячеслав Студеникин on 02.12.22.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var profileAge: UILabel!
    @IBOutlet weak var profileAbout: UITextView!
    @IBOutlet weak var profileCity: UILabel!
    @IBOutlet weak var profileName: UILabel!{
        didSet{
            profileImage.image = UIImage(named:"billy")
        }
    }
    @IBOutlet weak var profileImage: UIImageView!
}
