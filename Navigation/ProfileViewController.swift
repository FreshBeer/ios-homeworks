import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadNib()
    }
    func loadNib() {
        if let nibView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView {
            nibView.frame = CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 400)
            view.addSubview(nibView)
        }
    }
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

