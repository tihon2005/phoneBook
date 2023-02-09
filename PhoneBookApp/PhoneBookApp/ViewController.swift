//
//  ViewController.swift
//  PhoneBookApp
//
//  Created by Tikhon Bazar on 9.02.23.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let items = self.tabBar.items else {return}
        let images = ["phone","book","star"]
        for x in 0...2{
            items[x].image = UIImage(systemName: images[x])
            items[x].title = ""
        }
    }


}

