import UIKit

class ProfileViewController: UIViewController {
  lazy var tableView: UITableView = {
    let tableView = UITableView(frame: .zero, style: .grouped)
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(LineTableViewCell.self, forCellReuseIdentifier: "CELL")
    return tableView
  }()

  var settingSections = [
    SettingSection(cells: [
      SettingCell(title: "自動投稿變更後的個人圖片", secondaryTitle: nil, nextViewController: nil, hasSwitch: true)
    ]),
    SettingSection(cells: [
      SettingCell(title: "姓名", secondaryTitle: "shavenking", nextViewController: UpdateProfileNameViewController(), hasSwitch:  false)
    ]),
    SettingSection(cells: [
      SettingCell(title: "狀態消息", secondaryTitle: nil, nextViewController: nil, hasSwitch:  false)
    ]),
    SettingSection(cells: [
      SettingCell(title: "ID", secondaryTitle: "shavenking", nextViewController: nil, hasSwitch:  false),
      SettingCell(title: "允許利用 ID 加入好友", secondaryTitle: nil, nextViewController: nil, hasSwitch: true),
      SettingCell(title: "顯示行動條碼", secondaryTitle: nil, nextViewController: nil, hasSwitch:  false)
    ])
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    tableView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    tableView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    tableView.reloadData()
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    settingSections[1].cells[0].secondaryTitle = UserDefaults.standard.object(forKey: "username") as? String
    tableView.reloadSections(IndexSet(integer: 1), with: .automatic)
  }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
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
    cell.displaySwitch = settingSections[indexPath.section].cells[indexPath.row].hasSwitch
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
