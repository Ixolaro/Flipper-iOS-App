import Foundation

public struct InfraredButtonPosition: Decodable, Equatable {
    public let y: Double
    public let x: Double
    public let alignment: Alignment
    public let zIndex: Double
    public let containerWidth: Double
    public let containerHeight: Double

    public enum Alignment: String, Codable {
        case center = "CENTER"
        case topLeft = "TOP_LEFT"
        case topRight = "TOP_RIGHT"
        case bottomLeft = "BOTTOM_LEFT"
        case bottomRight = "BOTTOM_RIGHT"
        case centerLeft = "CENTER_LEFT"
        case centerRight = "CENTER_RIGHT"
    }

    enum CodingKeys: String, CodingKey {
        case x
        case y
        case alignment
        case zIndex = "z_index"
        case containerWidth = "container_width"
        case containerHeight = "container_height"
    }
}
