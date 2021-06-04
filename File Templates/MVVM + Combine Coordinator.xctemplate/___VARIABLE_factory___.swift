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
    associatedtype Coords: Coordinator
    func make___VARIABLE_viewController:identifier___(delegate: ___VARIABLE_delegate:identifier___?) -> ___VARIABLE_viewController:identifier___<Coords>
}

final class ___VARIABLE_factory:identifier___<Coord: Coordinator>: ModuleFactory<Coord, Coord.Item>, ___VARIABLE_factoryProtocol:identifier___ {
    typealias Coords = Coord
    
    func make___VARIABLE_viewController:identifier___(delegate: ___VARIABLE_delegate:identifier___?) -> ___VARIABLE_viewController:identifier___<Coords> {
        let vm = ___VARIABLE_viewModel:identifier___(useCases: useCases, delegate: delegate)
        let vc = ___VARIABLE_viewController:identifier___<Coord>(viewModel: vm)
        vc.coordinator = coordinator
        return vc
    }
}

