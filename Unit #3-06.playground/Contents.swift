

// Created on: Oct 2018
// Created by: Brody MacNeil
// Created for: ICS3U
// This program shows animation of image walking
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionLabel = UILabel()
    let moveButton = UIButton()
    let ImageView = UIImageView()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "Press start to see animation"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        moveButton.setTitle("Start", for: .normal)
        moveButton.setTitleColor(.blue, for: .normal)
        moveButton.titleLabel?.textAlignment = .center
        moveButton.addTarget(self, action: #selector(showAnimation), for: .touchUpInside)
        view.addSubview(moveButton)
        moveButton.translatesAutoresizingMaskIntoConstraints = false
        moveButton.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        moveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        ImageView.image = UIImage(named: "walk1.bmp")
        view.addSubview(ImageView)
        ImageView.translatesAutoresizingMaskIntoConstraints = false
        ImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc func showAnimation() {
        var counter : Int = 10
        while counter >= 1 {
            if counter == 10 {
                ImageView.image = UIImage(named: "walk1.bmp")
            } else if counter == 9 {
                ImageView.image = UIImage(named: "walk2.bmp")
            } else if counter == 8 {
                ImageView.image = UIImage(named: "walk3.bmp")
            } else if counter == 7 {
                ImageView.image = UIImage(named: "walk4.bmp")
            } else if counter == 6 {
                ImageView.image = UIImage(named: "walk5.bmp")
            } else if counter == 5 {
                ImageView.image = UIImage(named: "walk6.bmp")
            } else if counter == 4 {
                ImageView.image = UIImage(named: "walk7.bmp")
            } else if counter == 3 {
                ImageView.image = UIImage(named: "walk8.bmp")
            } else if counter == 2 {
                ImageView.image = UIImage(named: "walk9.bmp")
            } else if counter == 1 {
                ImageView.image = UIImage(named: "walk10.bmp")
            } 
            counter -= 1
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
