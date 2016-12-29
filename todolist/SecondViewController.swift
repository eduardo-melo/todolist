//
//  SecondViewController.swift
//  todolist
//
//  Created by Eduardo Melo on 28/12/16.
//  Copyright © 2016 Eduardo Melo. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ItemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(ItemTextField.text!)
        } else {
            items = [ItemTextField.text!]   
        }
        
        UserDefaults.standard.set(items, forKey: "items")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        ItemTextField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

