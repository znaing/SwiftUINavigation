
import SwiftUI

struct DetailView: View {
  let artwork : Artwork
  var body: some View {
    VStack{
      Image(artwork.imageName)
        .resizable()
        .frame(maxWidth: 300, maxHeight: 600)
        .aspectRatio(contentMode: .fit)
      Text("\(artwork.reaction)\(artwork.title)")
        .font(.headline)
        .multilineTextAlignment(.center)
        .lineLimit(3)
      Text(artwork.locationName)
        .font(.subheadline)
      Text("Artist: \(artwork.artist)")
        .font(.subheadline)
      Divider()
      Text(artwork.description)
        .multilineTextAlignment(.leading)
        .lineLimit(30)
    }
    .padding()
    .navigationBarTitle(Text(artwork.title), displayMode: .inline)
  }
}


#Preview {
    DetailView(artwork: artData[0])
}
