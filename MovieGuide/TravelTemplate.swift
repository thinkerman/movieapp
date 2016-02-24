//
//  TravelTemplate.swift
//  MovieGuide
//
//  Created by Samuel on 23/02/2016.
//  Copyright © 2016 Veedoo. All rights reserved.
//

import UIKit

class TravelTemplateViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   var travelArray = ["Travel Video 1", "Travel Video 2", "Travel Video 3","Travel Video 4"]
    
    @IBOutlet weak var tableView: UITableView!
   
    
    
    //TableView Codes
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return travelArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        cell.textLabel?.text = travelArray[indexPath.row]
        
     
        

        return cell
        
    }
    
    override func viewDidLoad() {
        
     
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         self.navigationController!.navigationBar.hidden = false
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Library", style: .Plain, target: self, action: "addTapped")
        
        
        
    }
    
 

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
