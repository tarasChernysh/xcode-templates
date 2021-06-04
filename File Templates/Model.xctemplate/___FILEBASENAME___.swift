//  ___FILEHEADER___

import Foundation

extension ___VARIABLE_modelResponseName:identifier___ {
    struct Response: Decodable, Identifiable {
        let id: ID
    }
}

extension ___VARIABLE_modelResponseName:identifier___.Response: Persistable {
    func update(_ object: <#ManagedObject#>, context: Mapper) throws {
    }
}