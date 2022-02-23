//
//  ViewController.swift
//  IosApp
//
//  Created by Ильмир Сулейманов on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        sender.isHidden = true
        print(sender.currentTitle)
    }
}

