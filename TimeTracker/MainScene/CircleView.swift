//
//  CircleView.swift
//  TimeTracker
//
//  Created by Hoang Tung on 2/21/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class CircleView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    draw()
  }
  
  func draw() {
    let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height),
                            cornerRadius: self.bounds.width / 2)
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.fillColor = hexStringToUIColor(hex: "FF9DB6").cgColor
    self.layer.addSublayer(shapeLayer)
    self.layer.masksToBounds = true
  }
}
