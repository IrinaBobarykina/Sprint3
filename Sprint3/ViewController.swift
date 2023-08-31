//
//  ViewController.swift
//  Sprint3
//
//  Created by Ирина Бобарыкина on 27.08.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private var count = 0
    private var change = ""

    
    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var historyText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func plusOne(_ sender: Any) {
        count += 1
        change = " значение изменено на +1"
        updateCountInLabel()
        creatHistoryUpdate(change: change)
    }
    
    
    @IBAction private func minusOne(_ sender: Any) {
        if count > 0 {
            count -= 1
            change = " значение изменено на -1"
            updateCountInLabel()
        } else {
            change = " попытка уменьшить значение счётчика ниже 0"
        }
        creatHistoryUpdate(change: change)
    }
    
    @IBAction private func resetCounter(_ sender: Any) {
        count = 0
        change = " значение сброшено"
        updateCountInLabel()
        creatHistoryUpdate(change: change)
    }
    
    private func updateCountInLabel() {
        counterLabel.text = "Значение счётчика: \(count)"
    }
    
    private func creatHistoryUpdate(change: String){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_RU")
        historyText.text += "\n" + dateFormatter.string(from: Date.now) + ":" + change
    }
    
}
