//
//
//constants : hằng
//

//khai báo, khởi tạo:
//let ten_hang: <kiểu dữ liệu> = "giá trị" - kiểu dữ liệu có thể ko ghi - swift tự nhận dạng
let pi: Float = 3.14
let pi2 = 3.14

//
//
//Variables: biến
//

//khai báo:
//var ten_bien: <kiểu dữ liệu>
var ten: String?
//khởi tạo:
//biến rỗng
var ho = String() // khởi tạo biến rỗng
var name = String("viet") //biến có giá trị  = viet

//
//
//Kiểu dữ liệu
//

//TypeAliases - đổi tên kiểu dữ liệu cho phù hợp với ngữ cảnh
typealias kieu_so = Int //kieu_so sẽ giống như kiểu int
var bien: kieu_so  = 666
print(bien)
//Tuples - nhóm các giá trị
let fullname = (fisrtName:"vu hong",lastName:"viet")
print("Họ và tên: "+fullname.fisrtName+" "+fullname.lastName)

//
//
//if and if let
//
var table: String? //table chấp nhận giá trị nil


if table != nil {
    print("table : "+table!)
}
//tương đương với:
if let table1 = table { //kiểm tra table có nil hay ko
    print("table : "+table1)
}

//
//
//Error Handling : bắt lỗi
//

func canThrowAnError() throws{
    //hàm này có thể lỗi
}

do{
    try canThrowAnError()
    // nếu ko lỗi thì chạy vào đây
}catch{
    //nếu hàm trên lỗi thì chạy vào đây
}
        
