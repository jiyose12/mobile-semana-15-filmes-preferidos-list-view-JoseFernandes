//
//  FilmesTableViewController.swift
//  filmes_preferidos
//
//  Created by IFPB on 20/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    var register: Register!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.register = (UIApplication.shared.delegate as! AppDelegate).register
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        self.addMovie()
    }
    
    func addMovie(){
        self.register.add(movie: Movie(name: "adasda", movieRating: 7, oscar: true, timesWatched: 2))
        self.register.add(movie: Movie(name: "fffff", movieRating: 1, oscar: true, timesWatched: 3))
        self.register.add(movie: Movie(name: "sssss", movieRating: 2, oscar: false, timesWatched: 6))    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.register.count()
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)

        let movieCell = self.register.get(index: indexPath.row)
        
        cell.textLabel?.text = movieCell.name
        cell.detailTextLabel?.text = String(movieCell.movieRating)
        
        return cell
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.register.del(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
   

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        self.register.mov(de: fromIndexPath.row, para: to.row)
    }
   
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let movie = self.register.get(index: indexPath.row)
        let fvc = self.storyboard?.instantiateViewController(identifier: "form") as! FormViewController
        fvc.movieToEdit = indexPath.row
        self.navigationController?.pushViewController(fvc, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
        print(self.register.count())
    }
    
}
