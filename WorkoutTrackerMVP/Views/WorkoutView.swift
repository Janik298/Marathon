import SwiftUI

struct WorkoutView: View {
    let weekIndex: Int
    let dayIndex: Int

    var body: some View {
        Form {
            Section("Workout") {
                Text("Week \(weekIndex + 1)")
                Text("Day \(dayIndex + 1)")
            }

            Section("Exercise Logging") {
                Text("Strength and cardio logging will appear here.")
            }
        }
        .navigationTitle("Workout")
    }
}
