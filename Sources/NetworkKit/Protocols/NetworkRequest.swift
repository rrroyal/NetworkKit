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

	func makeQueryItems() throws -> [URLQueryItem]?
	func makeBody() throws -> Data?

	func handleResponse(_ response: URLResponse, data: Data) throws -> DecodedResponse
}

// MARK: - NetworkRequest+Default

public extension NetworkRequest {
	func makeQueryItems() throws -> [URLQueryItem]? { nil }
	func makeBody() throws -> Data? { nil }
}
