import SwiftUI
import Core

struct TextInfraredButton: View {
    let data: TextButtonData

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.black80)
            .overlay {
                Text(data.text)
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.white)
            }
    }
}
