//
//  CollectionViewController.swift
//  NativeAdvancedExample
//
//  Created by Vincent Douant on 01/02/2021.
//  Copyright © 2021 Google. All rights reserved.
//

import UIKit
import GoogleMobileAds

class CollectionViewController : UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let adloader: [AdHolder] = (0..<500).map({ _ in AdHolder() })

    var adIndex = 0
    var dummyCellIndex = 0

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        adloader.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row % 10 == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell",
                                                          for: indexPath) as! CollectionViewCell
            cell.contentView.backgroundColor = .red
            let loader = adloader[indexPath.row]
            loader.rootViewController = self
            cell.configure(loader)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewDummyCell",
                                                        for: indexPath) as! CollectionViewDummyCell
            cell.contentView.backgroundColor = .lightGray
            return cell
        }
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.bounds.width, height: 300)
    }
}
