 import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }


}

class TabBarController: UITabBarController {
    var profileController: UINavigationController!
    var feedController: UINavigationController!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    
        setupUI()
    }
//Прописываю рутовые экраны контроллерам.
    private func setupUI(){
        profileController = UINavigationController.init(rootViewController: ProfileViewController())
        feedController = UINavigationController.init(rootViewController: FeedViewController())


//self.viewControllers - это контейнер из контроллеров, между которых я могу переключатся.
        self.viewControllers = [feedController, profileController]

//Создаю айтемы которые помещаются вниз таб бара.
        let itemFeed = UITabBarItem(title: "НОВОСТИ",
                                       image: UIImage(systemName: "newspaper"), tag: 1)
        let itemProfile = UITabBarItem(title: "ПРОФИЛЬ",
                                       image: UIImage(systemName: "person.fill") , tag: 0)

//Ранее созданным контроллерам (новости и профиль) присваиваю свойство - tabBarItem и присваиваю айтемы которые я создал выше itemProfile и itemFeed

        profileController.tabBarItem = itemProfile
        feedController.tabBarItem = itemFeed
//Прописываю цвета ячейкам

        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .orange
    }
}


