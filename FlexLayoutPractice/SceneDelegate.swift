import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?
  
  // Scene이 연결되었을 때 호출됩니다.
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    // UIWindow를 설정하고 rootViewController로 UIViewController를 설정합니다.
    window = UIWindow(windowScene: windowScene)
    
    let viewController = MainViewController() // 여기에 실제로 표시하고 싶은 뷰 컨트롤러를 설정합니다.
    
    // 루트 뷰 컨트롤러 설정
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()  // 화면에 보이도록 설정
    print ("##ARTHUR 11")
  }
  
  // 이후의 SceneDelegate 관련 메서드들은 필요에 따라 구현합니다.
  func sceneDidDisconnect(_ scene: UIScene) {}
  func sceneDidBecomeActive(_ scene: UIScene) {}
  func sceneWillResignActive(_ scene: UIScene) {}
  func sceneWillEnterForeground(_ scene: UIScene) {}
  func sceneDidEnterBackground(_ scene: UIScene) {}
}
