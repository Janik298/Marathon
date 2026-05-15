import SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: [SortDescriptor(\\TrainingBlock.startDate, order: .reverse)]) private var blocks: [TrainingBlock]

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 16) {
                if let currentBlock = blocks.first {
                    Text("Current Block")
                        .font(.headline)

                    Text("Duration: \(currentBlock.durationWeeks) weeks")
                    Text("Started: \(currentBlock.startDate.formatted())")
                } else {
                    Text("No active block")
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Home")
            .toolbar {
                Button("New Block") {
                    let block = TrainingBlock()
                    modelContext.insert(block)
                }
            }
        }
    }
}
