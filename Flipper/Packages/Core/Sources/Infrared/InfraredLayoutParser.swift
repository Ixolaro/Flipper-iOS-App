import Foundation

class InfraredLayoutParser {
    static let shared: InfraredLayoutParser = .init()

    private init() {}

    func process(_ data: Data) throws -> InfraredLayout {
        return try JSONDecoder().decode(InfraredLayout.self, from: data)
    }
}
