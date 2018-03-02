import UIKit

class UpdateProfileNameViewController: UIViewController {
  let textCountLabel = UILabel()
  let nameTextField = UITextField()
  let submitButton = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .groupTableViewBackground

    view.addSubview(textCountLabel)
    textCountLabel.translatesAutoresizingMaskIntoConstraints = false
    textCountLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 50).isActive = true
    textCountLabel.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor).isActive = true
    textCountLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    textCountLabel.text = "0 / 20"
    textCountLabel.textColor = .gray

    view.addSubview(nameTextField)
    nameTextField.translatesAutoresizingMaskIntoConstraints = false
    nameTextField.topAnchor.constraint(equalTo: textCountLabel.bottomAnchor, constant: 8).isActive = true
    nameTextField.leftAnchor.constraint(equalTo: view.layoutMarginsGuide.leftAnchor).isActive = true
    nameTextField.rightAnchor.constraint(equalTo: view.layoutMarginsGuide.rightAnchor).isActive = true
    nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
    nameTextField.backgroundColor = .white
    nameTextField.addTarget(self, action: #selector(nameTextFieldDidChange), for: .editingChanged)
    nameTextField.delegate = self

    view.addSubview(submitButton)
    submitButton.translatesAutoresizingMaskIntoConstraints = false
    submitButton.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 8).isActive = true
    submitButton.centerXAnchor.constraint(equalTo: nameTextField.centerXAnchor).isActive = true
    submitButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    submitButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
    submitButton.backgroundColor = UIColor(red: 0.11, green: 0.72, blue: 0.12, alpha: 1.0)
    submitButton.setTitleColor(.white, for: .normal)
    submitButton.setTitle("儲存", for: .normal)
    submitButton.addTarget(self, action: #selector(didSubmit), for: .touchUpInside)
  }

  @objc func nameTextFieldDidChange() {
    textCountLabel.text = "\(nameTextField.text?.count ?? 0) / 20"
  }

  @objc func didSubmit() {
    if let name = nameTextField.text {
      UserDefaults.standard.set(name, forKey: "username")
      navigationController?.popViewController(animated: true)
    }
  }
}

extension UpdateProfileNameViewController: UITextFieldDelegate {
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    if (textField.text?.count ?? 0) + string.count <= 20 {
      return true
    }

    return false
  }
}
