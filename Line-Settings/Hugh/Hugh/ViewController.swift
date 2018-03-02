import UIKit

struct SettingCell {
  var title: String
  var secondaryTitle: String?
}

class ViewController: UIViewController {
  lazy var tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(LineTableViewCell.self, forCellReuseIdentifier: "CELL")
    return tableView
  }()

  let settingCells = [
    [
      SettingCell(title: "個人資料", secondaryTitle: nil),
      SettingCell(title: "我的帳號", secondaryTitle: nil),
      SettingCell(title: "隱私設定", secondaryTitle: nil),
      SettingCell(title: "移動帳號設定", secondaryTitle: nil),
      SettingCell(title: "Keep", secondaryTitle: nil)
    ],
    [
      SettingCell(title: "貼圖", secondaryTitle: nil),
      SettingCell(title: "主題", secondaryTitle: nil),
      SettingCell(title: "我的錢包", secondaryTitle: nil)
    ],
    [
      SettingCell(title: "提醒", secondaryTitle: "ON"),
      SettingCell(title: "照片、移動", secondaryTitle: nil),
      SettingCell(title: "聊天", secondaryTitle: nil)
    ]
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
    return settingCells.count
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return settingCells[section].count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CELL") as! LineTableViewCell
    cell.title = settingCells[indexPath.section][indexPath.row].title
    cell.secondaryTitle = settingCells[indexPath.section][indexPath.row].secondaryTitle
    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 50
  }
}
