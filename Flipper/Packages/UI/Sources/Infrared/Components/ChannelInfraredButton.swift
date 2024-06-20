import SwiftUI
import Core

struct ChannelInfraredButton: View {
    let data: ChannelButtonData

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.black80)
            .overlay {
                VStack {
                    Text("+")
                        .font(.system(size: 16, weight: .medium))

                    Spacer()

                    Text("CH")
                        .font(.system(size: 12, weight: .medium))

                    Spacer()

                    Text("-")
                        .font(.system(size: 16, weight: .medium))
                }
                .foregroundColor(.white)
                .padding(.vertical, 18)
            }
    }
}
