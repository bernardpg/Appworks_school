
import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var loadingView: UIActivityIndicatorView!
    @IBOutlet weak var stationIDLabel: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.callApi()
    }
    
    func callApi(){
        self.loadingView.isHidden = false
        AF.request("https://stations-98a59.firebaseio.com/practice.json").responseJSON{(response) in
            
            self.loadingView.isHidden = true
            switch response.result{
            case .success(_):
                
                do{
                    let json:JSON = try JSON(data: response.data!)
                    self.stationIDLabel.text = json["stationID"].rawString()
                    self.stationNameLabel.text = json["stationName"].rawString()
                    self.addressLabel.text = json["stationAddress"].rawString()
                }catch{
                    
                }
                break
            case .failure(_):
                break
            }
        }
    }

}

