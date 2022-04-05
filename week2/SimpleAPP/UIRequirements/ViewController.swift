//
//  ViewController.swift

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewBackgroud: UIView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    
    let text = [
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
        "Contrary to popular belief, Lorem Ipsum is not simply random text.",
        "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
        "looked up one of the more obscure Latin words, consectetur",
        "from a Lorem Ipsum passage, and going through the cities of the word",
        "This book is a treatise on the theory of ethics, very popular during the.",
        "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    let color = [
        UIColor(red: 0xFF, green: 0x00, blue: 0x00, alpha: 1),
        UIColor(red: 0xFF, green: 0x7F, blue: 0x00, alpha: 1),
        UIColor(red: 0xFF, green: 0xFF, blue: 0x00, alpha: 1),
        UIColor(red: 0x00, green: 0xFF, blue: 0x00, alpha: 1),
        UIColor(red: 0x00, green: 0xFF, blue: 0xFF, alpha: 1),
        UIColor(red: 0x00, green: 0x00, blue: 0xFF, alpha: 1),
        UIColor(red: 0x8B, green: 0x00, blue: 0xFF, alpha: 1)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func buttonAction(_ sender: UIButton) {
        self.viewBackgroud.backgroundColor = color[self.getRandomInt()]
        self.middleLabel.text = text[self.getRandomInt()]
    }
    
    func getRandomInt() -> Int{
        Int.random(in: 0...6)
    }
}

