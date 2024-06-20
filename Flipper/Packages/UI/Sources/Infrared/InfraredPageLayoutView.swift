import SwiftUI
import Core

struct InfraredPageLayoutView: View {
    let page: InfraredPageLayout = .mock
    let onTap: (InfraredButton) -> Void = { _ in }

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(page.buttons) { button in
                    InfraredButtonView(
                        button: button,
                        onTap: onTap
                    )
                    .cellModifier(
                        position: button.position,
                        screenSize: geometry.size
                    )
                }
            }
        }
        .padding()
    }
}

fileprivate extension View {
    var widthCount: Double { 5.0 }
    var heightCount: Double { 11.0 }

    @ViewBuilder
    func cellModifier(
        position: InfraredButtonPosition,
        screenSize: CGSize
    ) -> some View {
        let xDelayPosition = (position.x + position.containerWidth / 2)
        let yDelayPosition = (position.y + position.containerHeight / 2)

        let width = screenSize.width * position.containerWidth / widthCount
        let height = screenSize.height * position.containerHeight / heightCount

        let x = screenSize.width * xDelayPosition / widthCount
        let y = screenSize.height * yDelayPosition / heightCount

        self
            .frame(width: width, height: height)
            .position(x: x, y: y)
            .zIndex(position.zIndex)
    }
}

#Preview {
    InfraredPageLayoutView()
}
