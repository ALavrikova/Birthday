//
//  ViewController.swift
//  HappyBirthday
//
//  Created on 11/16/17.
//  Copyright © 2017. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var bombSoundEffect: AVAudioPlayer?
    
    @IBOutlet weak var wishLabel: UILabel!
    var firstName: String?
    var lastName: String?
    var age = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstName = "Vish"
        lastName = ""
        age = age + 1
        let message = "Wishing \(String(describing: firstName!)) \(String(describing: lastName!)) a very Happy " + String(age) +  "st Birthday!"
        wishLabel.text = message
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"bollywood.jpg")!)
        
        let path = Bundle.main.path(forResource: "Happy-Birthday-Song-In-Hindi.mp3", ofType:nil)!
        
        let url = URL(fileURLWithPath: path)
        
        do {
            bombSoundEffect = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect?.play()
        } catch {
            print("cant play")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

