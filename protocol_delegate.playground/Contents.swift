import UIKit

protocol setText: class {
    func setTextLb(txt: String)
}

class ViewController: UIViewController, setText {
    @IBOutlet weak var txt: UILabel!
    weak var delegate: setText?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }
    
    class func create() -> ViewController{
        let main = UIStoryboard(name: "Main",bundle: nil)
        return main.instantiateViewController(withIdentifier: String(describing: self)) as! ViewController
    }
    
    @IBAction func create(_ sender: Any) {
        let test = ViewControllerDelegate.create()
        test.delegate = self
        self.present(test,animated: true)
    }
    
    func setTextLb(txt: String) {
        self.txt.text = txt
    }
    
}

class ViewControllerDelegate: UIViewController{
    weak var delegate:setText?
    @IBOutlet weak var lbText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    class func create() -> ViewControllerDelegate {
        let main = UIStoryboard.init(name: "Main", bundle: nil)
        return main.instantiateViewController(withIdentifier: String(describing: self)) as! ViewControllerDelegate
    }
    
    @IBAction func btnBack(_ sender: Any) {
        delegate?.setTextLb(txt: "aaaaaaa")
        self.dismiss(animated: false)
    }
    
}


