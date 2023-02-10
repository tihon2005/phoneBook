//
//  FirstViewController.swift
//  PhoneBookApp
//
//  Created by Tikhon Bazar on 9.02.23.
//

import UIKit

class FirstViewController: UIViewController {
    let names = ["Mather","Brother","Sister","Dad","Granny","Grandad"]
    @IBOutlet var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}
extension FirstViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }
}
extension FirstViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
