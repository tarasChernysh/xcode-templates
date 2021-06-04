//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa

protocol ___VARIABLE_delegate:identifier___: class {
    func ___VARIABLE_viewController:identifier___(_ controller: ___VARIABLE_viewController:identifier___, didTapForgot button: UIButton)
}

extension ___VARIABLE_viewController:identifier___: Makeable {
    static func make() -> ___VARIABLE_viewController:identifier___ {
        let vc = ___VARIABLE_viewController:identifier___(nibName: "___VARIABLE_viewController:identifier___", bundle: nil)
        return vc
    }
}

final class ___VARIABLE_viewController:identifier___: BaseVC, ViewModelContainer {
    
    // MARK: - Outlets
    
    weak var delegate: ___VARIABLE_delegate:identifier___?
    
    // MARK: - Private properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    // MARK: - ViewModelContainer
    
    func didSetViewModel(_ viewModel: ___VARIABLE_viewModel:identifier___, lifetime: Lifetime) {
    
    }
    
    // MARK: - Setup
    
    func setupViewController() {
    }
}
