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
        if segue.identifier == "travel"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "Travels"
            navigationItem.title = "Back"
            navigationController!.navigationBar.titleTextAttributes =
                ([NSForegroundColorAttributeName: UIColor.brownColor()])
            
                       navigationController!.navigationBar.tintColor = UIColor.brownColor()
            
        }
        
        if segue.identifier == "wedding"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "Wedding"
            navigationItem.title = "Back"
            navigationController!.navigationBar.titleTextAttributes =
                ([NSForegroundColorAttributeName: UIColor.brownColor()])
            
            navigationController!.navigationBar.tintColor = UIColor.brownColor()
            
        }

        if segue.identifier == "birthday"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "Birthday"
            navigationItem.title = "Back"
            navigationController!.navigationBar.titleTextAttributes =
                ([NSForegroundColorAttributeName: UIColor.brownColor()])
            
            navigationController!.navigationBar.tintColor = UIColor.brownColor()
            
        }

        if segue.identifier == "sports"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "Sports"
            navigationItem.title = "Back"
            navigationController!.navigationBar.titleTextAttributes =
                ([NSForegroundColorAttributeName: UIColor.brownColor()])
            
            navigationController!.navigationBar.tintColor = UIColor.brownColor()
            
        }
        
        if segue.identifier == "nature"{
            let vc = segue.destinationViewController as UIViewController
            vc.navigationItem.title = "Nature"
            navigationItem.title = "Back"
            navigationController!.navigationBar.titleTextAttributes =
                ([NSForegroundColorAttributeName: UIColor.brownColor()])
            
            navigationController!.navigationBar.tintColor = UIColor.brownColor()
            
        }


       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

