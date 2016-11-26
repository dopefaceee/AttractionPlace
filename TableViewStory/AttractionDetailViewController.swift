//
//  AttractionDetailViewController.swift
//  TableViewStory
//
//  Created by Ade Suluh on 10/2/16.
//  Copyright © 2016 Ade Suluh. All rights reserved.
//

import UIKit

class AttractionDetailViewController: UIViewController {
    
    var webSite: String?
    
    
    @IBOutlet weak var webView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let address = webSite {
            let webURL = NSURL(string: address)
            let urlRequest = NSURLRequest(url: webURL! as URL)
            webView.loadRequest(urlRequest as URLRequest)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
