//
//  AdInventoryCardCollectionViewCell.swift
//  ReusableViews
//
//  Created by Manyuchi, Carrington C on 2024/09/01.
//

import UIKit

class AdsCell: UICollectionViewCell {
    
     @IBOutlet weak  var adsInventoryMainCardView: UIView!
     @IBOutlet  weak var adsInventoryProductDescriptionLabel: UILabel?
     @IBOutlet weak  var adsInventoryImageView: UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureView()
    }
    
    private func configureView() {
        adsInventoryMainCardView.layer.cornerRadius = 12
        adsInventoryMainCardView.clipsToBounds = true
    }

}
