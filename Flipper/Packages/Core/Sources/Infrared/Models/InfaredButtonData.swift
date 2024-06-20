import Foundation

public enum InfraredButtonData: Equatable {
    case text(TextButtonData)
    case icon(IconButtonData)
    case base64Image(Base64ImageButtonData)
    case navigation(NavigationButtonData)
    case volume(VolumeButtonData)
    case channel(ChannelButtonData)
    case unknown
}
