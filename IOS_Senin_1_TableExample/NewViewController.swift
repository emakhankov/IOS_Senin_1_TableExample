//
//  NewViewController.swift
//  IOS_Senin_1_TableExample
//
//  Created by Jenya on 07.01.2021.
//

import UIKit

class NewViewController: UIViewController {

    var strData: String?
    
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = strData;
        
        
    }
    

   

}
