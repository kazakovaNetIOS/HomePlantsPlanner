//
//  Box.swift
//  HomePlantsPlanner
//
//  Created by Natalia Kazakova on 17.12.2019.
//  Copyright © 2019 Natalia Kazakova. All rights reserved.
//

import Foundation

class Box<T> {
    typealias Listener = (T) -> ()
    
    // Безымянная функция, которая примает значение типа Т
    // и выполняет блок действий, имея значение внутри себя
    var listener: Listener?
    
    // Значение, за которым будет наблюдать наблюдатель
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    // Связка со слушателем, определение необходимых действий
    func bind(listener: @escaping Listener) {
        self.listener = listener
        // Как только связали, передали новое значение иначе первое значение потеряется
        listener(value)
    }
}
