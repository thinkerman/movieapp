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

      //  self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0, green: 204.0, blue: 51.0, alpha: 1.0)
      //  self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()] */
    }
    
    
    @IBAction func TravelAlert(sender: UIButton) {
        
        var loginTextField: UITextField?
        let alertController = UIAlertController(title: "New Story", message: "Enter Name of your story", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            //println("Ok Button Pressed")
            
            self.performSegueWithIdentifier("travel", sender: UIButton.self)
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            //  println("Cancel Button Pressed")
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            loginTextField = textField
            loginTextField?.placeholder = ""
        }
        presentViewController(alertController, animated: true, completion: nil)
    }

    
    @IBAction func BirthdayAlert(sender: UIButton) {
        
        var loginTextField: UITextField?
        let alertController = UIAlertController(title: "New Story", message: "Enter Name of your story", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            //println("Ok Button Pressed")
        
            self.performSegueWithIdentifier("birthday", sender: UIButton.self)
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            //  println("Cancel Button Pressed")
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            loginTextField = textField
            loginTextField?.placeholder = ""
        }
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func WeddingAlert(sender: UIButton) {
        
        var loginTextField: UITextField?
        let alertController = UIAlertController(title: "New Story", message: "Enter Name of your story", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            //println("Ok Button Pressed")
            self.performSegueWithIdentifier("wedding", sender: UIAlertController.self)
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            //  println("Cancel Button Pressed")
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            loginTextField = textField
            loginTextField?.placeholder = ""
        }
        presentViewController(alertController, animated: true, completion: nil)
    }

   
  

    @IBAction func SportsAlert(sender: UIButton) {
        
        var loginTextField: UITextField?
        let alertController = UIAlertController(title: "New Story", message: "Enter Name of your story", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            //println("Ok Button Pressed")
            
            self.performSegueWithIdentifier("sports", sender: UIButton.self)
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            //  println("Cancel Button Pressed")
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            loginTextField = textField
            loginTextField?.placeholder = ""
        }
        presentViewController(alertController, animated: true, completion: nil)
    }

    
    
    @IBAction func SportsAlert1(sender: UIButton) {
        
        var loginTextField: UITextField?
        let alertController = UIAlertController(title: "New Story", message: "Enter Name of your story", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            //println("Ok Button Pressed")
            
            self.performSegueWithIdentifier("nature", sender: UIButton.self)
            
        })
        let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            //  println("Cancel Button Pressed")
        }
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addTextFieldWithConfigurationHandler { (textField) -> Void in
            // Enter the textfiled customization code here.
            loginTextField = textField
            loginTextField?.placeholder = ""
        }
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //set title of view controller dynamically
        
   
  /*      navigationItem.title = nil
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


     */  
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

