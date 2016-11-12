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
    
    func getCurrentDate() {
        //  Get the current date of the user and return it to be used for the parsing data
        let c = NSDateComponents()
        _ = c.year
        _ = c.month
        _ = c.day
        
        let gregorian = NSCalendar(identifier:NSCalendar.Identifier.gregorian)
        let date = gregorian!.date(from: c as DateComponents)
        
        print(date!)
        
        //return date
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
