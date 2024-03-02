//  Track.swift
//  Scructure Classes


import Foundation

struct Track: Decodable {
    let original_title: String
    let overview: String
    let poster_path: URL
    let detail: String
}
struct TracksResponse: Decodable {
    let results: [Track]
}


// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Track {

}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
