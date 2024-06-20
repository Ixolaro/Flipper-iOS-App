import SwiftUI

struct InfraredButtonSquareView<Content: View>: View {
    let color: Color
    @ViewBuilder let content: () -> Content

    init(color: Color, content: @escaping () -> Content) {
        self.color = color
        self.content = content
    }

    init(@ViewBuilder content: @escaping () -> Content) {
        self.color = .black80
        self.content = content
    }

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(color)
            .overlay {
                content()
            }
    }
}
