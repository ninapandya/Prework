//
//  ViewController.swift
//  Prework
//
//  Created by Nina Pandya on 1/4/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundColor = view.backgroundColor
    }

    
    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.green
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        
        view.backgroundColor = UIColor.green
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        
        if textField.text == "" {
            textLabel.text = "Goodbye!"
            
        } else {
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
            
        }
        

    }
    @IBAction func onResetGesture(_ sender: Any) {
        
        textLabel.text = "Hello from Nina!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
    }
}

