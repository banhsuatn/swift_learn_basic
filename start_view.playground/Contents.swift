//StoryBoard
//b1 tạo hàm create()

//b2 bật view -> gọi hàm .present(view,animated)
//b3 tắt view -> gọi hàm . dissmit(animated)

class func create() -> ViewController{
    let main = UIStoryboard(name: "Main",bundle: nil)
    return main.instantiateViewController(withIdentifier: String(describing: self)) as! ViewController
}
    
@IBAction func create(_ sender: Any) {
self.present(ViewController.create(),animated: true)
}

//
//
//Dùng NavigationController

//khỏi tạo NextViewController
let nextViewController = NextViewController()
//gọi hàm
self.navigationController?.pushViewController(nextViewController, animated: true)

//
//
//Dùng segue

//Kéo thả tạo identifier trong StoryBoard
//gọi hàm
performSegue(withIdentifier: "abc", sender: nil)
//overrice để sự lý chi tiết
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let view = segue.destination as! ViewController
    view.name = "..." //chuyền dữ liệu
}

