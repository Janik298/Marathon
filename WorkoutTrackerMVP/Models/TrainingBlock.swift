import Foundation
import SwiftData

@Model
final class TrainingBlock {
    var startDate: Date
    var durationWeeks: Int
    var athlete: Athlete?

    init(startDate: Date = .now, durationWeeks: Int = 6, athlete: Athlete? = nil) {
        self.startDate = startDate
        self.durationWeeks = durationWeeks
        self.athlete = athlete
    }
}
