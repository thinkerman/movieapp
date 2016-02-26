//
//  WeddingTemplate.swift
//  MovieGuide
//
//  Created by Samuel on 23/02/2016.
//  Copyright © 2016 Veedoo. All rights reserved.
//

import UIKit

class Wedding: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var weddingTable = ["Wedding Video 1", "Wedding Video 2", "Wedding Video3", "Wedding Video 4", "Wedding Video 5"]
    @IBOutlet weak var weddingTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weddingTable.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("weddingCell")!
        cell.textLabel?.text = weddingTable[indexPath.row]
         cell.textLabel?.textColor = UIColor.whiteColor()
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //  let alertView = UIAlertView()
        //alertView.addButtonWithTitle("Ok")
        //alertView.title = "Row Selected"
        //alertView.message = self.birthdayArray[indexPath.row]
        //alertView.show()
        self.performSegueWithIdentifier("weddingCamera", sender: UITableViewCell.self)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController!.navigationBar.hidden = false
       // navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Library", style: .Plain, target: self, action: "addTapped")
        


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}