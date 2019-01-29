//
//  PostTableViewCell.swift
//  Product Hunt API
//
//  Created by Ryan Nguyen on 1/29/19.
//  Copyright © 2019 Danh Phu Nguyen. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var voteLabel: UILabel!
    @IBOutlet weak var taglineLabel: UILabel!
    
    @IBOutlet weak var productView: UIImageView!
    
    var post: Post? {
        didSet {
            guard let post = post else { return }
            nameLabel.text = post.name
            taglineLabel.text = post.tagline
            commentLabel.text = "Comments: \(post.commentsCount)"
            voteLabel.text = "Votes: \(post.votesCount)"
        }
    }
    
    func updatePreviewImage() {
        productView.image = UIImage(named: "placeholder")
    }
}
