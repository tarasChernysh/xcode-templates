//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit

final class ___VARIABLE_coordinator:identifier___: Coordinator {
    let useCases: UseCasesProvider
    private let controller: UIViewController
    
    private lazy var factory = ___VARIABLE_factory:identifier___(coordinator: self)
    
    // MARK: - Controllers
    init(controller: UIViewController, useCases: UseCasesProvider) {
        self.controller = controller
        self.useCases = useCases
    }
    
    func start() {
        
    }
}
