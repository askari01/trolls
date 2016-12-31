//
//  ViewController.swift
//  trolls
//
//  Created by Syed Askari on 31/12/2016.
//  Copyright © 2016 Syed Askari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var pageView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        if let url = URL(string: "http://123movies.is") {
            do {
                let contents = try String(contentsOf: url)
                print(contents)
                let myString = contents.replacingOccurrences(of: "", with: "").replacingOccurrences(of: "", with: "").replacingOccurrences(of: "", with: "")
                pageView.loadHTMLString(myString, baseURL: nil)
            } catch {
                // contents could not be loaded
                print("err")
            }
        } else {
            // the URL was bad!
            print ("bad url")
        }
        
        // Normal Loading
//        pageView.delegate = self
//        pageView.loadRequest(URLRequest(url: URL(string: "http://123movies.is")!))

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

