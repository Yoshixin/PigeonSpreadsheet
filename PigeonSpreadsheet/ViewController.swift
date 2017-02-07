//
//  ViewController.swift
//  PigeonSpreadsheet
//
//  Created by student on 2/6/17.
//  Copyright © 2017 And Um Enterprises. All rights reserved.
//

import UIKit
import MMSpreadsheetView


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let spreadsheetView: MMSpreadsheetView = MMSpreadsheetView(numberOfHeaderRows: 15, numberOfHeaderColumns: 12, frame: self.view.bounds)
        
        self.view.addSubview(spreadsheetView)
        
        
        
       ()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

