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
    @IBOutlet weak var soundSwitch: UISwitch!
    
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    var awesomePlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        }while lastNumber == newIndex
        return newIndex
    }
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
      
        if let sound = NSDataAsset(name: soundName) {
            do {
                try  audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: data in  \(soundName) couldn't be played as a sound")
            }
        }
        else {
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        
        if soundSwitch.isOn == false && soundIndex != -1 {
            awesomePlayer.stop()
          
        
        }
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
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)

        messageLabel.text = messages[index]
        
        //image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")

// sound

//        if soundSwitch.isOn == True {
    if soundSwitch.isOn {
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
    }
    
   
    
}

