//
//  MockableNetworkRequest.swift
//  NetworkKit
//
//  Created by royal on 19/04/2024.
//  Copyright © 2024 shameful. All rights reserved.
//

import Foundation

// MARK: - MockableNetworkRequest

public protocol MockableNetworkRequest: NetworkRequest {
	var mockedResponseFileURL: URL? { get }
	var mockedRequestShouldFail: Bool { get }
	var mockedRequestDelay: Duration? { get }
}

// MARK: - MockableNetworkRequest+Default

public extension MockableNetworkRequest {
	var mockedRequestShouldFail: Bool { false }
	var mockedRequestDelay: Duration? { nil }
}
