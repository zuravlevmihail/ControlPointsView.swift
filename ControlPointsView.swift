import SwiftUI

struct ControlPointsView: View {
    
    let selectedPointsIDs: Set<String>
    
    let controlPoints: [ControlPoint]
    let size: CGSize
    
    var body: some View {
        ZStack {
            ForEach(controlPoints) { controlPoint in
                createPoint(id: controlPoint.id)
                    .position(x: controlPoint.point.x * size.width,
                              y: controlPoint.point.y * size.height)
            }
        }
        .allowsHitTesting(false)
    }
    
    
    private func createPoint(id: String) -> some View {
        Circle()
            .fill(selectedPointsIDs.contains(id) ? .red : .blue)
            .frame(width: 25)
            .overlay {
