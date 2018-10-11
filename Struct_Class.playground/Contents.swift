class Dog{
    var name: String!
    var age: Int!
    init(_ name: String,_ age: Int) {
        self.age = age
        self.name = name
    }
    func toString() -> String{
        return name + String(age)
    }
}

struct Cat{
    var name: String!
    var age: Int!
    init(_ name: String,_ age: Int) {
        self.age = age
        self.name = name
    }
    func toString() -> String{
        return name + String(age)
    }
}

var dog1 = Dog("dog",2)
var dog2 = dog1
dog1.name = "change name"
print(dog1.toString())
print(dog2.toString())

//name dog1 = name dog2 Lí do: vì class là kiểu tham chiếu. khi gán dog2 = dog1 thì 2 đối tượng này cũng chỉ đển 1 ô nhớ -> khi thay đổi thì cả 2 cùng thay đổi theo

var cat1 = Cat("cat",2)
var cat2 = cat1
cat1.name = "change name"
print(cat1.toString())
print(cat2.toString())

//Struct ko như vậy. Lí do: vì khi gán cat2 = cat1 thì cat2 sẽ copy dữ liệu từ cat1 sang. -> khác ô nhớ -> thay đổi cat1 mà ko thay đổi cat2
//Struct trong class thì vẫn cùng bộ nhớ.
//Struct ko có kế thừa
