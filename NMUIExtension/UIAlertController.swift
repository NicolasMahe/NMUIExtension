//
//  UIAlertViewController.swift
//  EtherPortfolio
//
//  Created by Nicolas Mahé on 24/10/2016.
//  Copyright © 2016 Nicolas Mahé. All rights reserved.
//

import UIKit

extension UIAlertController {
  
  public class func showAlert(
    title: String?,
    message: String?,
    cancelMessage: String = "OK",
    controller: UIViewController?
  ) {
    let alert = UIAlertController(
      title: title,
      message: message,
      preferredStyle: .alert
    )
    alert.addAction(
      UIAlertAction(
        title: cancelMessage,
        style: .cancel,
        handler: nil
      )
    )
    controller?.present(alert, animated: true, completion: nil)
  }
  
}
