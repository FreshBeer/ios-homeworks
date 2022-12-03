import UIKit


struct Post{
    var title: String
}

class FeedViewController: UIViewController{

    var post = Post(title: "Hello world!")



    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

    }
}
