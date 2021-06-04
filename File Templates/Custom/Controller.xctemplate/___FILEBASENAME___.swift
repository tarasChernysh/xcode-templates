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

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: class {
    func controllerNameVC(_ controller: ___FILEBASENAMEASIDENTIFIER___, didTapForgot button: UIButton)
}

extension ___FILEBASENAMEASIDENTIFIER___: Makeable {
    static func make() -> ___FILEBASENAMEASIDENTIFIER___ {
        return R.storyboard.signIn.signInVC()!
    }
}

final class ___FILEBASENAMEASIDENTIFIER___: BaseVC, ViewModelContainer {
    
    // MARK: - Outlets
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?
    
    // MARK: - Private properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    // MARK: - ViewModelContainer
    
    func didSetViewModel(_ viewModel: ___FILEBASENAMEASIDENTIFIER___VM, lifetime: Lifetime) {
        
        with(viewModel.phoneNumber) {
            phoneNumberTextField.text = $0.value
            $0 <~ phoneNumberTextField.reactive.continuousTextValues.skipRepeats()
        }
        
        phoneNumberTextField.reactive.error <~ viewModel.phoneNumberError
        
        reactive.makeBindingTarget { vc, model in
            vc.delegate?.signInVCGetToken(vc, token: model, type: .google)
            } <~ viewModel.getGoogleToken.values
        
        let actions = ActionGroup {
            $0.append(viewModel.getFacebookToken)
        }
        
        reactive.activity <~ actions.isExecuting
        reactive.errors <~ actions.errors
    }
    
    // MARK: - Setup
    
    func setupViewController() {
    }
}
