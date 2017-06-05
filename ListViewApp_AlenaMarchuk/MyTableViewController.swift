//
//  MyTableViewController.swift
//  ListViewApp_AlenaMarchuk
//
//  Created by alena on 5/13/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController, UISearchResultsUpdating {
    
    var WesterosHouses = [
        House(name: "House Arryn\nof\nthe Eyrie", sigil: #imageLiteral(resourceName: "ArrynSigil2"), words: "\nThe Words:\n\n\"As High As Honor\"", founded: "Coming of the Andals",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL")]),
        House(name: "House Baelish\nof\nthe Fingers", sigil: #imageLiteral(resourceName: "BaelishSigil2"), words: "\nUnofficial Words:\n\n\"Knowledge is Power\"", founded: "299 AC",
              overlord: [#imageLiteral(resourceName: "BaratheonOfKL")]),
        House(name: "House Baratheon of Dragonstone", sigil: #imageLiteral(resourceName: "BaratheonStannisSigil"), words: "Official Words:\n\"Ours is the Fury\"\n\nUnofficial Words:\n\"The Night is Dark and Full of Terrors\"", founded: "284 AC",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL"), #imageLiteral(resourceName: "BaratheonStannisSigil")]),
        House(name: "House Baratheon of King's Landing\"", sigil: #imageLiteral(resourceName: "BaratheonOfKL"), words: "Official Words:\n\"Ours is the Fury\"", founded: "283 AC",
              overlord: [#imageLiteral(resourceName: "BaratheonOfKL")]),
        House(name: "House Baratheon of Storm's End", sigil: #imageLiteral(resourceName: "BaratheonSigil"), words: "\nThe Words:\n\n\"Ours is the Fury\"", founded: "1 AC",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL")]),
        House(name: "House Bolton\nof\nDreadford", sigil: #imageLiteral(resourceName: "BoltonSigil"), words: "Official Words:\n\"Our Blades are Sharp\"\n\nUnofficial Words:\n\"A Naked Man Has Few Secrets,\nA Flayed Man, None\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "BoltonSigil"), #imageLiteral(resourceName: "StarkSigil")]),
        House(name: "House Caron\nof\nNightsong", sigil: #imageLiteral(resourceName: "CarronSigil"), words: "\nThe Words:\n\n\"No Song So Sweet\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "BaratheonSigil"), #imageLiteral(resourceName: "BaratheonStannisSigil")]),
        House(name: "House Cerwyn\nof\nCerwyn", sigil: #imageLiteral(resourceName: "CerwynSigil"), words: "\nThe Words:\n\n\"Honed and Ready\"", founded: "Unknown",
              overlord: [#imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "BoltonSigil"), #imageLiteral(resourceName: "StarkSigil")]),
        House(name: "House Clegane\nof\nClegane's Keep", sigil: #imageLiteral(resourceName: "CleganeSigil"), words: "\nUnofficial Words:\n\n\"Bugger that!\"", founded: "Around 250 AC",
              overlord: [#imageLiteral(resourceName: "LannisterSigil")]),
        House(name: "House Dondarrion\nof\nBlackhaven", sigil: #imageLiteral(resourceName: "DondarrionSigil"), words: "\nUnofficial Words:\n\n\"Kiss of Life\"", founded: "Before 1 AC",
              overlord: [#imageLiteral(resourceName: "BaratheonSigil")]),
        House(name: "Dunkan the Tall\nof\nSeven Kingdoms", sigil: #imageLiteral(resourceName: "DuncanTheTall"), words: "\nUnofficial Words:\n\n\"Thick as a Castle Wall\"", founded: "209 AC", overlord: [#imageLiteral(resourceName: "DuncanTheTall")]),
        House(name: "House Frey\nof\nthe Crossing", sigil: #imageLiteral(resourceName: "FreySigil"), words: "\nThe Words:\n\n\"We Stand Together\"", founded: "600 years ago",
              overlord: [#imageLiteral(resourceName: "TullySigil"), #imageLiteral(resourceName: "BaelishSigil2")]),
        House(name: "House Hightower\nof\nHightower", sigil: #imageLiteral(resourceName: "HightowerSigil"), words: "\nThe Words:\n\n\"We Light the Way\"", founded: "Age of Dawn",
              overlord: [#imageLiteral(resourceName: "TyrellSigil")]),
        House(name: "House Hornwood\nof\nHornwood", sigil: #imageLiteral(resourceName: "HornwoodSigil"), words:  "\nThe Words:\n\n\"Righteous in Wrath\"", founded: "Unknown",
              overlord: [#imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "BoltonSigil"), #imageLiteral(resourceName: "StarkSigil")]),
        House(name: "House Greyjoy\nof\nPyke", sigil: #imageLiteral(resourceName: "GreyJoySigil"), words: "Official Words:\n\"We Do Not Sow\"\n\nUnofficial Words:\n\"What is Dead May Never Die\"", founded: "Age of Heroes", overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL"), #imageLiteral(resourceName: "GreyJoySigil")]),
        House(name: "House Lannister\nof\nCasterly Rock", sigil: #imageLiteral(resourceName: "LannisterSigil"), words: "Official Words:\n\"Hear Me Roar\"\n\nUnofficial Words:\n\"A Lannister Always Pays His Debts\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL")]),
        House(name: "House Manderly\nof\nWhite Harbor", sigil: #imageLiteral(resourceName: "ManderlySigil"), words: "\nThe Words:\n\n\"True to Our Word\"", founded: "Descend from First Men",
              overlord: [#imageLiteral(resourceName: "TyrellSigil"), #imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "BoltonSigil"), #imageLiteral(resourceName: "StarkSigil")]),
        House(name: "House Martell\nof\nSunspear", sigil: #imageLiteral(resourceName: "MartellSigil"), words: "\nThe Words:\n\n\"Unbowed, Unbent, Unbroken\"", founded: "1,000 years ago",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL"), #imageLiteral(resourceName: "MartellSigil")]),
        House(name: "House Mormont\nof\nBear Island", sigil: #imageLiteral(resourceName: "MormontSigil"), words: "\nThe Words:\n\n\"Here We Stand\"", founded: "Unknown",
              overlord: [#imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "BaratheonStannisSigil"), #imageLiteral(resourceName: "StarkSigil")]),
        House(name: "House Oakheart\nof\nOld Oak", sigil: #imageLiteral(resourceName: "OakheartSigil"), words:  "\nThe Words:\n\n\"Our Roots Go Deep\"", founded: "Before 1 AC",
              overlord: [#imageLiteral(resourceName: "TyrellSigil")]),
        House(name: "House Piper\nof\nPink Maiden", sigil: #imageLiteral(resourceName: "PiperSigil"), words: "\nThe Words:\n\n\"Brave and Beautiful\"", founded: "Before 1 AC",
              overlord: [#imageLiteral(resourceName: "TullySigil"), #imageLiteral(resourceName: "BaelishSigil2")]),
        House(name: "House Plumm\nof\nPlumm Keep", sigil: #imageLiteral(resourceName: "PlummSigil"), words: "\nThe Words:\n\n\"Come Try Me\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "LannisterSigil")]),
        House(name: "House Selmy\nof\nHarvest Hall", sigil: #imageLiteral(resourceName: "SelmySigil"), words: "\nUnofficial Words:\n\n\"Our Fields Prosper\"", founded: "Unknown",
              overlord: [#imageLiteral(resourceName: "BaratheonSigil")]),
        House(name: "House Stark\nof\nWinterfell", sigil: #imageLiteral(resourceName: "StarkSigil"), words: "\nThe Words:\n\n\"Winter is Coming\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL"), #imageLiteral(resourceName: "StarkSigil")]),
        House(name: "House Swann\nof\nStonehelm", sigil: #imageLiteral(resourceName: "SwannSigil"), words: "\nUnofficial Words:\n\n\"Blood, like Water\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "BaratheonSigil")]),
        House(name: "House Swyft\nof\nCornfield", sigil: #imageLiteral(resourceName: "SwyftSigil"), words: "\nThe Words:\n\n\"Awake! Awake!\"", founded: "Unknown",
              overlord: [#imageLiteral(resourceName: "LannisterSigil")]),
        House(name: "House Targaryen\n(Exiled)", sigil: #imageLiteral(resourceName: "TargaryenSigil"), words: "\nThe Words:\n\n\"Fire and Blood\"", founded: "1 AC",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil")]),
        House(name: "House Tarly\nof\nHorn Hill", sigil: #imageLiteral(resourceName: "TarlySigil"), words: "\nThe Words:\n\n\"First in Battle\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "TyrellSigil")]),
        House(name: "House Tarth\nof\nEvenfall Hall", sigil: #imageLiteral(resourceName: "TarthSigil"), words: "\nUnofficial Words:\n\n\"Oathkeeper\"", founded: "Age of Dawn",
              overlord: [#imageLiteral(resourceName: "BaratheonSigil")]),
        House(name: "House Tully\nof\nRiverrun", sigil: #imageLiteral(resourceName: "TullySigil"), words: "\nThe Words:\n\n\"Family, Duty, Honor\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "BaratheonOfKL"), #imageLiteral(resourceName: "BaelishSigil2")]),
        House(name: "House Tyrell\nof\nHighgarden", sigil: #imageLiteral(resourceName: "TyrellSigil"), words: "\nThe Words:\n\n\"Growing Strong\"", founded: "Age of Heroes",
              overlord: [#imageLiteral(resourceName: "TargaryenSigil"), #imageLiteral(resourceName: "TyrellSigil")]),
        House(name: "House Velaryon\nof\nDriftmark", sigil: #imageLiteral(resourceName: "VelaryonSigil"), words: "\nThe Words:\n\n\"The Old, the True, the Brave\"", founded: "Prior to 114 BC",
              overlord: [#imageLiteral(resourceName: "BaratheonSigil"), #imageLiteral(resourceName: "BaratheonStannisSigil")]),
        House(name: "House Westerling\nof\nthe Crag", sigil: #imageLiteral(resourceName: "WesterlingSigil3"), words: "\nThe Words:\n\n\"Honor, not Honors\"", founded: "Descend from First Men",
              overlord: [#imageLiteral(resourceName: "LannisterSigil")]),
        House(name: "House Whitehill\nof\nHighpoint", sigil: #imageLiteral(resourceName: "WhiteHillSigil"), words: "\nThe Words:\n\n\"Ever Higher\"", founded: "Unknown",
              overlord: [#imageLiteral(resourceName: "StarkSigil"), #imageLiteral(resourceName: "BoltonSigil"), #imageLiteral(resourceName: "StarkSigil")])
        ]
    
    var searchController : UISearchController!
    var searchResults : [House] = []
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //Adding a searchController and searchBar to the app
        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchBar.sizeToFit()
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.tableView.tableHeaderView = self.searchController.searchBar
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
        if searchController.isActive{
            return searchResults.count
        }
        else{
            return WesterosHouses.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "HouseNamesCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTableViewCell
        
        var cellItem : House
        if searchController.isActive{
            cellItem = searchResults[indexPath.row]
        }
        else{
            cellItem = WesterosHouses[indexPath.row]
        }
        
        // Configure the cell...
        cell.cellText?.text = cellItem.name
        cell.cellImage?.image = cellItem.sigil
        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedText = HouseNames[indexPath.row]
        let houseNameAlert = UIAlertController(title: selectedText, message: nil, preferredStyle: UIAlertControllerStyle.alert)
        houseNameAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(houseNameAlert, animated: true, completion: nil)
    }
 */

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        if searchController.isActive{
            return false
        }
        else{
            return true
        }
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            WesterosHouses.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowHouseDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! MyDetailViewController
    
                detailVC.HouseDetail = searchController.isActive ? searchResults[indexPath.row] : WesterosHouses[indexPath.row]
            
                //display only back arrow image without text in segue view
                self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
            }
        }
    }
    
        func filterContentForSearchText(searchText: String){
            searchResults = WesterosHouses.filter({ (ToDoItem: House) -> Bool in
            let nameMatch = ToDoItem.name.range(of: searchText, options: String.CompareOptions.caseInsensitive)
            return nameMatch != nil
        })
    }
    func updateSearchResults(for searchController: UISearchController){
        if let textToSearch = searchController.searchBar.text {
            filterContentForSearchText(searchText: textToSearch)
            tableView.reloadData()
        }
    }

}
