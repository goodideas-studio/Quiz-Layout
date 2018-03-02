import UIKit

class LineTableViewCell: UITableViewCell {
  var icon: UIImage? {
    didSet {
      if let icon = self.icon {
        iconImageView.image = icon
        iconImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
      } else {
        iconImageView.widthAnchor.constraint(equalToConstant: 0).isActive = true
      }
    }
  }
  let iconImageView = UIImageView()

  var title: String? {
    didSet {
      titleLabel.text = title
    }
  }
  let titleLabel = UILabel()

  var secondaryTitle: String? {
    didSet {
      secondaryTitleLabel.text = secondaryTitle
    }
  }
  var secondaryTitleLabel = UILabel()

  var displayRightAngle = true {
    didSet {
      if displayRightAngle {
        rightTriangleImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
      } else {
        rightTriangleImageView.widthAnchor.constraint(equalToConstant: 0).isActive = true
      }
    }
  }
  var rightTriangleImageView = UIImageView(image: UIImage(named: "chevron-right"))

  var displaySwitch = false {
    didSet {
      if displaySwitch {
        switchView.isHidden = false
        switchView.widthAnchor.constraint(equalToConstant: 50).isActive = true
      } else {
        switchView.isHidden = true
        switchView.widthAnchor.constraint(equalToConstant: 0).isActive = true
      }
    }
  }
  var switchView = UISwitch()

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    contentView.addSubview(iconImageView)
    contentView.addSubview(rightTriangleImageView)
    contentView.addSubview(titleLabel)
    contentView.addSubview(secondaryTitleLabel)
    contentView.addSubview(switchView)

    iconImageView.translatesAutoresizingMaskIntoConstraints = false
    iconImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 8).isActive = true
    iconImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
    iconImageView.widthAnchor.constraint(equalToConstant: 0).isActive = true

    rightTriangleImageView.translatesAutoresizingMaskIntoConstraints = false
    rightTriangleImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8).isActive = true
    rightTriangleImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
    rightTriangleImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
    rightTriangleImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    rightTriangleImageView.alpha = 0.5

    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 8).isActive = true
    titleLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true

    secondaryTitleLabel.textColor = .gray
    secondaryTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    secondaryTitleLabel.rightAnchor.constraint(equalTo: rightTriangleImageView.leftAnchor, constant: -8).isActive = true
    secondaryTitleLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
    secondaryTitleLabel.leftAnchor.constraint(equalTo: titleLabel.rightAnchor).isActive = true
    secondaryTitleLabel.setContentHuggingPriority(.required, for: .horizontal)

    switchView.translatesAutoresizingMaskIntoConstraints = false
    switchView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -8).isActive = true
    switchView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    switchView.isHidden = true
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
}
