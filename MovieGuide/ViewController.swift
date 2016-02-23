//
//  ViewController.swift
//  MovieGuide
//
//  Created by Samuel on 22/02/2016.
//  Copyright © 2016 Veedoo. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    override func viewWillAppear(animated: Bool) {
        // Hide Navigation bar
        self.navigationController!.navigationBar.hidden = true

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //set title of view controller dynamically
        
   
        navigationItem.title = nil
        if segue.identifier == "push"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "Travels"
            navigationItem.title = "Back"
            navigationController!.navigationBar.titleTextAttributes =
                ([NSForegroundColorAttributeName: UIColor.whiteColor()])
            
            navigationController!.navigationBar.barTintColor = UIColor(colorLiteralRed: 51.0, green: 102.0, blue: 102.0, alpha: 1.0)
            navigationController!.navigationBar.tintColor = UIColor.whiteColor()
            
        }
        
        if segue.identifier == "pasta"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "View Controller Linguine all’arrabbiata"
            navigationItem.title = "Pasta to One"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

