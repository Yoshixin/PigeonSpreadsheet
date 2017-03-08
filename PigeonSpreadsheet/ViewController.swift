//
//  ViewController.swift
//  PigeonSpreadsheet
//
//  Created by student on 2/6/17.
//  Copyright © 2017 And Um Enterprises. All rights reserved.
//

import UIKit
import MMSpreadsheetView


class ViewController: UIViewController, MMSpreadsheetViewDelegate, MMSpreadsheetViewDataSource {
    
    //the number of rows will be based on user input, temporarily set to 1 to shut up the compiler
    var numRows = 1
    //there will be 12 columns, as there are 12 months in the year
    var numCols = 12
    
    var spreadsheetView: MMSpreadsheetView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        spreadsheetView = MMSpreadsheetView(numberOfHeaderRows: UInt(numRows), numberOfHeaderColumns: UInt(numCols), frame: self.view.bounds)
        
        spreadsheetView.delegate = self
        spreadsheetView.dataSource = self
        
        let widthOfABox = (Double(view.frame.size.width) - 2 * 2.0) / (Double(numCols) + 2.0)
        let spreadsheetCellBox = CGRect(x: 0, y: 0, width: widthOfABox, height: widthOfABox)
        let spreadsheetCell = UICollectionViewCell(frame: spreadsheetCellBox)
        
        spreadsheetView.registerCellClass(type(of:spreadsheetCell), forCellWithReuseIdentifier: "pigeon_data")
        
        
        view.addSubview(spreadsheetView)
 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfColumns(in: MMSpreadsheetView!) -> Int {
        return numCols
    }
    
    func numberOfRows(in: MMSpreadsheetView!) -> Int {
        return numRows
    }
    
    func spreadsheetView(_ spreadsheetView: MMSpreadsheetView!, cellForItemAt indexPath: IndexPath!) -> UICollectionViewCell! {
        return spreadsheetView.dequeueReusableCell(withReuseIdentifier: "pigeon_daga", for: indexPath)
    }


}

