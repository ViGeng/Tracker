import SwiftUI

struct ContentView: View {
    @State private var coffeeCount = 0
    @State private var workoutCount = 0

    var body: some View {
        VStack {
            Text("☕️")
                .font(.system(size: 100))

            Text("Coffee count: \(coffeeCount)")
                .font(.title)

            Button(action: {
                coffeeCount += 1
            }) {
                Text("Record Coffee")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Text("💪")
                .font(.system(size: 100))

            Text("Workout count: \(workoutCount)")
                .font(.title)

            Button(action: {
                workoutCount += 1
            }) {
                Text("Record Workout")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            Button(action: {
                coffeeCount = 0
                workoutCount = 0
            }) {
                Text("Clear")
                    .font(.title)
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
