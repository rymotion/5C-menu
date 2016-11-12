//
//  FirstViewController.swift
//  5C menu
//
//  Created by Ryan Paglinawan on 11/11/16.
//  Copyright © 2016 Ryan Paglinawan. All rights reserved.
//

import UIKit
import JavaScriptCore
import WebKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet var school: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //func getFoodData() -> NSMutableArray {
        
    //}

    func webDataCall() -> Void {
        if let url = URL(string:"https://aspc.pomona.edu/menu/"){
            do{
                let dataCall = try String(contentsOf: url)
                print(dataCall)
            }catch{
                
            }
        } else{
            
        }
        
    }
}

