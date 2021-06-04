//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit

final class ___VARIABLE_coordinator:identifier___<T: UseCasesProvider>: Coordinator {
    let useCases: T
    
    private lazy var factory: some ___VARIABLE_factoryProtocol:identifier___ = ___VARIABLE_factory:identifier___(coordinator: self)
    
    // MARK: - Init
    init(useCases: T) {
        self.useCases = useCases
    }
    
    func start(animated: Bool) {}
    
    func stop(animated: Bool) {}
    
    // MARK: - GUI
    enum GUI {
    }
}

// MARK: - ___VARIABLE_delegate:identifier___
extension ___VARIABLE_coordinator:identifier___: ___VARIABLE_delegate:identifier___ {
    
}
