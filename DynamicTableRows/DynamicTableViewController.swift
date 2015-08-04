//
//  DynamicTableViewController.swift
//  DynamicTableRows
//
//  Created by Jure Zove on 03/08/15.
//  Copyright (c) 2015 Candy Code. All rights reserved.
//

import UIKit

class DynamicTableViewController: UITableViewController {
    static let kTitleKey:String = "title"
    static let kDateKey:String = "date"
    static let kBodyKey:String = "body"
    
    var data = [
        [kDateKey: "Aug 15", kTitleKey: "Bacon", kBodyKey: "Bacon ipsum dolor amet ball tip doner boudin ribeye beef ribs venison pastrami prosciutto sirloin. Jerky ball tip ground round, pork belly doner ham hock picanha ribeye fatback tenderloin sirloin pig. Spare ribs kielbasa hamburger swine ground round landjaeger shank pig. Ham pig cupim tri-tip meatball jowl shoulder. Pork loin turkey short ribs, boudin beef ribs cow t-bone meatloaf bacon leberkas kevin swine sirloin ham hock. Shankle ham tenderloin tail biltong turkey brisket boudin spare ribs. Pork loin filet mignon ham hock shankle venison landjaeger drumstick."],
        [kDateKey: "Aug 16", kTitleKey: "Meatball", kBodyKey: "Meatball filet mignon short ribs, landjaeger chuck flank kevin alcatra chicken ham hock salami biltong sirloin shankle. Flank tongue turducken, pig pork loin shankle sirloin fatback pork chop. Short ribs pork belly pork chop corned beef pork loin swine. Pork chop tail hamburger alcatra meatball t-bone turkey ribeye spare ribs prosciutto venison. Ham hock capicola strip steak landjaeger leberkas porchetta meatloaf boudin tail ground round t-bone pancetta frankfurter andouille. Brisket pig fatback pork belly capicola landjaeger rump chuck frankfurter hamburger biltong. Chicken biltong tongue jerky frankfurter short loin ribeye."],
        [kDateKey: "Aug 17", kTitleKey: "Ribs", kBodyKey: "Spare ribs beef ribs tri-tip pastrami, tail kielbasa shoulder doner kevin jowl meatloaf ham hock shankle landjaeger. Venison kevin doner, kielbasa flank meatloaf boudin. Prosciutto rump kevin pancetta turkey bacon ground round beef ribs shank. Ham kevin ball tip shankle brisket fatback beef prosciutto beef ribs pig landjaeger short ribs tri-tip."],
        [kDateKey: "Aug 18", kTitleKey: "Salami", kBodyKey: "Salami t-bone cow brisket tongue leberkas meatloaf pig meatball. Pork belly boudin capicola, short ribs meatball tri-tip pork chop biltong shoulder chicken rump fatback hamburger. Jerky flank swine, doner alcatra pork belly bacon andouille. Boudin shankle pork loin prosciutto shoulder turducken."]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.estimatedRowHeight = 80
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tableView.setNeedsLayout()
        self.tableView.layoutIfNeeded()

        self.tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0)

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DynamicCell", forIndexPath: indexPath) as! DynamicTableViewCell

        var entry = self.data[indexPath.row]
        cell.titleLabel.text = entry[DynamicTableViewController.kTitleKey]
        cell.dateLabel.text = entry[DynamicTableViewController.kDateKey]
        cell.bodyLabel.text = entry[DynamicTableViewController.kBodyKey]

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
