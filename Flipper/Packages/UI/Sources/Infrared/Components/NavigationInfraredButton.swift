import SwiftUI
import Core

struct NavigationInfraredButton: View {
    let data: NavigationButtonData

    var body: some View {
        Circle()
            .fill(Color.black80)
            .overlay {
                Grid {
                    GridRow {
                        Spacer()
                        Image("InfraredNavigation")
                        Spacer()
                    }
                    GridRow {
                        Image("InfraredNavigation")
                            .rotationEffect(Angle(degrees: -90))

                        ZStack {
                            Circle()
                                .fill(Color.black60)

                            Circle()
                                .strokeBorder(.black, lineWidth: 3)

                            Text("OK")
                                .font(.system(size: 12, weight: .medium))
                                .foregroundColor(.white)
                        }
                        .frame(width: 48, height: 48)

                        Image("InfraredNavigation")
                            .rotationEffect(Angle(degrees: 90))
                    }
                    GridRow {}
                    GridRow {
                        Spacer()
                        Image("InfraredNavigation")
                            .rotationEffect(Angle(degrees: 180))
                        Spacer()
                    }
                }
            }
    }
}
