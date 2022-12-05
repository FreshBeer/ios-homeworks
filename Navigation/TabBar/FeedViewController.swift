import UIKit
import Foundation

struct Post{
    var title: String
}

class FeedViewController: UIViewController{

    private var button: UIButton = {
        let button = UIButton()
        button.setTitle("Show eeee", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 14
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        button.frame = CGRect(x: 100, y: 400, width: 100, height: 50)
        setupButton()
    }

    func setupButton (){
        button.addTarget(self, action: #selector(tabButtonFeed), for: .touchUpInside)
    }

    //Прописываю поведение
    @objc func tabButtonFeed (){
        let postController = PostViewController()
        navigationController?.pushViewController(postController, animated: true)
    }
}
