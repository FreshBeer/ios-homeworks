//
//  Profile.swift
//  Navigation
//
//  Created by Вячеслав Студеникин on 02.12.22.
//

import UIKit

class ProfileView: UIView {
    @IBOutlet weak var image: UIImageView!{
        didSet{
            image.image = UIImage(named: "Billy")
        }
    }

    @IBOutlet weak var about: UITextView!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var name: UILabel!
}
