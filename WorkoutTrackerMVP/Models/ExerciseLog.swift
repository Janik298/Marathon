import Foundation
import SwiftData

@Model
final class ExerciseLog {
    var workout: WorkoutDay?
    var exercise: Exercise?
    var setIndex: Int
    var weight: Double?
    var reps: Int?
    var rir: Int?
    var time: Double?
    var distance: Double?
    var note: String?

    init(workout: WorkoutDay? = nil,
         exercise: Exercise? = nil,
         setIndex: Int,
         weight: Double? = nil,
         reps: Int? = nil,
         rir: Int? = nil,
         time: Double? = nil,
         distance: Double? = nil,
         note: String? = nil) {
        self.workout = workout
        self.exercise = exercise
        self.setIndex = setIndex
        self.weight = weight
        self.reps = reps
        self.rir = rir
        self.time = time
        self.distance = distance
        self.note = note
    }
}
