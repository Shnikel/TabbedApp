//
//  FirstViewController.swift
//  TabbedAppDemo
//
//  Created by Nichole on 6/20/21.
//  Copyright © 2021 Nichole. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var sendTextButton: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendTextButton.layer.cornerRadius = 5.0
    }

    @IBAction func onButtonClick(_ sender: Any) {
        let store = UserDefaults.standard
        store.set(textInput.text, forKey: "qqq")
//        TextData.text = textInput.text
//        self.performSegue(withIdentifier: "toSecondScene", sender: self)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if (segue.identifier == "toSecondScene") {
//            let secondVC = segue.destination as! SecondViewController
//            secondVC.textToSend = textInput.text
//
//        }
//    }
}

