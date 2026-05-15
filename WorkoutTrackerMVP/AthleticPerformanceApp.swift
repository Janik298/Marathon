import SwiftUI
import SwiftData

@main
struct AthleticPerformanceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [
                    Athlete.self,
                    Exercise.self,
                    TrainingBlock.self,
                    WorkoutDay.self,
                    ExerciseLog.self,
                    WeeklyReview.self,
                    BlockReview.self
                ])
        }
    }
}
