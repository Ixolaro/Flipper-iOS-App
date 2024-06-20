import SwiftUI
import Core

struct InfraredButtonView: View {
    let button: InfraredButton
    let onTap: (InfraredButton) -> Void

    var body: some View {
        Group {
            switch button.data {
            case .text(let data): TextInfraredButton(data: data).frame(width: 48, height: 48)
            case .icon(let data): IconInfraredButton(data: data).frame(width: 48, height: 48)
            case .base64Image(let data): Base64ImageInfraredButton(data: data).frame(width: 48, height: 48)
            case .navigation(let data): NavigationInfraredButton(data: data).frame(width: 48*4, height: 48*4)
            case .volume(let data): VolumeInfraredButton(data: data).frame(width: 48, height: 48 * 3)
            case .channel(let data): ChannelInfraredButton(data: data).frame(width: 48, height: 48 * 3)
            case .unknown: UnknownInfraredButton().frame(width: 48, height: 48)
            }
        }
    }
}
