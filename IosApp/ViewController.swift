//
//  ViewController.swift
//  IosApp
//
//  Created by Ильмир Сулейманов on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var okButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        okButton.setTitle("Click me 0", for: .normal)
    }

    @IBAction func clickButton(_ sender: UIButton) {
        print("Click 1 " , sender.tag)
    }
}

