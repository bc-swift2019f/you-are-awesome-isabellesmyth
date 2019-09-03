//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Isabelle Smyth on 9/2/19.
//  Copyright © 2019 Isabelle Smyth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        if messageLabel.text == "You Are Awesome!" {
            messageLabel.text = "You Are Great!"
        }
        else if messageLabel.text == "You Are Great!" {
            messageLabel.text = "You Are Amazing!"
        }
        else {
            messageLabel.text = "You Are Awesome!"
        }
        messageLabel.textColor = UIColor.red

    }
    
   
    
}

