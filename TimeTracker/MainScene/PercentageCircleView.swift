//
//  PercentageCircleView.swift
//  TimeTracker
//
//  Created by Hoang Tung on 2/21/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class PercentageCircleView: UIView {

  var percentage: Float?

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = .white
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    draw()
    displayPercentage(percentage: percentage ?? 0)
  }

  func draw() {
    let path = UIBezierPath(
      roundedRect: CGRect(x: 2.5, y: 2.5, width: self.bounds.width - 5, height: self.bounds.height - 5),
      cornerRadius: (self.bounds.width - 5) / 2)
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.lineWidth = 5
    shapeLayer.strokeColor = hexStringToUIColor(hex: "E5ECF3").cgColor
    shapeLayer.fillColor = UIColor.white.cgColor
    self.layer.addSublayer(shapeLayer)
  }

  func displayPercentage(percentage: Float) {
    let startPoint = -CGFloat(Float.pi / 2)
    let endPoint = -CGFloat(Float.pi / 2) + CGFloat(Float.pi * 2 * percentage)
    let path = UIBezierPath(arcCenter: CGPoint(x: self.bounds.width / 2, y: self.bounds.height / 2), radius: (self.bounds.width - 5) / 2, startAngle: startPoint, endAngle: endPoint, clockwise: true)
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.lineWidth = 5
    shapeLayer.strokeColor = hexStringToUIColor(hex: "AAEAD6").cgColor
    shapeLayer.fillColor = UIColor.clear.cgColor
    self.layer.addSublayer(shapeLayer)
  }
}
