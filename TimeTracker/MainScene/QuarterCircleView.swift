//
//  QuarterCircleView.swift
//  TimeTracker
//
//  Created by Hoang Tung on 2/21/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class QuarterCircleView: UIView {

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
    let path = UIBezierPath(arcCenter: CGPoint(x: 0, y: 0), radius: self.bounds.maxX, startAngle: 0, endAngle: CGFloat(Float.pi / 2), clockwise: true)
    path.addLine(to: CGPoint(x: 0, y: 0))
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.fillColor = UIColor.systemTeal.cgColor
    self.layer.addSublayer(shapeLayer)
  }
  
}
