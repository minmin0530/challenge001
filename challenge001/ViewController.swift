//
//  ViewController.swift
//  challenge001
//
//  Created by Yoshiki Izumi on 2020/08/08.
//  Copyright © 2020 Yoshiki Izumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    var textFields : [UITextField] = []
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func calcButton(_ sender: Any) {
        var result : Int = 0
        for textField in textFields {
            if textField.text == "" {
                textField.text = "0"
            }
            result += Int( textField.text! )!
        }
        resultLabel.text = result.description
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFields.append(textField1)
        textFields.append(textField2)
        textFields.append(textField3)
        textFields.append(textField4)
        textFields.append(textField5)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

