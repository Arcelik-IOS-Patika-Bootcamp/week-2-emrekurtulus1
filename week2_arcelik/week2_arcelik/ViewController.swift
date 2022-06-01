//
//  ViewController.swift
//  week2_arcelik
//
//  Created by Emre Kurtulus on 30.05.2022.
//

import UIKit

class ViewController: UIViewController, MyDataSendingDelegate {
    
    @IBOutlet weak var receivedDataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Delegate Method
    func sendData(myData: String) {
        self.receivedDataLabel.text = myData
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }
    

}
