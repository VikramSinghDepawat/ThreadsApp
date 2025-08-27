struct ExtractedView: View {
    var body: some View {
        Button {
            print("Login Button Tapped")
        } label: {
            Text("Login".uppercased())
                .font(.headline)
                .fontWeight(.bold)
                .kerning(1)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 52)
                .background(Color.black)
                .cornerRadius(8)
                .padding()
        }
    }
}