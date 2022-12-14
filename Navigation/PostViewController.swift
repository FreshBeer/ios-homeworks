
import UIKit

class PostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.tintColor = UIColor.orange
        navigationController()
    }



    func navigationController() {
        let infoButton = UIBarButtonItem(title: "INFO", style: .plain, target: self, action: #selector(tabButtonInfo))
        navigationItem.rightBarButtonItem = infoButton

    }

    @objc func tabButtonInfo() {
        let info = InfoViewController()
        self.present(info, animated: true)
    }
}

