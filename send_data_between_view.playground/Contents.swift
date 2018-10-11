//C1. Truyền qua biến -  dùng ở các cách bật như navigation hoặc story board từ view1 sang view2
let view2 = View2()
view2.a = "" //truyền data
present(view2,true) //show view

//C2. Qua segue từ view1 sang view2
//overrice method prepare sau khi performSegue(withIdentifier: "abc", sender: nil)
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let view = segue.destination as! ViewController
    view.name = "..." //chuyền dữ liệu
}

//C3. qua properties và func truyền từ view2 sang view1
//trong view 2 khai báo đổi tượng view1
var view1: View1!
// khi view1 start view 2 thì gán biến view1 đó:
//sử dụng 2 cách trên
view2.view1 = self
//khi nào muốn truyền thì chỉ cần view1.ten_var_or_func

//C4. dùng callback delegate
//đã viết 1 bài riêng

//C5. Closure
//không khác gì nhiều so vs 2 cách trên cùng

//C6. dùng NotificationCenter
//bắt 1 tin nhắn đi với nhãn: send_data
NotificationCenter.default.post(name: "send_data", object: nil, userInfo:["data": 123, "isImportant": true])
//lắng nghe tin nhắn với nhãn: send_data
NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: "send_data", object: nil)
//nếu có tin nhắn sẽ chạy vào hàm (@objc)
@objc func onNotification(notification: Notification){
    txt.text = String(notification.userInfo?["data"] as! Int)
}

