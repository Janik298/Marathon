import Foundation
import SwiftData

@Model
final class WorkoutDay {
    var block: TrainingBlock?
    var weekIndex: Int
    var dayIndex: Int
    var date: Date?

    init(block: TrainingBlock? = nil, weekIndex: Int, dayIndex: Int, date: Date? = nil) {
        self.block = block
        self.weekIndex = weekIndex
        self.dayIndex = dayIndex
        self.date = date
    }
}
