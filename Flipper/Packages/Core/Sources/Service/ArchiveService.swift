import Inject

import Combine
import Logging
import Foundation

public class ArchiveService: ObservableObject {
    private let logger = Logger(label: "archive-service")

    @Inject var archive: Archive
    private var disposeBag: DisposeBag = .init()

    @Published public private(set) var items: [ArchiveItem] = []
    @Published public private(set) var deleted: [ArchiveItem] = []

    public init() {
        archive.items
            .receive(on: DispatchQueue.main)
            .assign(to: \.items, on: self)
            .store(in: &disposeBag)

        archive.deletedItems
            .receive(on: DispatchQueue.main)
            .assign(to: \.deleted, on: self)
            .store(in: &disposeBag)
    }

    // MARK: Archive

    public func backupKeys() {
        archive.backupKeys()
    }
}
