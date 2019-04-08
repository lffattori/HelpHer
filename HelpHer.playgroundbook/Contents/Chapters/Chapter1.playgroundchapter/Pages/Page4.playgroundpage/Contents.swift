//#-hidden-code
//: [Previous](@previous)

import UIKit
import Foundation
import PlaygroundSupport

class ViewController : UIViewController {
    let escritorio = UIImageView()
    let dados1 = UILabel()
    let dados2 = UILabel()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        
        setupEscritorioImage()
        
        let botao1 = UIButton(type: .custom)
        botao1.backgroundColor =  #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        //        botao1.frame = CGRect(x: view.frame.width * 0.10, y: view.frame.height * 0.38, width: 200, height: 50)
        botao1.addTarget(self, action: #selector(funcaoDoBotao1), for: .touchDown)
        botao1.layer.cornerRadius = 5
        botao1.setTitle("Talk to her", for: .normal)
        botao1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        self.view.addSubview(botao1)
        botao1.translatesAutoresizingMaskIntoConstraints = false
        botao1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        botao1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        botao1.widthAnchor.constraint(equalToConstant: 200).isActive = true
        botao1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        let botao2 = UIButton(type: .custom)
        botao2.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        //        botao2.frame = CGRect(x: view.frame.width * 0.48, y: view.frame.height * 0.38, width: 200, height: 50)
        botao2.addTarget(self, action: #selector(funcaoDoBotao2), for: .touchDown)
        botao2.layer.cornerRadius = 5
        botao2.setTitle("Talk to HR", for: .normal)
        botao2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        self.view.addSubview(botao2)
        botao2.translatesAutoresizingMaskIntoConstraints = false
        botao2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        botao2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        botao2.widthAnchor.constraint(equalToConstant: 200).isActive = true
        botao2.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    @objc func dissapear(){
        escritorio.image = UIImage(named: "Escritório")
        dados1.removeFromSuperview()
        dados2.removeFromSuperview()
    }
    
    @objc func funcaoDoBotao1(){
        dados1.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dados1.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        dados1.frame = CGRect (x: 150, y: 140, width: 300, height: 200)
        dados1.numberOfLines = 10
        dados1.textAlignment = NSTextAlignment.center
        dados1.text = "If she already told him it bothers her, it will not be effective just to talk to him again. Also, it might get her into trouble even more. She won’t go to HR by herself, because she’s afraid of getting fired. It’s not helping her."
        dados1.font = UIFont(name: "Amatic SC", size: 16)
        escritorio.image = UIImage(named: "Escritório2")
        dados1.alpha = 0
        self.view.addSubview(self.dados1)
        self.dados1.adjustsFontForContentSizeCategory = true
        self.dados1.adjustsFontSizeToFitWidth = true
        self.dados1.translatesAutoresizingMaskIntoConstraints = false
        self.dados1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dados1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dados1.widthAnchor.constraint(equalToConstant: 400).isActive = true
        self.dados1.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        let botaoDaLabel = UIButton(frame: dados1.frame)
        botaoDaLabel.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0)
        botaoDaLabel.addTarget(self, action: #selector(dissapear), for: .touchDown)
        view.addSubview(botaoDaLabel)
        botaoDaLabel.translatesAutoresizingMaskIntoConstraints = false
        botaoDaLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        botaoDaLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        botaoDaLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        botaoDaLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        UIView.animate(withDuration: 0.4) {
            self.dados1.alpha = 1
        }
        
    }
    
    @objc func funcaoDoBotao2(){
        self.dados2.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.dados2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.dados2.frame = CGRect (x: 150, y: 140, width: 300, height: 200)
        self.dados2.numberOfLines = 5
        self.dados2.textAlignment = NSTextAlignment.center
        self.dados2.text = "Even if you are afraid of getting fired, there are laws that protect her of this kind of behavior in a work place. If you talk to HR they will probably apply the law and help your coworker."
        self.dados2.font = UIFont(name: "Amatic SC", size: 16)
        escritorio.image = UIImage(named: "Escritório2")
        self.dados2.adjustsFontForContentSizeCategory = true
        self.dados2.alpha = 0
        self.view.addSubview(self.dados2)
        self.dados2.translatesAutoresizingMaskIntoConstraints = false
        self.dados2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dados2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dados2.widthAnchor.constraint(equalToConstant: 400).isActive = true
        self.dados2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let botaoDaLabel = UIButton(frame: dados2.frame)
        botaoDaLabel.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0)
        botaoDaLabel.addTarget(self, action: #selector(dissapear), for: .touchDown)
        view.addSubview(botaoDaLabel)
        botaoDaLabel.translatesAutoresizingMaskIntoConstraints = false
        botaoDaLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        botaoDaLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        botaoDaLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        botaoDaLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        UIView.animate(withDuration: 0.4) {
            self.dados2.alpha = 1
        }
    }
    
    
    
    
    func setupEscritorioImage() {
        escritorio.image = UIImage(named: "Escritório")
        //        escritorio.frame = CGRect (x: 20, y: 20, width: 600, height: 350)
        self.view.addSubview(escritorio)
        escritorio.translatesAutoresizingMaskIntoConstraints = false
        escritorio.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        escritorio.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        escritorio.widthAnchor.constraint(equalToConstant: 500).isActive = true
        escritorio.heightAnchor.constraint(equalToConstant: 362.51).isActive = true
    }
}


let vc = ViewController()
vc.preferredContentSize = CGSize(width: 640, height: 480)
PlaygroundPage.current.liveView = vc

//#-end-hidden-code
/*:
 ### Office Situation
 
 Now, you are at work. You are next to a female coworker and she constantly is interrupted by her boss, which is also your boss, with complements, invitations to go out, even some “hot texts” on her cellphone.
 She is not comfortable with the situation and she already told him. However, every time he says something to her that can be understood as: “I’m your boss, I control your career”.
 
 What do you do?
 1. Try to convince her to talk to him again and clarify the situation, because maybe he doesn’t know it’s bothering her. If this is not effective maybe she can talk with HR or just pretend it’s not happening.
 2. Talk with HR and explain the situation so they can do something.
 
 
 [Next](@next)
 */


