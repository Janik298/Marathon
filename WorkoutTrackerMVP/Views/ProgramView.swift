import SwiftUI
import SwiftData

struct ProgramView: View {
    @Query(sort: [SortDescriptor(\\TrainingBlock.startDate, order: .reverse)]) private var blocks: [TrainingBlock]

    var body: some View {
        NavigationStack {
            if let block = blocks.first {
                List {
                    ForEach(0..<block.durationWeeks, id: \.self) { week in
                        Section("Week \(week + 1)") {
                            ForEach(0..<5, id: \.self) { day in
                                NavigationLink("Day \(day + 1)") {
                                    WorkoutView(weekIndex: week, dayIndex: day)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("Program")
            } else {
                Text("No active program")
            }
        }
    }
}
