import SwiftUI
import Core

struct Base64ImageInfraredButton: View {
    let data: Base64ImageButtonData

    private var uiImage: UIImage? {
        let image = data
            .base64Image
            .replacing("data:image/png;base64,", with: "")

        guard
            let data = Data(base64Encoded: image),
            let image = UIImage(data: data)
        else {
            return nil
        }
        return image
    }

    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(Color.black80)
            .overlay {
                if let image = uiImage {
                    Image(uiImage: image)
                } else {
                    EmptyView()
                }
            }
    }
}
