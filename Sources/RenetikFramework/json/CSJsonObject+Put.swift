//
// Created by Rene Dohan on 12/4/19.
// Copyright (c) 2019 Renetik. All rights reserved.
//

import Foundation

public extension CSJsonObject {
    func put(_ key: String, _ value: String?) { put(key: key, value: value) }

    func put(_ key: String, _ value: Int?) { put(key: key, value: value) }

    func put(_ key: String, _ value: Bool?) { put(key: key, value: value) }

    func put(_ key: String, _ value: CSJsonObjectInterface) { put(key: key, value: value.asDictionary) }

    func put(_ key: String, _ value: CSJsonArrayInterface) { put(key: key, value: value.asArray) }

    func put(_ key: String, _ value: [Any?]) { put(key: key, value: value) }

    func put(_ key: String, _ value: [String: Any?]) { put(key: key, value: value) }
}

