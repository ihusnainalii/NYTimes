//
//  Reactive+Helper.swift
//  NYTimee
//
//  Created by devadmin on 02/11/2022.
//

import Foundation
import RxSwift
import RxCocoa
import MBProgressHUD

extension Reactive where Base: UIView {
    // Custom binding for HUD
    public var isShowHUD: Binder<Bool> {
        return Binder<Bool>.init(base.self, scheduler: MainScheduler.instance) { (view, isLoading) in
            if isLoading {
                MBProgressHUD.showAdded(to: view, animated: true)
            } else {
                MBProgressHUD.hide(for: view, animated: true)
            }
        }
    }
}
