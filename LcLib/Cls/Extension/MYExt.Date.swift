//
//  ExtDate.swift
//  Lc
//
//  Created by Luciano Calderano on 09/11/16.
//  Copyright © 2016 Kanito. All rights reserved.
//

import Foundation

public extension String {
    func toDate(withFormat fmt: String) -> Date? {
        let df = DateFormatter()
        df.dateFormat = fmt
        if let result = df.date(from: self) {
            return result
        }
        return nil
    }

    func dateConvert(fromFormat fmtIn: String, toFormat fmtOut: String) -> String {
        let d = self.toDate(withFormat: fmtIn)
        if let s = d?.toString(withFormat: fmtOut) {
            return s
        }
        return ""
    }
}

public extension Date {
    func toString(withFormat fmt: String) -> String {
        let df = DateFormatter()
        df.dateFormat = fmt
        return df.string(from: self)
    }
}
