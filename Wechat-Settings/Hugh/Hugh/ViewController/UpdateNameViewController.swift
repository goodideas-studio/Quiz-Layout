import UIKit

class UpdateNameViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "設定名字"

        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "取消", style: .done, target: self, action: #selector(didTouchCancelButton))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "完成", style: .done, target: self, action: #selector(didTouchFinishButton))

        textField.addTarget(self, action: #selector(textFieldEditingChanged), for: .editingChanged)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        textField.text = UserDefaults.standard.string(forKey: "name")
        navigationItem.rightBarButtonItem?.isEnabled = !(textField.text ?? "").isEmpty
    }

    @objc func didTouchFinishButton() {
        UserDefaults.standard.set(textField.text, forKey: "name")

        dismiss(animated: true)
    }

    @objc func didTouchCancelButton() {
        dismiss(animated: true)
    }

    @objc func textFieldEditingChanged() {
        navigationItem.rightBarButtonItem?.isEnabled = !(textField.text ?? "").isEmpty
    }
}
