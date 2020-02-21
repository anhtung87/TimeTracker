//
//  MainViewController.swift
//  TimeTracker
//
//  Created by Hoang Tung on 2/21/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  let quarterCircleView: QuarterCircleView = {
    let view = QuarterCircleView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Hoàng Anh Tùng"
    label.textColor = .white
    label.font = .boldSystemFont(ofSize: 16)
    return label
  }()
  
  let departmentLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "Trung tâm Quản Lý Dữ Liệu"
    label.textColor = .white
    label.font = .systemFont(ofSize: 16)
    return label
  }()
  
  let avatarImageView: CircleImageView = {
    let image = CircleImageView(frame: .zero)
    image.translatesAutoresizingMaskIntoConstraints = false
    image.image = UIImage(named: "avatar")
    return image
  }()
  
  let reviewCollectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.register(ReviewCollectionViewCell.self, forCellWithReuseIdentifier: "ReviewCell")
    collectionView.isScrollEnabled = false
    collectionView.backgroundColor = .white
    collectionView.layer.cornerRadius = 8
    collectionView.layer.shadowOffset = CGSize(width: 0, height: 10)
    collectionView.layer.shadowRadius = 10
    collectionView.layer.shadowColor = hexStringToUIColor(hex: "87BDFD").cgColor
    collectionView.layer.shadowOpacity = 0.25
    collectionView.layer.masksToBounds = false
    return collectionView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupNavigation()
    setupView()
    setupLayout()
    setupReviewCollectionView()
    
  }
  
  func setupNavigation() {
    navigationItem.leftBarButtonItem = UIBarButtonItem()
  }
  
  func setupView() {
    view.addSubview(quarterCircleView)
    view.addSubview(nameLabel)
    view.addSubview(departmentLabel)
    view.addSubview(avatarImageView)
    view.addSubview(reviewCollectionView)
  }
  
  func setupLayout() {
    quarterCircleView.topAnchor.constraint(equalTo: view.topAnchor, constant: -90).isActive = true
    quarterCircleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: -90).isActive = true
    quarterCircleView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
    quarterCircleView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
    
    nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 64).isActive = true
    nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32).isActive = true
    nameLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    nameLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
    
    departmentLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12).isActive = true
    departmentLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor).isActive = true
    departmentLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 0).isActive = true
    departmentLabel.heightAnchor.constraint(equalToConstant: 14).isActive = true
    
    avatarImageView.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor, constant: 16).isActive = true
    avatarImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32).isActive = true
    avatarImageView.widthAnchor.constraint(equalToConstant: 64).isActive = true
    avatarImageView.heightAnchor.constraint(equalToConstant: 64).isActive = true
    
    reviewCollectionView.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 32).isActive = true
    reviewCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
    reviewCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    reviewCollectionView.heightAnchor.constraint(equalTo: reviewCollectionView.widthAnchor, multiplier: 0.585).isActive = true
  }
  
  func setupReviewCollectionView() {
    reviewCollectionView.delegate = self
    reviewCollectionView.dataSource = self
  }
}

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewCell", for: indexPath) as! ReviewCollectionViewCell
    cell.percentageView.percentage = 0.75
    return cell
  }
  
  // hàm trả về kích thước của Item
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = (collectionView.frame.size.width - 1) / 2
    let height = (collectionView.frame.size.height - 1) / 2
    return CGSize(width: width, height: height)
  }
  
  // hàm trả về khoảng cách giữa hai hàng
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
  
  // hàm trả về khoảng cách giữa 2 item (tương tự 2 cột)
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 0
  }
}
