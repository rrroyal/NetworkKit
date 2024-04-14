//
//  JSONNetworkRequest.swift
//  NetworkKit
//
//  Created by royal on 14/04/2024.
//  Copyright © 2024 shameful. All rights reserved.
//

import Foundation

// MARK: - NetworkRequest

public protocol JSONNetworkRequest: NetworkRequest {
	associatedtype JSONBody: Encodable

	var jsonBody: JSONBody? { get }
}
