//
// ___FILENAME___
// ___WORKSPACENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___ All rights reserved.
//

import Foundation
import ReactiveSwift

final class ___FILEBASENAMEASIDENTIFIER___: UseCasesConsumer {
    typealias UseCases = HasAuthorizationUseCase
    
    // MARK: - Properties
    
    let phoneNumber = MutableProperty("")
    let phoneNumberError = MutableProperty<Error?>(nil)
    private let googleProvider: SocialSessionProvider
    
    // MARK: - Actions
    
    private(set) lazy var getGoogleToken = Action(execute: googleProvider.getToken)
    
    init(useCases: UseCases, googleProvider: SocialSessionProvider) {
        self.googleProvider = googleProvider
        self.useCases = useCases
    }
}
