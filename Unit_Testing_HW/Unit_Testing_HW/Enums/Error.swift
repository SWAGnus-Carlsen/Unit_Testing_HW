//
//  Error.swift
//  Unit_Testing_HW
//
//  Created by Vitaliy Halai on 6.03.23.
//

import UIKit

enum divisionErrors: Error, Equatable {
    case divisionByZeroError(value: String)
}
