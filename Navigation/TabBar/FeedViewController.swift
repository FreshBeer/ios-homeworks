import UIKit
import Foundation

struct Post {
    var title: String
}

class FeedViewController: UIViewController{

    var postOne = Post(title: "Post 1")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        buttonViewPost()
    }

    func buttonViewPost (){
        let button = UIButton(frame: CGRect(x: 0, y: 100, width: 130, height: 50))
        view.addSubview(button)
        button.setTitle("  OPEN", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 14
        button.addTarget(self, action: #selector(tabButtonFeed), for: .touchUpInside)
        button.center = view.center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        button.setImage((UIImage(systemName: "doc.append.rtl")), for: .normal)
    }
    //Прописываю поведение
    @objc func tabButtonFeed (){
        let postController = PostViewController()
        navigationController?.pushViewController(postController, animated: true)
        postController.title = postOne.title
    }
}
