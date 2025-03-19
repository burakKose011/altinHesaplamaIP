//
//  ViewController.swift
//  AltinHesaplama
//
//  Created by macbook on 2.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var baslaButon: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        baslaButon.layer.cornerRadius = 10
        
        
    
    }

    
    @IBAction func baslaButton(_ sender: Any) {
        
        performSegue(withIdentifier: "aktarim1", sender: nil)
    }
    

}

