//
//  ViewController.swift
//  PokemonGames
//
//  Created by Mert Sevindik on 03.08.20.
//  Copyright © 2020 Mert Sevindik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var generationtext: UILabel!
    var gamesManager = GamesManger()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTextField.delegate = self
    
    }

    @IBAction func textEntered(_ sender: UITextField) {
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "")
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        if textField.text != "" {
            return true
        }
        else {
            textField.placeholder = "enter a generation"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        gamesManager.enterGeneration(name: searchTextField.text!)
        textField.text = ""
    }
    
    
}

