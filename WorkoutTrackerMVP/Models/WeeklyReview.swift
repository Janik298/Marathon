import Foundation
import SwiftData

@Model
final class WeeklyReview {
    var block: TrainingBlock?
    var weekIndex: Int
    var energy: Int
    var sleep: Int
    var stress: Int
    var soreness: Int
    var motivation: Int
    var notes: String?

    init(block: TrainingBlock? = nil,
         weekIndex: Int,
         energy: Int,
         sleep: Int,
         stress: Int,
         soreness: Int,
         motivation: Int,
         notes: String? = nil) {
        self.block = block
        self.weekIndex = weekIndex
        self.energy = energy
        self.sleep = sleep
        self.stress = stress
        self.soreness = soreness
        self.motivation = motivation
        self.notes = notes
    }
}
