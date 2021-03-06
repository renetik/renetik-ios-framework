//
// Created by Rene Dohan on 12/4/19.
// Copyright (c) 2019 Renetik. All rights reserved.
//

import Foundation

public extension CSJsonObject {
    func getString(_ key: String) -> String? { get(key: key)?.asString }

    func getBoolean(_ key: String) -> Bool? { get(key: key) as? Bool }

    func getInt(_ key: String) -> Int? { getString(key)?.intValue }

    func getDouble(_ key: String) -> Double? { getString(key)?.doubleValue }

    func getArray<T>(_ key: String) -> [T]? { get(key: key) as? [T] }

    func getStringList(_ key: String) -> [String]? { get(key: key) as? [String] }
}