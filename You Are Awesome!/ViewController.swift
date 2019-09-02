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
        print("The View Loaded!")
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
//        messageLabel.text = "You Are Awesome!"

    }
    

}

