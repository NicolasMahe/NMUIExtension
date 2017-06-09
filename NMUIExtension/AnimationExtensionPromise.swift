//
//  AnimationExtension.swift
//  NMBaseUIClasses
//
//  Created by Nicolas Mahé on 31/05/16.
//  Copyright © 2016 Nicolas Mahé. All rights reserved.
//

import UIKit
import PromiseKit

extension UIView {
  
  public class func animatePromise(
    view: UIView? = nil,
    animated: Bool = true,
    duration: Double = 0.3,
    option: UIViewAnimationOptions = .curveEaseOut,
    constant: (() -> Void)? = nil,
    modification: (() -> Void)? = nil
  ) -> Promise<Void> {
    return Promise<Void> { (fulfill, reject) in
      self.animate(
        view: view,
        animated: animated,
        duration: duration,
        option: option,
        constant: constant,
        modification: modification,
        completion: {
          fulfill()
        }
      )
    }
  }

}
