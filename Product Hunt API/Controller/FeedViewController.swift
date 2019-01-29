//
//  ViewController.swift
//  Product Hunt API
//
//  Created by Ryan Nguyen on 1/29/19.
//  Copyright © 2019 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        feedTableView.delegate = self
        feedTableView.dataSource = self
    }


}

// MARK: UITableViewDataSource
extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

// MARK: UITableViewDelegate
extension FeedViewController: UITableViewDelegate {
    // Code
}
