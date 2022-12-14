//
//  InfoViewController.swift
//  Navigation
//
//  Created by Вячеслав Студеникин on 13.12.22.
//

import UIKit

class InfoViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        alertButton()
        view.backgroundColor = .white
    }
    func alertButton() {
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: 130, height: 50))
        view.addSubview(button)
        button.setTitle(" Testing", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(tabButtonAlert), for: .touchUpInside)
        button.center = view.center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        button.setImage((UIImage(systemName: "questionmark")), for: .normal)
    }
    @objc func tabButtonAlert(){
        let alert = UIAlertController(title: "WAIT!", message: "welcome to the club buddy", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            print("Ok its ok")
        }
        let actionTwo = UIAlertAction(title: "Cancel", style: .cancel) { (actionTwo) in
            print("cancel its cancel")
        }
        alert.addAction(action)
        alert.addAction(actionTwo)
        present(alert, animated: true)
    }
}
