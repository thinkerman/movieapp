//
//  BirthdayTemplate.swift
//  MovieGuide
//
//  Created by Samuel on 23/02/2016.
//  Copyright © 2016 Veedoo. All rights reserved.
//
import UIKit

class BirthdayTemplateViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var birthdayArray = ["Birthday Video 1", "Birthday Video 2", " Birthday Video 3"]
    
    @IBOutlet weak var UITable: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birthdayArray.count
        
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellBirthday")!
        cell.textLabel?.text = birthdayArray[indexPath.row]

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