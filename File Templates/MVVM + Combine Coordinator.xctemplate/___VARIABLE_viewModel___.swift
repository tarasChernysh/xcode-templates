//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import Foundation
import Combine

protocol ___VARIABLE_delegate:identifier___: AnyObject {}

final class ___VARIABLE_viewModel:identifier___<T: UseCasesProvider>: BaseViewModel<T> {
    weak var delegate: ___VARIABLE_delegate:identifier___?
    
    init(useCases: UseCases, delegate: ___VARIABLE_delegate:identifier___?) {
        self.delegate = delegate
        super.init(useCases: useCases)
        observe()
    }
    
    deinit {
        subscriptions.removeAll()
    }
    
    private func observe() {
        
    }
}
