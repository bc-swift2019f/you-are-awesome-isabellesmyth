//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Isabelle Smyth on 9/2/19.
//  Copyright © 2019 Isabelle Smyth. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let messages = ["You are awesome!",
                        "You are great!",
                        "You are fantastic!",
                        "when the genius bar needs help they call you!",
                        "You brighten my day!",
                        "You make me smile!",
                        "you are da bomb!",
                        "hey,fabulous!",
                        "you are tremendous",
                        "you've got the design skills of jony ive!", "I can't wait to download your app!"]
        //var newIndex = -1
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        }while index == newIndex
        
        //text
        index = newIndex
        messageLabel.text = messages[index]
        
        //image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        imageIndex = newIndex
        
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")

// sound
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        }while soundIndex == newIndex
        
        soundIndex = newIndex
        var soundName = "sound\(soundIndex)"
        if let sound = NSDataAsset(name: soundName) {
            do {
                try  awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
            print("ERROR: data in  \(soundName) couldn't be played as a sound")
            }
        }
            else {
                 print("ERROR: file \(soundName) didn't load")
            }
        
    }
    
   
    
}

