//#-hidden-code
//: [Previous](@previous)
import UIKit
import PlaygroundSupport

class ViewController : UIViewController {
    let casal = UIImageView()
    let dados1 = UILabel()
    let dados2 = UILabel()
    var botaoDaLabel = UIButton()
    
    // poe intervene
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        
        setupCasalImage()
        
        let botao1 = UIButton(type: .custom)
        botao1.backgroundColor =  _ColorLiteralType(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        //        botao1.frame = CGRect(x: view.frame.width * 0.10, y: view.frame.height * 0.38, width: 200, height: 50)
        botao1.addTarget(self, action: #selector(funcaoDoBotao1), for: .touchDown)
        botao1.layer.cornerRadius = 5
        botao1.setTitle("Let them talk", for: .normal)
        botao1.titleLabel?.font = UIFont.boldSystemFont( ofSize: 18)
        self.view.addSubview(botao1)
        
        botao1.translatesAutoresizingMaskIntoConstraints = false
        botao1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        botao1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        botao1.widthAnchor.constraint(equalToConstant: 200).isActive = true
        botao1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        let botao2 = UIButton(type: .custom)
        botao2.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        //        botao2.frame = CGRect(x: view.frame.width * 0.44, y: view.frame.height * 0.38, width: 200, height: 50)
        botao2.addTarget(self, action: #selector(funcaoDoBotao2), for: .touchDown)
        botao2.layer.cornerRadius = 5
        botao2.setTitle("Interfere", for: .normal)
        botao2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        self.view.addSubview(botao2)
        
        botao2.translatesAutoresizingMaskIntoConstraints = false
        botao2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        botao2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        botao2.widthAnchor.constraint(equalToConstant: 200).isActive = true
        botao2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc func funcaoDoBotao1(){
        dados1.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dados1.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //        dados1.frame = CGRect (x: 110, y: 130, width: 400, height: 300)
        dados1.numberOfLines = 20
        dados1.textAlignment = NSTextAlignment.center
        dados1.text = "In Brazil, according to researches and statistics, 87% of the population believes that when there is a fight between man and woman, no one shouldn't interfere.\n However, according to the same researches, violence reported against women are promoted by partners or former partners, about 67% of the cases.\n If you don’t interfere, you are not helping this women."
        dados1.font = UIFont(name: "BigNoodleTitling", size: 16)
        dados1.adjustsFontForContentSizeCategory = true
        dados1.adjustsFontSizeToFitWidth
        dados1.alpha = 0
        self.view.addSubview(dados1)
        casal.image = UIImage(named: "Casal_Flat_2")
        self.dados1.translatesAutoresizingMaskIntoConstraints = false
        self.dados1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dados1.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dados1.widthAnchor.constraint(equalToConstant: 300).isActive = true
        self.dados1.heightAnchor.constraint(equalToConstant: 250).isActive = true
        
        self.dados1.setNeedsDisplay()
        
        botaoDaLabel = UIButton (frame: dados1.frame)
        view.addSubview(botaoDaLabel)
        botaoDaLabel.translatesAutoresizingMaskIntoConstraints = false
        botaoDaLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        botaoDaLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        botaoDaLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        botaoDaLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        botaoDaLabel.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 0)
        botaoDaLabel.addTarget(self, action: #selector(dissapear), for: .touchDown)
        
        UIView.animate(withDuration: 0.4) {
            self.dados1.alpha = 1
        }
    }
    
    @objc func dissapear(){
        print("disappear")
        casal.image = UIImage(named: "Casal_Flat")
        dados1.removeFromSuperview()
        dados2.removeFromSuperview()
        botaoDaLabel.removeFromSuperview()
    }
    
    @objc func funcaoDoBotao2(){
        dados2.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        dados2.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //        dados2.frame = CGRect (x: 150, y: 140, width: 300, height: 200)
        dados2.numberOfLines = 20
        dados2.textAlignment = NSTextAlignment.center
        dados2.text = "Even if that fight wasn't look like dangerous, if you stop it, you are helping her and not encouraging him.\n The statistics in Brazil are alarming about domestic violence, 1 in 5 women might have suffered from it in some point of their lifes.\n However, you can help her calling 180 to report the situation."
        dados2.font = UIFont(name: "Amatic SC", size: 16)
        dados2.adjustsFontForContentSizeCategory = true
        dados2.alpha = 0
        casal.image = UIImage(named: "Casal_Flat_2")
        
        botaoDaLabel = UIButton(frame: dados2.frame)
        botaoDaLabel.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 0)
        botaoDaLabel.addTarget(self, action: #selector(dissapear), for: .touchDown)
        view.addSubview(botaoDaLabel)
        
        self.view.addSubview(dados2)
        UIView.animate(withDuration: 0.4) {
            self.dados2.alpha = 1}
        
        self.dados2.translatesAutoresizingMaskIntoConstraints = false
        self.dados2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        self.dados2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.dados2.widthAnchor.constraint(equalToConstant: 300).isActive = true
        self.dados2.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        botaoDaLabel.translatesAutoresizingMaskIntoConstraints = false
        botaoDaLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        botaoDaLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        botaoDaLabel.widthAnchor.constraint(equalToConstant: 400).isActive = true
        botaoDaLabel.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
    }
    
    func setupCasalImage() {
        casal.image = UIImage(named: "Casal_Flat")
        //        casal.frame = CGRect (x: 20, y: 20, width: 600, height: 350)
        self.view.addSubview(casal)
        
        casal.translatesAutoresizingMaskIntoConstraints = false
        casal.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        casal.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        casal.widthAnchor.constraint(equalToConstant: 500).isActive = true
        casal.heightAnchor.constraint(equalToConstant: 237.96).isActive = true
    }
}

let vc = ViewController()
vc.preferredContentSize = CGSize(width: 640, height: 480)
PlaygroundPage.current.liveView = vc

//#-end-hidden-code
/*:
 
 ### Couple Situation
 In this situation, you are with a few friends at a party. Suddently, you see a couple (boyfriend and girlfriend) that are friends of yours fighting, probably something about some other guy talking to her.
 The discussion warm up when he starts to huff her really loud and even push her, calling everyone's attention. She’s trying to calm him down, but it’s in vain.
 
 Looking at this situation what do you do?
 1. Let them talk and understand each other, after all, it’s not good to get into a couples fight, you should not interfere.
 2. Try to get her out of the fight and wait until he calm down, than they talk. If the guys starts to getting really physical and aggressive, probably call to the police to protect her.
 
 [Next](@next)
 */
