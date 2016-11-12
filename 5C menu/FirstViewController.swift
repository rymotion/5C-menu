import UIKit
import JavaScriptCore
import WebKit

var date:String = ""

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(getCurrentDate())
        //webDataCall()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getCurrentDate() -> String{
        //  Get the current date of the user and return it to be used for the parsing data
        let date = NSDate()
        let calendar = NSCalendar.current
        let day = calendar.component(.day, from: date as Date)
        let month = calendar.component(.month, from: date as Date)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let nameDay = dateFormatter.string(from: date as Date)
        print(month)
        print(nameDay)
        print(day)
        
        return nameDay
    }
    
    func webDataCall() -> Void {
        if let url = URL(string:"https://aspc.pomona.edu/menu/"){
            do{
                let dataCall = try String(contentsOf: url)
                print(dataCall)
            }catch{
                
            }
        } else{
            
        }
        
    }
}
