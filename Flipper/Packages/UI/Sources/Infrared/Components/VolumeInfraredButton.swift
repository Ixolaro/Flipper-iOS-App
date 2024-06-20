import SwiftUI
import Core

struct VolumeInfraredButton: View {
    let data: VolumeButtonData

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.black80)
            .overlay {
                VStack {
                    Text("+")
                        .font(.system(size: 16, weight: .medium))

                    Spacer()

                    Text("VOL")
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
