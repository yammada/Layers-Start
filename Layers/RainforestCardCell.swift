//
//  RainforestCardCell.swift
//  Layers
//
//  Created by René Cacheaux on 9/1/14.
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class RainforestCardCell: UICollectionViewCell {
  var featureImageSizeOptional: CGSize?
  
  override func awakeFromNib() {
    super.awakeFromNib()
    contentView.layer.borderColor = UIColor(hue: 0, saturation: 0, brightness: 0.85, alpha: 0.2).CGColor
    contentView.layer.borderWidth = 1
  }

  //MARK: Layout
  override func sizeThatFits(size: CGSize) -> CGSize {
    if let featureImageSize = featureImageSizeOptional {
      return FrameCalculator.sizeThatFits(size, withImageSize: featureImageSize)
    } else {
      return CGSizeZero
    }
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
  }
  
  //MARK: Cell Reuse
  override func prepareForReuse() {
    super.prepareForReuse()
  }
  
  //MARK: Cell Content
  func configureCellDisplayWithCardInfo(cardInfo: RainforestCardInfo) {
    //MARK: Image Size Section
    let image = UIImage(named: cardInfo.imageName)!
    featureImageSizeOptional = image.size
  }
  
}
