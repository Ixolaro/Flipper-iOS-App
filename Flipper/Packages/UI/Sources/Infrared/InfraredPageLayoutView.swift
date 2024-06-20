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
                        cellLenght: calculateCellLenght(geometry.size),
                        button: button,
                        onTap: onTap
                    )
                    .cellModifier(
                        button: button,
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

    var cellHeightCoefficient: Double { 12 }
    var cellWidthCoefficient: Double { 6 }

    @ViewBuilder
    func cellModifier(button: InfraredButton, screenSize: CGSize) -> some View {
        let xCenter = button.x + button.containerWidth / 2
        let yCenter = button.y + button.containerHeight / 2

        let widthFactor = screenSize.width / widthCount
        let heightFactor = screenSize.height / heightCount

        let cellWidth = widthFactor * button.containerWidth
        let cellHeight = heightFactor * button.containerHeight

        let cellX = screenSize.width * xCenter / widthCount
        let cellY = screenSize.height * yCenter / heightCount
        let cellAlignment = button.cellAlignment
        print(button.position.alignment)

        return self
            .frame(
                width: cellWidth,
                height: cellHeight,
                alignment: cellAlignment
            )
            .position(x: cellX, y: cellY)
            .zIndex(button.zIndex)
    }

    func calculateCellLenght(
        _ screenSize: CGSize
    ) -> Double {
        let cellWidth = screenSize.width / cellWidthCoefficient
        let cellHeight = screenSize.height / cellHeightCoefficient

        return min(cellWidth, cellHeight)
    }
}

extension InfraredButton {
    public var cellAlignment: SwiftUI.Alignment {
        switch self.alignment {
        case .center: .center
        case .topLeft: .topLeading
        case .topRight: .topTrailing
        case .bottomLeft: .bottomLeading
        case .bottomRight: .bottomTrailing
        case .centerLeft: .center
        case .centerRight: .center
        }
    }
}

#Preview {
    InfraredPageLayoutView()
}
