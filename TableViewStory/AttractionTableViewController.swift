//
//  AttractionTableTableViewController.swift
//  TableViewStory
//
//  Created by Ade Suluh on 10/2/16.
//  Copyright © 2016 Ade Suluh. All rights reserved.
//

import UIKit

class AttractionTableViewController: UITableViewController {
    
    var attractionImages = [String]()
    var attractionNames = [String]()
    var webAddresses = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        attractionNames = ["Telaga Sarangan",
                            "Gunung Lawu",
                            "Solo Paragon",
                            "Rawa Pening",
                            "Benteng Vredeburg"]
        webAddresses = ["https://en.wikipedia.org/wiki/Buckingham_Palace",
                        "https://en.wikipedia.org/wiki/Eiffel_Tower",
                        "https://en.wikipedia.org/wiki/Grand_Canyon",
                        "https://en.wikipedia.org/wiki/Windsor_Castle",
                        "https://en.wikipedia.org/wiki/Empire_State_Building"]
        attractionImages = ["buckingham_palace.jpg",
                            "eiffel_tower.jpg",
                            "grand_canyon.jpg",
                            "windsor_castle.jpg",
                            "empire_state_building.jpg"]
        
        tableView.estimatedRowHeight = 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows

        return attractionNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //menambahkan as! AttractionTableViewCell untuk mengakses propertynya
        let cell = tableView.dequeueReusableCell(withIdentifier: "AttractionTableCell", for: indexPath) as! AttractionTableViewCell

        // Configure the cell...for interrogated to find out index selected YO!
        let row = indexPath.row
        cell.attractionLabel.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cell.attractionLabel.text = attractionNames[row]
        cell.attractionImage.image = UIImage.init(named: attractionImages[row])

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowAttractionDetails" {
            let detailViewController = segue.destination as! AttractionDetailViewController
            let myIndexPath = self.tableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailViewController.webSite = webAddresses[row]
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
