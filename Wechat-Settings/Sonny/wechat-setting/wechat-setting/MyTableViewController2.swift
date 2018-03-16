
import UIKit

class MyTableViewController2: UITableViewController {
    
    
    @IBOutlet weak var vc2NameLebel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("VC2 : viewWillAppear")
        vc2NameLebel.text = UserDefaults.standard.object(forKey: "name") as! String

    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
