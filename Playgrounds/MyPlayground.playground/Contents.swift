import UIKit

// for  - некое повторяющееся действие,если действие нужно повторить несколько раз

for i in 0...10 {
    print(i)
}
// чаще всего цикл форм используется для прохождения массивов
var a: [Any?]? = [1,2,3,4,5,nil,1.0, true,"hello",1,nil,1.567]
var s = 0.0
for i in (a ?? []) {
    if i is Int {
//если элемент целочисленный  // из значения Any? вытащи Int и разверни его
    s = s + Double(i as! Int)
    }
    if i is Double {
    s = s + (i as! Double)
    }
// s = s + (i ?? 0)
}
print(s)

