//
//  RootViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 02/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class RootViewController: UITableViewController {

  
 // var myCell: UITableViewCell = RootCell()
  
  @IBOutlet var myTableView: UITableView!
  
  var myCellImg: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    
    return imageView
  }()
  
  var myCellLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.isUserInteractionEnabled = true
    
    return label
  }()
  
  let sectionTitles = ["Section 1", "Section2", "Section 3"]
  
  let dataOne: [String] = ["Personal Info", "Account transfer", "Privacy", "Keep"]
  let dataTwo: [String] = ["Personal Info", "Personal Info", "Personal Info"]
  let dataThree: [String] = ["Personal Info", "Personal Info", "Personal Info"]
  let sectionImages: [UIImage] = [UIImage(named: "man")!, UIImage(named: "account")!, UIImage(named: "acount transfer")!, UIImage(named: "keep")!]
  
  var sectionSets: [Int: [String]] = [:]
  
  override func viewDidLoad() {
        super.viewDidLoad()
    myTableView.delegate = self
    myTableView.dataSource = self
    
    sectionSets = [0: dataOne, 1: dataTwo, 2: dataThree]
    
    //this line gets rid of the extra cells in myTableView
    myTableView.tableFooterView = UIView()
    //myTableView.separatorStyle = .singleLine
  }

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 3
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    //return sectionTitles[section].count
    return (sectionSets[section]?.count)!
  }
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    return sectionTitles[section]
    print(sectionTitles[section])
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var cell: RootCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RootCell
    cell.rootCellImage.image = UIImage(named: "\(sectionImages[indexPath.row])")
     cell.rootCellLabel.text = sectionSets[indexPath.section]![indexPath.row]
    
    //Thread 1: Fatal error: Index out of range
    print(sectionSets[indexPath.section]![indexPath.row])
    
    
    return cell
  }
  
  override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //section header
    let view = UIView()
    view.backgroundColor = UIColor.init(red: 13 / 255, green: 17 / 255, blue: 126 / 255, alpha: 0.45)
    // header icon img
    let image = UIImageView(image: sectionImages[section])
    image.frame = CGRect(x: 5, y: 5, width: 44, height: 44)
    view.addSubview(image)
    
    //header label text
    let label = UILabel()
    label.text = sectionTitles[section]
    label.frame = CGRect(x: 60, y: 5, width: 120, height: 44)
    label.textColor = UIColor.darkGray
    view.addSubview(label)
    
    return view
  }
  
  override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 54  //returns the height for section headers
  }
  override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath == [ 0, 0] {
      self.performSegue(withIdentifier: "goToSecondVC", sender: (Any).self)
    }
  }
//  func presentSecondVC(_ sender: UITableViewCell) {
//   let sender = myTableView.subviews[0].subviews[0]
//    self.performSegue(withIdentifier: "goToSecondVC", sender: sender)
//  }

  
  
  
}
