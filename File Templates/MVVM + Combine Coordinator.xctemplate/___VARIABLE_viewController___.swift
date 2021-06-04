//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import UIKit
import Combine

final class ___VARIABLE_viewController:identifier___<C: Coordinator>: BaseVC<C> {
    
    // MARK: - Public Properties
    var viewModel: ___VARIABLE_viewModel:identifier___<C.Item>
    
    // MARK: - Private Properties
    
    // MARK: - Lifecycle
    init(viewModel: ___VARIABLE_viewModel:identifier___<C.Item>) {
        self.viewModel = viewModel
        super.init(viewModel: viewModel)
    }
    
    deinit {
        print("\(self) deinit")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Setup
    private func setup() {
    }
}
