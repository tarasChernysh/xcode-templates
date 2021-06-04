//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit

// MARK:- Factory

protocol ___VARIABLE_factoryProtocol:identifier___ {
    func make___VARIABLE_viewController:identifier___(delegate: ___VARIABLE_delegate:identifier___) -> ___VARIABLE_viewController:identifier___
}

final class ___VARIABLE_factory:identifier___: ModuleFactory, ___VARIABLE_factoryProtocol:identifier___ {
    func make___VARIABLE_viewController:identifier___(delegate: ___VARIABLE_delegate:identifier___) -> ___VARIABLE_viewController:identifier___ {
        return makeController {
            $0.delegate = delegate
            $0.viewModel = ___VARIABLE_viewModel:identifier___(useCases: useCases)
        }
    }
}
