//
//  ViewController.swift
//  GuidebookApp
//
//  Created by Michael Shustov on 06.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var tableView: UITableView!
    
    var places = [Place]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Get the places from Core Data
        do {
            
            places = try context.fetch(Place.fetchRequest())
        }
        catch {
            print(error.localizedDescription)
        }
        
        
        // Set the view controller as the data source and delegate of the table view
        tableView.dataSource = self
        tableView.delegate = self
    }


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Get a cell reference
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.PLACE_CELL) as! PlaceTableViewCell
        
        // Get the place
        let p = places[indexPath.row]
        
        // Customize the cell
        cell.setCell(p)
        
        // Return the cell
        return cell
    }
}
