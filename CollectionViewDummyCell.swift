//
//  CollectionViewDummyCell.swift
//  NativeAdvancedExample
//
//  Created by Shanshan Zhao on 22/02/2021.
//  Copyright © 2021 Google. All rights reserved.
//

import UIKit

class CollectionViewDummyCell : UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        self.contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        self.contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        self.contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
