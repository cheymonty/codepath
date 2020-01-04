//
//  ViewController.swift
//  CPSubmission
//
//  Created by Cheyenne Montgomery on 1/4/20.
//  Copyright © 2020 Cheyenne Montgomery. All rights reserved.
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

    @IBAction func didTappedButton(_ sender: Any) {
        print("Hello")
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapBackgroundButton(_ sender: Any) {
        view.backgroundColor = UIColor.blue
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
       // textLabel.text = "Goodbye!"
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Cheyenne"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        
    }
}

