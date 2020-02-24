//
//  NewJobViewController.swift
//  TimeTracker
//
//  Created by Hoang Tung on 2/24/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class NewJobViewController: UIViewController {
  
  let titleNavigationLabel: UILabel = {
    let label = UILabel()
    label.text = "Thời gian làm việc"
    label.font = .boldSystemFont(ofSize: 16)
    label.textColor = .white
    label.textAlignment = .center
    return label
  }()
  
  let sceneScrollView: UIScrollView = {
    let scrollView = UIScrollView()
    scrollView.translatesAutoresizingMaskIntoConstraints = false
    scrollView.backgroundColor = hexStringToUIColor(hex: "F6F9F9")
    scrollView.contentSize = CGSize(width: UIScreen.main.bounds.maxX, height: UIScreen.main.bounds.maxY * 2)
    return scrollView
  }()
  
  let sceneView: UIView = {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = hexStringToUIColor(hex: "F6F9F9")
    return view
  }()
  
  let dateTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  let startTimeLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Thời gian bắt đầu"
    label.textColor = hexStringToUIColor(hex: "303D3C")
    label.font = .systemFont(ofSize: 16)
    return label
  }()
  
  let startTimeTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  let endTimeLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Thời gian kết thúc"
    label.textColor = hexStringToUIColor(hex: "303D3C")
    label.font = .systemFont(ofSize: 16)
    return label
  }()
  
  let endTimeTextField: UITextField = {
    let textField = UITextField()
    textField.translatesAutoresizingMaskIntoConstraints = false
    return textField
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = hexStringToUIColor(hex: "F6F9F9")
    setupNavigation()
    setupView()
    setupLayout()
  }
  
  func setupNavigation() {
    navigationController?.navigationBar.barTintColor = hexStringToUIColor(hex: "66A8FB")
    navigationItem.titleView = titleNavigationLabel
  }
  
  func setupView() {
    view.addSubview(sceneScrollView)
    sceneScrollView.addSubview(sceneView)
    sceneView.addSubview(dateTextField)
    sceneView.addSubview(startTimeLabel)
    sceneView.addSubview(startTimeTextField)
    sceneView.addSubview(endTimeLabel)
    sceneView.addSubview(endTimeTextField)
  }
  
  func setupLayout() {
    sceneScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
    sceneScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    sceneScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
    sceneScrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    
    sceneView.topAnchor.constraint(equalTo: sceneScrollView.topAnchor, constant: 0).isActive = true
    sceneView.leadingAnchor.constraint(equalTo: sceneScrollView.leadingAnchor, constant: 0).isActive = true
    sceneView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxX).isActive = true
    sceneView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.maxY).isActive = true
    
    dateTextField.topAnchor.constraint(equalTo: sceneView.topAnchor, constant: 24).isActive = true
    dateTextField.centerXAnchor.constraint(equalTo: sceneView.centerXAnchor, constant: 0).isActive = true
    dateTextField.widthAnchor.constraint(equalTo: sceneView.widthAnchor, multiplier: 0.75).isActive = true
    dateTextField.heightAnchor.constraint(equalToConstant: 36).isActive = true
    
    startTimeLabel.topAnchor.constraint(equalTo: dateTextField.bottomAnchor, constant: 32).isActive = true
    startTimeLabel.leadingAnchor.constraint(equalTo: dateTextField.leadingAnchor, constant: 0).isActive = true
    startTimeLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    startTimeLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    
    startTimeTextField.topAnchor.constraint(equalTo: startTimeLabel.bottomAnchor, constant: 8).isActive = true
    startTimeTextField.leadingAnchor.constraint(equalTo: dateTextField.leadingAnchor, constant: 0).isActive = true
    startTimeTextField.trailingAnchor.constraint(equalTo: dateTextField.trailingAnchor, constant: 0).isActive = true
    startTimeTextField.heightAnchor.constraint(equalTo: dateTextField.heightAnchor, multiplier: 1).isActive = true
    
    endTimeLabel.topAnchor.constraint(equalTo: startTimeTextField.bottomAnchor, constant: 32).isActive = true
    endTimeLabel.leadingAnchor.constraint(equalTo: dateTextField.leadingAnchor, constant: 0).isActive = true
    endTimeLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    endTimeLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    
    endTimeTextField.topAnchor.constraint(equalTo: endTimeLabel.bottomAnchor, constant: 8).isActive = true
    endTimeTextField.leadingAnchor.constraint(equalTo: dateTextField.leadingAnchor, constant: 0).isActive = true
    endTimeTextField.trailingAnchor.constraint(equalTo: dateTextField.trailingAnchor, constant: 0).isActive = true
    endTimeTextField.heightAnchor.constraint(equalTo: dateTextField.heightAnchor, multiplier: 1).isActive = true
  }
}
