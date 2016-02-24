//
//  SportsTemplate.swift
//  MovieGuide
//
//  Created by Samuel on 23/02/2016.
//  Copyright © 2016 Veedoo. All rights reserved.
//

import UIKit

class SportsTemplateViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var sportsTable = ["Sports Video 1","Sports Video 2","Sports Video 3","Sports Video 4"]
    @IBOutlet weak var sportsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         self.navigationController!.navigationBar.hidden = false
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Library", style: .Plain, target: self, action: "addTapped")
        

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sportsTable.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("sportsCell")!
        cell.textLabel?.text = sportsTable[indexPath.row]
        return cell
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}