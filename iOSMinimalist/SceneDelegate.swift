import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let demos: [Demo] = [
            Demo(name: "Scroller", description: "A UIScrollview", viewController: ScrollerViewController())
            ]

        let window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController(rootViewController: DemoChooserViewController(demos: demos))
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }
}
