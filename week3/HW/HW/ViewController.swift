//
//  ViewController.swift
//  HW

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var accTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkTabel: UILabel!
    
    let accountValue:String = "appworks_school@gmail.com"
    let passwordValue:String = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initSegmentControl()
    }
    
    func initSegmentControl(){
        self.segmentControl.backgroundColor = .white
        self.segmentControl.layer.borderColor = UIColor.black.cgColor
        self.segmentControl.selectedSegmentTintColor = .black
        self.segmentControl.layer.borderWidth = 1
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: .normal)
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        self.clearTextField()
        if sender.selectedSegmentIndex == 0 {
            self.checkTabel.isEnabled = false
            self.checkTextField.isEnabled = false
            self.checkTextField.backgroundColor = .lightGray
        }else{
            self.checkTabel.isEnabled = true
            self.checkTextField.isEnabled = true
            self.checkTextField.backgroundColor = .white
        }
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        if self.segmentControl.selectedSegmentIndex == 0{
            self.checkLogInFuction()
        }else{
            self.checkSignUpFunction()
        }
    }
    
    private func checkLogInFuction(){
        if let account = self.accTextField.text, let password = self.pwdTextField.text{
            if account.isEmpty{
                self.showErrorAlret(message: "Account should not be empty.")
                return
            }
            if password.isEmpty {
                self.showErrorAlret(message: "Password should not be empty.")
                return
            }
            if account != self.accountValue || password != self.passwordValue{
                self.showErrorAlret(message: "Login fail.")
            }else{
                self.showSuccessAlret(message: "Login success")
            }
        }
    }
    
    private func checkSignUpFunction(){
        if let account = self.accTextField.text, let password = self.pwdTextField.text, let check = self.checkTextField.text{
            if account.isEmpty{
                self.showErrorAlret(message: "Account should not be empty.")
                return
            }
            if password.isEmpty {
                self.showErrorAlret(message: "Password should not be empty.")
                return
            }
            if check.isEmpty {
                self.showErrorAlret(message: "Check Password should not be empty.")
                return
            }
            if password != check{
                self.showErrorAlret(message: "Signup fail.")
            }else{
                self.showSuccessAlret(message: "Signup success")
            }
        }
    }
    
    func showErrorAlret(message:String){
        let controller = UIAlertController(title: "Error", message: "\(message)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            
        }
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    
    func showSuccessAlret(message:String){
        let controller = UIAlertController(title: "Success", message: "\(message)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.clearTextField()
        }
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    
    private func clearTextField(){
        self.accTextField.text = nil
        self.pwdTextField.text = nil
        self.checkTextField.text = nil
    }
}

