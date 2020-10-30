    //
    //  CoverImageView.swift
    //  AfricaApp
    //
    //  Created by Atalay Aşa on 27.10.2020.
    //
    
    import SwiftUI
    
    struct CoverImageView: View {
        // MARK: - Properties
        let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
        // MARK: - Body
        
        var body: some View {
            TabView {
                ForEach(coverImages) { cover in
                    Image(cover.name)
                        .resizable()
                        .scaledToFill()
                } // LOOP
            } // TAB
            .tabViewStyle(PageTabViewStyle())
            
        }
    }
    
    // MARK: - Preview
    
    struct CoverImageView_Previews: PreviewProvider {
        static var previews: some View {
            CoverImageView()
                .previewLayout(.fixed(width: 400, height: 300))
        }
    }
