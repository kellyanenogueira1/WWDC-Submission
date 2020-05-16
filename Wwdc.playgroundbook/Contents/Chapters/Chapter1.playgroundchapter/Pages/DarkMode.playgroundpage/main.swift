
import PlaygroundSupport

//PlaygroundPage.current.assessmentStatus = .pass(message: "Good job!!!")
PlaygroundPage.current.assessmentStatus = .fail(hints: ["h", "f"], solution: "You can try: `var withWater: Bool = true`")
PlaygroundPage.current.liveView = DarkMode()
