//#-hidden-code
//: [Previous](@previous)
import UIKit
import PlaygroundSupport
import Foundation

class ViewController : UIViewController {
    var thankyou : UIImageView!
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        
        thankyou = UIImageView()
        thankyou.image = UIImage(named: "Thank You")
        self.view.addSubview(thankyou)
        thankyou.translatesAutoresizingMaskIntoConstraints = false
        thankyou.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thankyou.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        thankyou.widthAnchor.constraint(equalToConstant: 600).isActive = true
        thankyou.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        //        setupThankYouImage()
    }
    //    func setupThankYouImage() {
    //        thankyou = UIImageView()
    //        thankyou.image = UIImage(named: "Thank You")
    //        self.view.addSubview(thankyou)
    //        thankyou.translatesAutoresizingMaskIntoConstraints = false
    //        thankyou.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    //        thankyou.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    //    }
}

let vc = ViewController()
vc.preferredContentSize = CGSize(width: 640, height: 480)
PlaygroundPage.current.liveView = vc
//#-end-hidden-code
/*:
 
 ### Conclusion
 This situations happens everyday with many women all around the world. In Brazil, the situation is alarming and the statistcis are one of thye worst in the world.
 
 This kind of behavior can be changed by your actions on a daily basis. When you are doing something about it, you are helping her.
 
 Stop doing nothing, help her.
 
 ### Copyright

 The font used at the images (BIG NOODLE TITLING) has free copyright.
 BIG NOODLE TITLING from Sentinel Type, designed by James Arboghast
 */
