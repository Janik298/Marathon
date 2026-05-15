import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            ProgramView()
                .tabItem {
                    Label("Program", systemImage: "calendar")
                }

            WeeklyReviewView()
                .tabItem {
                    Label("Weekly", systemImage: "chart.bar")
                }

            BlockReviewView()
                .tabItem {
                    Label("Block", systemImage: "doc.text")
                }
        }
    }
}
