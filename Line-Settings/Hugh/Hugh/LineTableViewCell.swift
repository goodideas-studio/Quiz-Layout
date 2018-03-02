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
        rightTriangleImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
      } else {
        rightTriangleImageView.widthAnchor.constraint(equalToConstant: 0).isActive = true
      }
    }
  }
  var rightTriangleImageView = UIImageView(image: UIImage(named: "chevron-right"))

  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

    contentView.addSubview(iconImageView)
    iconImageView.translatesAutoresizingMaskIntoConstraints = false
    iconImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
    iconImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
    iconImageView.widthAnchor.constraint(equalToConstant: 0).isActive = true

    contentView.addSubview(rightTriangleImageView)
    rightTriangleImageView.translatesAutoresizingMaskIntoConstraints = false
    rightTriangleImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    rightTriangleImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
    rightTriangleImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true

    contentView.addSubview(titleLabel)
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor).isActive = true
    titleLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
    titleLabel.rightAnchor.constraint(lessThanOrEqualTo: contentView.rightAnchor).isActive = true

    secondaryTitleLabel.textColor = .gray
    contentView.addSubview(secondaryTitleLabel)
    secondaryTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    secondaryTitleLabel.rightAnchor.constraint(equalTo: rightTriangleImageView.leftAnchor).isActive = true
    secondaryTitleLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
    secondaryTitleLabel.leftAnchor.constraint(equalTo: titleLabel.rightAnchor).isActive = true
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
}
