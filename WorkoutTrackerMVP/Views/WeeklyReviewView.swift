import SwiftUI

struct WeeklyReviewView: View {
    @State private var energy = 5.0
    @State private var sleep = 5.0
    @State private var stress = 5.0

    var body: some View {
        Form {
            Section("Recovery") {
                Stepper("Energy: \(Int(energy))", value: $energy, in: 1...10)
                Stepper("Sleep: \(Int(sleep))", value: $sleep, in: 1...10)
                Stepper("Stress: \(Int(stress))", value: $stress, in: 1...10)
            }
        }
        .navigationTitle("Weekly Review")
    }
}
