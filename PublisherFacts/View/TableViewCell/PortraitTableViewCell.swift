//
//  PortraitTableViewCell.swift
//  PublisherFacts
//
//  Created by Nischal Hada on 5/25/18.
//  Copyright © 2018 NischalHada. All rights reserved.
//

import UIKit

class PortraitTableViewCell: UITableViewCell {
    @IBOutlet var bannerImage: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    var feedsValue: ListModel? {
        didSet {
            guard let feeds = feedsValue else {
                return
            }
            descriptionLabel?.text = feeds.description
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.bannerImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.bannerImage.clipsToBounds = true
    }
}
