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
    
    var mockData: [Post] = {
        var meTube = Post(id: 0, name: "MeTube", tagline: "Stream videos for free!", votesCount: 25, commentsCount: 4)
        var boogle = Post(id: 1, name: "Boogle", tagline: "Search anything!", votesCount: 1000, commentsCount: 50)
        var meTunes = Post(id: 2, name: "meTunes", tagline: "Listen to any song!", votesCount: 25000, commentsCount: 590)
        
        return [meTube, boogle, meTunes]
    }()
    
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
        return mockData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        let post = mockData[indexPath.row]
        cell.post = post
        
        return cell
    }
}

// MARK: UITableViewDelegate
extension FeedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
