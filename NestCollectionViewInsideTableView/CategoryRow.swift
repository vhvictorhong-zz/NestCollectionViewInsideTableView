//
//  CategoryRow.swift
//  NestCollectionViewInsideTableView
//
//  Created by Victor Hong on 7/25/16.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

import UIKit

class CategoryRow: UITableViewCell {
    
}

// Mark: Set-up the CollectionView

extension CategoryRow: UICollectionViewDataSource {
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("videoCell", forIndexPath: indexPath) as! CategoryRowCollectionViewCell
        configreCell(cell, atIndexPath: indexPath)
        return cell
    }
    
    func configreCell(cell: CategoryRowCollectionViewCell, atIndexPath indexPath: NSIndexPath) {
        cell.cellLabel.text = "\(indexPath.row)"
    }
}

// Mark: Create the CollectionView flow layout

extension CategoryRow: UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let itemsPerRow: CGFloat = 4
        let hardCodedPadding: CGFloat = 5
        let itemWidth = (collectionView.bounds.width/itemsPerRow) - hardCodedPadding
        let itemHeight = collectionView.bounds.height - (2 * hardCodedPadding)
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
}

