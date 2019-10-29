//
//  Extensions.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 26.10.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import UIKit

//MARK: - StoryboardInstantiable
/***************************************************************/

protocol StoryboardInstantiable: NSObjectProtocol {
    associatedtype ControllerType: UIViewController
    static var defaultFileName: String { get }
    static func instantiateViewController(_ bundle: Bundle?) -> ControllerType
}

extension StoryboardInstantiable where Self: UIViewController {
    static var defaultFileName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last!
    }
    
    static func instantiateViewController(_ bundle: Bundle? = nil) -> Self {
        let fileName = Self.defaultFileName
        let sb = UIStoryboard(name: fileName, bundle: bundle)
        return sb.instantiateInitialViewController() as! Self
    }
}
