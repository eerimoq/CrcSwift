//
//  File.swift
//  
//
//  Created by Ivan Eleskin on 20.12.2022.
//

import Foundation

class DataHelper {
    static func convertDataToByteArray(_ data: Data) -> [UInt8] {
        var array = [UInt8]()
        array.append(contentsOf: data)
        
        return array
    }

    static func reverseBits(_ data: UInt8) -> UInt8 {
        var value = data
        value = (((value & 0xaa) >> 1) | ((value & 0x55) << 1))
        value = (((value & 0xcc) >> 2) | ((value & 0x33) << 2))
        return (((value & 0xf0) >> 4) | ((value & 0x0f) << 4))
    }

    static func reverseBits(_ data: UInt16) -> UInt16 {
        var value = data
        value = (((value & 0xaaaa) >> 1) | ((value & 0x5555) << 1))
        value = (((value & 0xcccc) >> 2) | ((value & 0x3333) << 2))
        value = (((value & 0xf0f0) >> 4) | ((value & 0x0f0f) << 4))
        return (((value & 0xff00) >> 8) | ((value & 0x00ff) << 8))
    }

    static func reverseBits(_ data: UInt32) -> UInt32 {
        var value = data
        value = (((value & 0xaaaaaaaa) >> 1) | ((value & 0x55555555) << 1))
        value = (((value & 0xcccccccc) >> 2) | ((value & 0x33333333) << 2))
        value = (((value & 0xf0f0f0f0) >> 4) | ((value & 0x0f0f0f0f) << 4))
        value = (((value & 0xff00ff00) >> 8) | ((value & 0x00ff00ff) << 8))
        return ((value >> 16) | (value << 16))
    }
    
}
