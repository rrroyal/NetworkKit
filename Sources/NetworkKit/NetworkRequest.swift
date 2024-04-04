//
//  NetworkRequest.swift
//  NetworkKit
//
//  Created by royal on 03/04/2024.
//  Copyright © 2024 shameful. All rights reserved.
//

import Foundation

// MARK: - NetworkRequest

public protocol NetworkRequest {
	associatedtype DecodedResponse: Decodable

	var method: HTTPMethod { get }
	var path: String { get }

	func queryItems() throws -> [URLQueryItem]?
	func body() throws -> Data?

	func handleResponse(_ response: URLResponse, data: Data) throws -> DecodedResponse
}

// MARK: - NetworkRequest+Default

public extension NetworkRequest {
	func queryItems() throws -> [URLQueryItem]? { nil }
	func body() throws -> Data? { nil }
}
