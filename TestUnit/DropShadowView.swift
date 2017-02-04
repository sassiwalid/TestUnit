//
//  DropShadowView.swift
//  TestUnit
//
//  Created by Walid Sassi on 29/01/2017.
//  Copyright © 2017 Walid Sassi. All rights reserved.
//

import UIKit
@IBDesignable
class DropShadowView: UIView {
  @IBInspectable var shadowOffset :CGSize = CGSize(width: 0, height: 0)
  @IBInspectable var shadowOpacity:Float = 0.0
   // ovveride some methods
  override func awakeFromNib() {
    super.awakeFromNib()
    setup()
  }
  override func prepareForInterfaceBuilder() {
    super.prepareForInterfaceBuilder()
    setup()
  }
  override func draw(_ rect: CGRect) {
    super.draw(rect)
    setup()
  }
  func setup(){
    layer.shadowOffset = shadowOffset
    layer.shadowOpacity = shadowOpacity
  }
}
