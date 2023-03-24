//
//  AlertManager.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/27/23.
//

import UIKit

class AlertManager {
    
    private static func basicAlert(on vc: UIViewController, title: String, message: String?) {
        
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
            vc.present(alert, animated: true)
        }
    }
}
//User Errors
extension AlertManager {
    public static func invalidEmailAlert(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Invalid Email", message: "Please enter a valid email")
    }
    
    public static func invalidPasswordAlert(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Invalid Password", message: "Your password must be 6 letters long and contain at least 1 uppercase letter and lowercase letter, 1 number and a special symbol")
    }

    
    public static func invalidUsernameAlert(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Invalid Username", message: "Please enter a valid username.")
    }
    
    public static func logoutError(on vc: UIViewController, with error: Error) {
        self.basicAlert(on: vc, title: "Log Out Error", message: "\(error.localizedDescription)")
    }
    
    public static func registrationErrorAlert(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Unknown Registration Error", message: nil)
    }
        
    public static func registrationErrorAlert(on vc: UIViewController, with error: Error) {
        self.basicAlert(on: vc, title: "Unknown Registration Error", message: "\(error.localizedDescription)")
    }
    
    public static func passwordResetSent(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Password Reset Sent", message: nil)
    }
    
    public static func errorSendingPasswordReset(on vc: UIViewController, with error: Error) {
        self.basicAlert(on: vc, title: "Error Sending Password Reset", message: "\(error.localizedDescription)")
    }
    public static func fetchingUserError(on vc: UIViewController, with error: Error) {
        self.basicAlert(on: vc, title: "Error Fetching User", message: "\(error.localizedDescription)")
    }
    public static func updatingScoreError(on vc: UIViewController, with error: Error) {
        self.basicAlert(on: vc, title: "Error Updating User", message: "\(error.localizedDescription)")
    }
    
    public static func unknownFetchingUserError(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Unknown Error Fetching User", message: nil)
    }
    
    public static func signInErrorAlert(on vc: UIViewController) {
        self.basicAlert(on: vc, title: "Unknown Error Signing In", message: nil)
    }
    
    public static func signInErrorAlert(on vc: UIViewController, with error: Error) {
        self.basicAlert(on: vc, title: "Error Signing In", message: "\(error.localizedDescription)")
    }
}
