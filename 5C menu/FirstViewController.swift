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
        let cafe1 = URL(string: "https://www.pomona.edu/administration/dining/menus/frank")
        let cafe2 = URL(string: "https://www.pomona.edu/administration/dining/menus/frary")
        let cafe3 = URL(string: "https://www.pomona.edu/administration/dining/menus/oldenborg")
        let cafe4 = URL(string: "http://collins-cmc.cafebonappetit.com")
        let cafe5 = URL(string: "http://pitzer.cafebonappetit.com")
        let cafe6 = URL(string: "https://hmc.sodexomyway.com/dining-choices/index.html")
        
    }
}
