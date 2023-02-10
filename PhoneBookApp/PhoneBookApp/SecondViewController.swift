//
//  SecondViewController.swift
//  PhoneBookApp
//
//  Created by Tikhon Bazar on 10.02.23.
//

import UIKit

class SecondViewController: UIViewController {
    var names : [String] = ["Mather"]
    @IBOutlet var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Favorite contacts"
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
extension SecondViewController : UITableViewDelegate{
    
}
extension SecondViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
