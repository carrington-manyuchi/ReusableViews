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
    
    let cellID = "AdsCell"
    var products = [ProductDto]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
       // fatalError("init(coder:) has not been implemented")
        commonInit()
    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "AdsProductsView") else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    private func commonInit() {
        guard let view = self.loadViewFromNib(nibName: "AdsProductsView") else {
            return
        }
        view.frame = self.bounds
        self.addSubview(view)
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        setupNibs()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        pageControl.currentPage = 0
        pageControl.numberOfPages = products.count
    }
    
    private func setupNibs() {
        let nibCell = UINib(nibName: cellID, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: cellID)
        
        for _ in 0...2 {
            let product = ProductDto()
            product?.name = "Wireless Headphone"
            product?.desc = "Hear the music, not the noise"
            products.append(product!)
        }
        collectionView.reloadData()
    }
}

extension AdsProductsView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? AdsCell else {
            return UICollectionViewCell()
        }
        let product = products[indexPath.row]
        cell.adsInventoryProductDescriptionLabel?.text = product.name
        cell.adsInventoryImageView?.image = UIImage(named: "con")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageControl.currentPage = indexPath.row
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset: CGFloat = 10
        return UIEdgeInsets(top: inset, left: inset, bottom: inset, right: inset)
    }
}

extension UIView {
    func loadViewFromNib(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}
