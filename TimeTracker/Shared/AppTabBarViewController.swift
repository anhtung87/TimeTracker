//
//  AppTabBarViewController.swift
//  TimeTracker
//
//  Created by Hoang Tung on 2/22/20.
//  Copyright © 2020 Hoang Tung. All rights reserved.
//

import UIKit

class AppTabBarViewController: UITabBarController {
  
  var homeVC: HomeViewController!
  var chartWeekVC: ChartWeekViewController!
  var pieChartVC: PieChartViewController!
  var settingVC: SettingViewController!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    setupVC()
    setupNavigation()
  }
  
  func setupVC() {
    homeVC = HomeViewController()
    chartWeekVC = ChartWeekViewController()
    pieChartVC = PieChartViewController()
    settingVC = SettingViewController()
    
    homeVC.tabBarItem.image = UIImage(named: "home")
    homeVC.tabBarItem.selectedImage = UIImage(named: "selected-home")
    chartWeekVC.tabBarItem.image = UIImage(named: "chart")
    chartWeekVC.tabBarItem.selectedImage = UIImage(named: "selected-chart")
    pieChartVC.tabBarItem.image = UIImage(named: "piechart")
    pieChartVC.tabBarItem.selectedImage = UIImage(named: "selected-piechart")
    settingVC.tabBarItem.image = UIImage(named: "setting")
    settingVC.tabBarItem.selectedImage = UIImage(named: "selected-setting")
    
    viewControllers = [homeVC, chartWeekVC, pieChartVC, settingVC]
  }
  
  func setupNavigation() {
    navigationItem.leftBarButtonItem = UIBarButtonItem()
  }
  
}
