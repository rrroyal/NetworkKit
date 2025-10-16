//
//  NetworkRequest.swift
//  NetworkKit
//
//  Created by royal on 03/04/2024.
//  Copyright © 2024 shameful. All rights reserved.
//

import Foundation

// MARK: - NetworkRequest

public protocol NetworkRequest: Sendable {
	associatedtype ResponseBody: Decodable

	var method: HTTPMethod { get }
	var path: String { get }

	var queryItems: [URLQueryItem]? { get throws }

	func handleResponse(_ response: URLResponse, data: Data) throws -> ResponseBody
}

// MARK: - NetworkRequest+Default

public extension NetworkRequest {
	var queryItems: [URLQueryItem]? { nil }
}
