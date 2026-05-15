import Foundation
import SwiftData

enum CSVExportService {
    static func exportExerciseLogs(modelContext: ModelContext) -> URL? {
        let request = FetchDescriptor<ExerciseLog>()
        guard let logs = try? modelContext.fetch(request) else { return nil }

        var csv = "exercise,weight,reps,rir,time,distance,note\n"

        for log in logs {
            let exerciseName = log.exercise?.name ?? ""
            let weight = log.weight.map(String.init) ?? ""
            let reps = log.reps.map(String.init) ?? ""
            let rir = log.rir.map(String.init) ?? ""
            let time = log.time.map(String.init) ?? ""
            let distance = log.distance.map(String.init) ?? ""
            let note = log.note ?? ""

            csv += "\(exerciseName),\(weight),\(reps),\(rir),\(time),\(distance),\(note)\n"
        }

        let url = FileManager.default.temporaryDirectory.appendingPathComponent("exercise_logs.csv")
        try? csv.write(to: url, atomically: true, encoding: .utf8)
        return url
    }
}
