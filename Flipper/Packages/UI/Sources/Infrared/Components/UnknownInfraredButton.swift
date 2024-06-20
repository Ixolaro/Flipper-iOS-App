import SwiftUI
import Core

struct UnknownInfraredButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.black80)
            .overlay {
                EmptyView()
            }
    }
}
