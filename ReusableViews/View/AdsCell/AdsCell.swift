//
//  AdInventoryCardCollectionViewCell.swift
//  ReusableViews
//
//  Created by Manyuchi, Carrington C on 2024/09/01.
//

import UIKit

class AdInventoryCardCollectionViewCell: UICollectionViewCell {
    
     @IBOutlet weak private var adsInventoryMainCardView: UIView!
     @IBOutlet  weak private var adsInventoryProductDescriptionLabel: UILabel?
     @IBOutlet weak private var adsInventoryImageView: UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    private func configureView() {
        adsInventoryMainCardView.layer.cornerRadius = 12
        adsInventoryMainCardView.clipsToBounds = true
    }

}
