//
//  ViewController.swift
//  filmes_preferidos
//
//  Created by IFPB on 15/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {


    @IBOutlet weak var lbResult: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            print("Main - ViewDidLoad")
        }
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
            
            print("Main - viewWillAppear")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(true)
            
            print("Main - viewDidAppear")
            let count = String((UIApplication.shared.delegate as! AppDelegate).register.count())
            self.lbResult.text = count
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(true)
            
            print("Main - viewWillDisappear")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(true)
            
            print("Main - viewDidDisappear")
        }}

