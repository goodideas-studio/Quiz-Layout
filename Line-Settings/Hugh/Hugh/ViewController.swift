import UIKit

class ViewController: UIViewController {
  lazy var tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(LineTableViewCell.self, forCellReuseIdentifier: "CELL")
    return tableView
  }()

  let settingSections = [
    SettingSection(cells: [
      SettingCell(title: "個人資料", secondaryTitle: nil, nextViewController: ProfileViewController()),
      SettingCell(title: "我的帳號", secondaryTitle: nil, nextViewController: nil),
      SettingCell(title: "隱私設定", secondaryTitle: nil, nextViewController: nil),
      SettingCell(title: "移動帳號設定", secondaryTitle: nil, nextViewController: nil),
      SettingCell(title: "Keep", secondaryTitle: nil, nextViewController: nil)
    ]),
    SettingSection(cells: [
      SettingCell(title: "貼圖", secondaryTitle: nil, nextViewController: nil),
      SettingCell(title: "主題", secondaryTitle: nil, nextViewController: nil),
      SettingCell(title: "我的錢包", secondaryTitle: nil, nextViewController: nil)
    ]),
    SettingSection(cells: [
      SettingCell(title: "提醒", secondaryTitle: "ON", nextViewController: nil),
      SettingCell(title: "照片、移動", secondaryTitle: nil, nextViewController: nil),
      SettingCell(title: "聊天", secondaryTitle: nil, nextViewController: nil)
    ])
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    navigationItem.title = "設定"

    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    tableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    tableView.reloadData()
  }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  func numberOfSections(in tableView: UITableView) -> Int {
    return settingSections.count
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return settingSections[section].cells.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! LineTableViewCell
    cell.title = settingSections[indexPath.section].cells[indexPath.row].title
    cell.secondaryTitle = settingSections[indexPath.section].cells[indexPath.row].secondaryTitle
    cell.displayRightAngle = settingSections[indexPath.section].cells[indexPath.row].nextViewController != nil
    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let nextViewController = settingSections[indexPath.section].cells[indexPath.row].nextViewController {
      nextViewController.navigationItem.title = settingSections[indexPath.section].cells[indexPath.row].title
      navigationController?.pushViewController(nextViewController, animated: true)
    }
  }
}
