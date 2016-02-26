//
//  NatureTemplate.swift
//  MovieGuide
//
//  Created by Samuel on 23/02/2016.
//  Copyright © 2016 Veedoo. All rights reserved.
//

import UIKit

class NatureTemplateViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var birthdayArray = ["Nature Video 1", "Nature Video 2", "Nature Video 3"]
    
    @IBOutlet weak var UITable: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthdayArray.count
        
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellNature")!
        cell.textLabel?.text = birthdayArray[indexPath.row]
         cell.textLabel?.textColor = UIColor.whiteColor()

        return cell
        
    }
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      //  let alertView = UIAlertView()
        //alertView.addButtonWithTitle("Ok")
        //alertView.title = "Row Selected"
        //alertView.message = self.birthdayArray[indexPath.row]
        //alertView.show()
       self.performSegueWithIdentifier("natureCamera", sender: UITableViewCell.self)
        
        
           }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
          self.navigationController!.navigationBar.hidden = false
      
      
        

    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
