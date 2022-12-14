//
//  Typealiase.swift
//  NYTimee
//
//  Created by devadmin on 02/11/2022.
//

import Foundation
import SwiftyJSON

// MARK: - TypeAlias for data type
typealias Params = [String: Any]

// MARK: - Completion Block
typealias CompletionNetwork = ((Result<JSON, ErrorResult>) -> Void)

// MARK: - Completion for Repositories
typealias GenericModelCompletion<Model> = ((Result<Model?, ErrorResult>) -> Void)

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}

enum ErrorResult: Error {
    case network(string: String)
    case parser(string: String)
    case custom(string: String)
}
