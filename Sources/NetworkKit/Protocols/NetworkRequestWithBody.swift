//
//  NetworkRequestWithBody.swift
//  NetworkKit
//
//  Created by royal on 07/05/2024.
//  Copyright © 2024 shameful. All rights reserved.
//

import Foundation

// MARK: - NetworkRequestWithBody

public protocol NetworkRequestWithBody: NetworkRequest {
	associatedtype RequestBody: Encodable

	var requestBody: RequestBody { get throws }
}
