import SwiftUI
import Core

struct IconInfraredButton: View {
    let data: IconButtonData

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.black80)
            .overlay {
                Image(data.icon.image)
                    .renderingMode(.template)
                    .foregroundColor(data.icon.color)
            }
    }
}

extension IconButtonData.IconType {
    var image: String {
        return switch self {
            case .back: "InfraredBack"
            case .home: "InfraredHome"
            case .info: "InfraredInfo"
            case .more: "InfraredMore"
            case .mute: "InfraredMute"
            case .power: "InfraredPower"
            case .cool: "InfraredCool"
            case .heat: "InfraredHeat"
            }
    }

    var color: Color {
        return switch self {
            case .power: .red
            default: .white
            }
    }
}
