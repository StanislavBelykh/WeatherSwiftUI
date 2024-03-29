//
// Wind.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct Wind: Codable {

    /** Wind speed. Unit Default: meter/sec, Metric: meter/sec, Imperial: miles/hour. */
    public var speed: Double?
    /** Wind direction, degrees (meteorological) */
    public var deg: Int?

    public init(speed: Double?, deg: Int?) {
        self.speed = speed
        self.deg = deg
    }


}

