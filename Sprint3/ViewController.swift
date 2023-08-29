//
//  ViewController.swift
//  Sprint3
//
//  Created by Ирина Бобарыкина on 27.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var clickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickCounterButton(_ sender: Any) {
        
        count += 1
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
}

