//
//  Comment.swift
//  Product Hunt API
//
//  Created by Ryan Nguyen on 1/31/19.
//  Copyright © 2019 Danh Phu Nguyen. All rights reserved.
//

import Foundation

struct Comment: Decodable {
    let id: Int
    let body: String
}

struct CommentApiResponse: Decodable {
    let comments: [Comment]
}
