//#-hidden-code
//: [Previous](@previous)

import UIKit
import Foundation
import PlaygroundSupport

class ViewController : UIViewController {
    let bar = UIImageView()
    let dados1 = UILabel()
    let dados2 = UILabel()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        
        setupBarImage()
        
        let botao1 = UIButton(type: .custom)
        botao1.backgroundColor =  #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        //       botao1.frame = CGRect(x: view.frame.width * 0.10, y: view.frame.height * 0.38, width: 200, height: 50)
        botao1.addTarget(self, action: #selector(funcaoDoBotao1), for: .touchDown)
        botao1.layer.cornerRadius = 5
        botao1.setTitle("Let him try more", for: .normal)
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
        botao2.setTitle("Get him out of there", for: .normal)
        botao2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
        self.view.addSubview(botao2)
        
        botao2.translatesAutoresizingMaskIntoConstraints = false
        botao2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        botao2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        botao2.widthAnchor.constraint(equalToConstant: 200).isActive = true
        botao2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc func dissapear(){
        bar.image = UIImage(named: "Bar1")
        dados1.removeFromSuperview()
        dados2.removeFromSuperview()
    }
    
    @objc func funcaoDoBotao1(){
        dados1.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dados1.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //        dados1.frame = CGRect (x: 150, y: 140, width: 300, height: 200)
        dados1.numberOfLines = 10
        dados1.textAlignment = NSTextAlignment.center
        dados1.text = "This is a very common situation and not just in bars, but at clubs as well.\n If she is not comfortable with the situation, your friend should notice it and just move on.\n When you are just letting trying harder, you are just letting things like this happen.\n You are just enduring that acts like that happen more often."
        dados1.font = UIFont(name: "Amatic SC", size: 16)
        dados1.adjustsFontForContentSizeCategory = true
        dados1.alpha = 0
        bar.image = UIImage(named: "Bar2")
        self.view.addSubview(self.dados1)
        self.dados1.translatesAutoresizingMaskIntoConstraints = false
        self.dados1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dados1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dados1.widthAnchor.constraint(equalToConstant: 400).isActive = true
        self.dados1.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        let botaoDaLabel = UIButton(frame: dados1.frame)
        view.addSubview(botaoDaLabel)
        botaoDaLabel.translatesAutoresizingMaskIntoConstraints = false
        botaoDaLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        botaoDaLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        botaoDaLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        botaoDaLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        botaoDaLabel.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0)
        botaoDaLabel.addTarget(self, action: #selector(dissapear), for: .touchDown)
        view.addSubview(botaoDaLabel)
        UIView.animate(withDuration: 0.4) {
            self.dados1.alpha = 1}
        
        
    }
    
    @objc func funcaoDoBotao2(){
        dados2.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dados2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //        dados2.frame = CGRect (x: 150, y: 140, width: 300, height: 200)
        dados2.numberOfLines = 5
        dados2.textAlignment = NSTextAlignment.center
        dados2.text = "Some guys just misunderstand the meaning of 'no'.\n If the person is saying 'no', it doesn’t mean 'try harder' or 'convince me', it means 'NO'.\n In cases like this, you can help her and make her comfortable again and enjoy her night."
        dados2.font = UIFont(name: "Amatic SC", size: 16)
        dados2.adjustsFontForContentSizeCategory = true
        dados2.alpha = 0
        bar.image = UIImage(named: "Bar2")
        self.view.addSubview(self.dados2)
        self.dados2.translatesAutoresizingMaskIntoConstraints = false
        self.dados2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dados2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dados2.widthAnchor.constraint(equalToConstant: 400).isActive = true
        self.dados2.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        let botaoDaLabel2 = UIButton(frame: dados2.frame)
        view.addSubview(botaoDaLabel2)
        botaoDaLabel2.translatesAutoresizingMaskIntoConstraints = false
        botaoDaLabel2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        botaoDaLabel2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        botaoDaLabel2.widthAnchor.constraint(equalToConstant: 300).isActive = true
        botaoDaLabel2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        botaoDaLabel2.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0)
        botaoDaLabel2.addTarget(self, action: #selector(dissapear), for: .touchDown)
        UIView.animate(withDuration: 0.4) {
            self.dados2.alpha = 1
        }
        
    }
    
    func setupBarImage() {
        bar.image = UIImage(named: "Bar1")
        //        bar.frame = CGRect (x: 20, y: 20, width: 600, height: 350)
        self.view.addSubview(bar)
        bar.translatesAutoresizingMaskIntoConstraints = false
        bar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        bar.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        bar.widthAnchor.constraint(equalToConstant: 500).isActive = true
        bar.heightAnchor.constraint(equalToConstant: 351.22).isActive = true
    }
}

let vc = ViewController()
vc.preferredContentSize = CGSize(width: 640, height: 480)
PlaygroundPage.current.liveView = vc

//#-end-hidden-code

/*:
 ### Bar Situation
 
 Now we are at a bar. It’s night and you and some friends got out for a few drinks. One of your friends saw a nice girl alone and dicidid to make a move, so he goes after her and starts to talk to her. She denies his offers of drinks and offers to getting out, she’s not comfortable with the situation, but your friend insists in trying.
 
 What do you do?
 
 1. Let him try some more, probably the girl is just playing hard to get. At some point she will accept his offers.
 2. Get there and ask her if your friend is making her uncomfortable and if she say “yes”, just get your friend out of there.
 
 [Next](@next)
 */
