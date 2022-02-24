//
//  ViewController.swift
//  IosApp
//
//  Created by Ильмир Сулейманов on 19.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var nextDigit: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    lazy var game = Game(countItem: buttons.count)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
    }
    
    private func setupScreen(){
        for index in game.items.indices{
            buttons[index].setTitle(game.items[index].title, for: .normal)
            buttons[index].isHidden = false
        }
        nextDigit.text = game.nextItem?.title
    }
    
    private func updateUI(){
        for index in game.items.indices {
            buttons[index].isHidden = game.items[index].isFound
        }
        nextDigit.text = game.nextItem?.title
        if game.status == .win {
            statusLabel.text = "Вы выиграли"
            statusLabel.textColor = .green
        }
    }
    
    @IBAction func clickButton(_ sender: UIButton) {
        guard let buttonIndex = buttons.firstIndex(of: sender) else {return}
        print(buttonIndex)
        game.check(index: buttonIndex)
        updateUI()
    }
}

