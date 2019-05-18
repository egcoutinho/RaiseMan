//
//  Employee.swift
//  RaiseMan
//
//  Created by Eduardo G. Coutinho on 14/05/19.
//  Copyright © 2019 CyberShark. All rights reserved.
//

import Foundation

class Employee: NSObject
{
    @objc var name: String? = "Novo funcionário"
    @objc var raise: Float = 0.05

    override func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws
    {
        let raiseNumber = ioValue.pointee
        if inKey == "raise" && raiseNumber == nil
        {
            let domain = "UserInputValidationErrorDomain"
            let code = 0
            let userInfo = [NSLocalizedDescriptionKey : "An employee's raise must be a number."]
            throw NSError(domain: domain, code: code, userInfo: userInfo )

//            print("default raise = 0.0")
//            raise = 0.0
            
        }
    }
}
