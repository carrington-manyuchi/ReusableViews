//
//  AdsProductsView.swift
//  ReusableViews
//
//  Created by Manyuchi, Carrington C on 2024/09/01.
//

import UIKit

class AdsProductsView: UIView {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var exclusiveLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


extension UIView {
    
    func loadViewFromNib(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}
