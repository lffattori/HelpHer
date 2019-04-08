//#-hidden-code
import UIKit
import PlaygroundSupport
import Foundation

class ViewController : UIViewController {
    var welcome : UIImageView!
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        
        welcome = UIImageView()
        welcome.image = UIImage(named: "Welcome_2")
        self.view.addSubview(welcome)
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcome.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        welcome.widthAnchor.constraint(equalToConstant: 600).isActive = true
        welcome.heightAnchor.constraint(equalToConstant: 300).isActive = true
    }
}

let vc = ViewController()
vc.preferredContentSize = CGSize(width: 640, height: 480)
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
/*:
 
 ### Welcome to Help Her
 Before we start, please set your iPad for the portrait position for a better experience.
 
 In the next pages, some daily situations will be described on this side of the screen with some options of possible reactions, that you must choose between them.
 
 When you make up your mind, just tap your choice on the screen. When you do it, a massege will apear on your screen according to your choice.
 
 After you've read everything, just tap on the massege and go to the bottom on this side of the screen and click the buttom "Next" to go to the next situation.
 
 Let’s get started?
 
 Tap "Next".
 
 [Next](@next)
*/
