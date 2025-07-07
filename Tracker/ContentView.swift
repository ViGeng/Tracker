import SwiftUI

struct ContentView: View {
    @State private var coffeeCount = 0
    @State private var workoutCount = 0
    @State private var alcoholCount = 0

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        TrackerView(title: "Coffee", emoji: "☕️", count: $coffeeCount, color: .blue)
                        TrackerView(title: "Workout", emoji: "💪", count: $workoutCount, color: .green)
                        TrackerView(title: "Alcohol", emoji: "🍷", count: $alcoholCount, color: .purple)
                    }
                    .padding()
                }

                Button(action: {
                    coffeeCount = 0
                    workoutCount = 0
                    alcoholCount = 0
                }) {
                    Text("Clear All")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Tracker")
        }
    }
}

struct TrackerView: View {
    let title: String
    let emoji: String
    @Binding var count: Int
    let color: Color

    var body: some View {
        VStack {
            Text(emoji)
                .font(.system(size: 80))
                .onTapGesture {
                    count += 1
                }

            Text(title + " count: \(count)")
                .font(.headline)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 150)
        .background(color.opacity(0.2))
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
