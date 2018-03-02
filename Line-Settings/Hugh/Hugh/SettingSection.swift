import UIKit

struct SettingSection {
  var headerTitle: String?
  var footerTitle: String?
  var cells: [SettingCell]

  init(cells: [SettingCell]) {
    self.cells = cells
  }
}

struct SettingCell {
  var title: String
  var secondaryTitle: String?
  var nextViewController: UIViewController?
  var hasSwitch: Bool
}
