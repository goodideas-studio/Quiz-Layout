import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var bananas = [
        BananaCell(title: "大頭貼", avatarImage: UIImage(named: "avatar"), secondaryTitle: nil, username: nil),
        BananaCell(title: "名字", avatarImage: nil, secondaryTitle: "Hugh", username: nil),
        BananaCell(title: "WeChat ID", avatarImage: nil, secondaryTitle: nil, username: "shavenking"),
        BananaCell(title: "我的 QR Code", avatarImage: nil, secondaryTitle: nil, username: nil),
        BananaCell(title: "更多", avatarImage: nil, secondaryTitle: nil, username: nil)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "個人資訊"

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "BananaTableViewCell", bundle: nil), forCellReuseIdentifier: "BananaTableViewCell")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        bananas = bananas.map {
            if $0.title == "名字" {
                return BananaCell(title: $0.title, avatarImage: $0.avatarImage, secondaryTitle: UserDefaults.standard.string(forKey: "name"), username: $0.username)
            }

            return $0
        }

        tableView.reloadData()
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 88
        }

        return 44
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bananas.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BananaTableViewCell") as! BananaTableViewCell

        cell.bananaCell = bananas[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? BananaTableViewCell, let bananaCell = cell.bananaCell, bananaCell.title == "名字" else {
            return
        }

        present(UINavigationController(rootViewController: UpdateNameViewController()), animated: true)
    }
}
