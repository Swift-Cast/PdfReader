//
//  SwiftPDFView.swift
//  PdfReader
//
//  Created by HaoPeiqiang on 2023/1/3.
//

import SwiftUI
import PDFKit

struct SwiftPDFView: UIViewRepresentable {

    
    let url:URL

    func makeUIView(context: Context) -> PDFView {
        
        let pdfView = PDFView()
        pdfView.document = PDFDocument(url: url)
        pdfView.displayMode = .singlePage
        pdfView.autoScales = true
        pdfView.usePageViewController(true, withViewOptions: nil)
        self.setThumbnailView(pdfView)
        return pdfView
    }
    
    func setThumbnailView(_ pdfView:PDFView) {
        let thumbnailView = PDFThumbnailView()
        thumbnailView.translatesAutoresizingMaskIntoConstraints = false
        pdfView.addSubview(thumbnailView)
        
        thumbnailView.leadingAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        thumbnailView.trailingAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        thumbnailView.bottomAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.bottomAnchor).isActive = true
        thumbnailView.bottomAnchor.constraint(equalTo: pdfView.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        thumbnailView.heightAnchor.constraint(equalToConstant: 40).isActive = true

        thumbnailView.thumbnailSize = CGSize(width: 20, height: 30)
        thumbnailView.layoutMode = .horizontal
        thumbnailView.pdfView = pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        
    }

}

struct SwiftPDFView_Previews: PreviewProvider {
    static var previews: some View {
        
        SwiftPDFView(url:Bundle.main.url(forResource: "sample_pdf", withExtension: "pdf")!)
    }
}
