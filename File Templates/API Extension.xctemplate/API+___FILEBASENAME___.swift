//  ___FILEHEADER___

import Foundation

extension API {
    enum ___VARIABLE_apiName:identifier___: RequestConvertible {
        case <#placeholder#>

        var path: String {
            switch self {
            case <#.placeholder#>:
                return <#path/to/resource#>
            }
        }
        
        var method: Network.Method {
            switch self {
            case <#.placeholder#>:
                return .get
            }
        }
        
        var task: Network.Task {
            switch self {
            case <#.placeholder#>:
                return .requestPlain
            }
        }
        
        var authorizationStrategy: AuthorizationStrategy? {
            switch self {
            default:
                return .token
            }
        }
    }
}