import Foundation
import SwiftData

enum ExerciseTrackingType: String, Codable, CaseIterable {
    case weightReps
    case time
    case distance
    case mixed
}

@Model
final class Exercise {
    var name: String
    var category: String
    var trackingTypeRaw: String

    var trackingType: ExerciseTrackingType {
        get { ExerciseTrackingType(rawValue: trackingTypeRaw) ?? .weightReps }
        set { trackingTypeRaw = newValue.rawValue }
    }

    init(name: String, category: String = "Strength", trackingType: ExerciseTrackingType = .weightReps) {
        self.name = name
        self.category = category
        self.trackingTypeRaw = trackingType.rawValue
    }
}
