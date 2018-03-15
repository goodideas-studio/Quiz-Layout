import UIKit

struct BananaCell {
    var title: String
    var avatarImage: UIImage?
    var secondaryTitle: String?
    var username: String?
}

class BananaTableViewCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var secondaryTitleLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!

    var bananaCell: BananaCell? {
        didSet {
            titleLabel.text = bananaCell?.title
            titleLabel.sizeToFit()
            avatarImageView.image = bananaCell?.avatarImage
            secondaryTitleLabel.text = bananaCell?.secondaryTitle
            secondaryTitleLabel.sizeToFit()
            usernameLabel.text = bananaCell?.username
            usernameLabel.sizeToFit()

            if let usernameLabelText = usernameLabel.text, !usernameLabelText.isEmpty {
                accessoryType = .none
            } else {
                accessoryType = .disclosureIndicator
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
