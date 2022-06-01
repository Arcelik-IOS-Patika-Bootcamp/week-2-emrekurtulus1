//
//  SecondViewController.swift
//  week2_arcelik
//
//  Created by Emre Kurtulus on 1.06.2022.
//

import UIKit

protocol MyDataSendingDelegate {
    func sendData(myData: String)
}

class SecondViewController: UIViewController {
    
    var delegate: MyDataSendingDelegate? = nil
    
    @IBOutlet weak var dataToSendTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendDataButtonClicked(_ sender: Any) {
        
        if self.delegate != nil && self.dataToSendTextField.text != nil {
            
            let dataToBeSent = self.dataToSendTextField.text
            self.delegate?.sendData(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
}
