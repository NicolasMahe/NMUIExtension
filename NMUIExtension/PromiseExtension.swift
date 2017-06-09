//
//  PromiseExtension.swift
//  Pods
//
//  Created by Nicolas Mahé on 26/04/2017.
//
//

import UIKit
import PromiseKit

extension UIViewController {
  
  public func dismissPromise(animated flag: Bool) -> Promise<Void> {
    return Promise<Void> { [weak self] (fulfill, reject) in
      self?.dismiss(animated: flag, completion: fulfill)
    }
  }

}
