import UIKit

class ProfileView: UIView {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userAbout: UITextView!
    @IBOutlet weak var userCity: UILabel!{
        didSet{
            userCity.text = "New York"
        }
    }
    @IBOutlet weak var userImage: UIImageView!{
        didSet{
            userImage.image = UIImage(named: "billy")
        }
    }
    @IBOutlet weak var userAge: UILabel!{
        didSet{
            userAge.text = "1969"
        }
    }
}
