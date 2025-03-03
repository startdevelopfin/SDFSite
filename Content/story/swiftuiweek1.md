---
layout: Story
author: Daniel J. Aupont
description: SwiftUI 100 - Week 1 summary, key takeaways, and the first example app TemperatureConverter.
date: 2025-02-28 09:00
tags: SwiftUI, 100DaysOfSwiftUI, iOS Development
published: true
image: /images/photos/week1summary.png
---

# SwiftUI 100 🚀
Week 1 summary, key takeaways, and the first example app TemperatureConverter.

  <p><img src="https://firebasestorage.googleapis.com/v0/b/by-rule-90fbd.appspot.com/o/swiftuiweekly%2FWeek1Summary.png?alt=media&token=1623b918-d903-4ea9-9150-29a3d550a91c" alt="100 Days Banner" style="height: 300px;"/></p>

<br></br>

## What I Learned This Week 📱

</p>This week was all about **Swift fundamentals and basic data types**.</p>

- **`Basic Data Types`**: Variables, constants, integers, doubles, strings, and booleans
- **`Collections`**: Arrays, dictionaries, and sets
- **`Control Flow`**: Conditionals (if/else), switch statements, and various loop types
- **`Functions`**: Creating, parameterizing, and returning values from functions
- **`Enumerations`**: Creating and using basic enums in Swift
<br></br>

## The Power of Swift's Type System ✅

</p>If I had to highlight just one thing I learned from this week, it would be **Swift's strong type system**. The type system stands out to me because it provides safety and clarity without disrupting the readability of my code.</p>
<br></br>

## Code Spotlight 💡: Building a Temperature Converter

<p>Here's a practical example of how I'm applying what I learned. My biggest hurdle was deciding how to condense the new information into a short blog post. I overcame it by building around one of the challenges I completed earlier in the week. TemperatureConverter is a simple, intuitive SwiftUI app that converts temperatures between Celsius, Fahrenheit, and Kelvin. Designed with best practices in mind, this app provides a clean user interface, real-time conversion, and accessibility support.</p>
<br></br>

### State Management ⚙️

  <p><img src="  https://firebasestorage.googleapis.com/v0/b/by-rule-90fbd.appspot.com/o/swiftuiweekly%2FTC1.png?alt=media&token=b9181ce8-a115-4be9-a5fa-8a052e7c94ac" alt="State Properties for Temperature Converter" style="height: 300px;"/></p>
  
<p>First, I set up three state properties to manage the dynamic interactions in the temperature converter:</p>

1. `inputTemperature`: A string that holds the temperature value entered by the user.
<br></br>
2. `selectedInputUnit`: The temperature unit chosen by the user for the input temperature (e.g., Celsius, Fahrenheit, or Kelvin).
<br></br>
3. `selectedOutputUnit`: The temperature unit selected by the user for the output temperature.
<br></br>
These state properties are crucial for capturing user input and updating the view accordingly.
<br></br>

### Enum 🔑

  <img src="  https://firebasestorage.googleapis.com/v0/b/by-rule-90fbd.appspot.com/o/swiftuiweekly%2FTC4.png?alt=media&token=4192f353-79ac-4952-849d-d8b115f2da71" alt="Enum for Temperature Converter" style="height: 600px;"/>
  
<p>What's noteworthy here is the use of a custom type, `TemperatureUnit`, to represent the units of temperature. This ensures type safety, clear organization, and reduces potential errors when handling the temperature units throughout the app.</p>
<br></br>

### Conversion Logic 🧮

  <p><img src="  https://firebasestorage.googleapis.com/v0/b/by-rule-90fbd.appspot.com/o/swiftuiweekly%2FTC2.png?alt=media&token=6c1b204a-2b34-404d-bfc7-659c291f30f9" alt="Conversion Function for Temperature Converter" style="height: 700px;"/></p>
  
  <p>This function handles the core logic for converting temperatures between different units. Here's a breakdown of how it works:</p>
   
A. **`convertTemperature`(_: from: to: )**: 

This function takes in the user's input temperature, the selected input unit, and the selected output unit. It performs the conversion by first converting the input temperature to Celsius, and then converting that Celsius value to the desired output unit.
<br></br>

- **Input Parameters**:
- `input`: The temperature value to convert, provided as a string.
- `fromUnit`: The selected input temperature unit (Celsius, Fahrenheit, or Kelvin).
- `toUnit`: The selected output temperature unit (Celsius, Fahrenheit, or Kelvin).

- **Returns**: A string containing the converted temperature, formatted to two decimal places.
<br></br>

B. **Conversion Process**:

- The input temperature is first converted to Celsius using the appropriate formula based on the selected `fromUnit`.

- The converted Celsius value is then used to calculate the output temperature in the `toUnit`.
<br></br>

C. **convertedTemperature**: 

This computed property automatically calls the `convertTemperature` function with the current input and unit selections, returning the converted temperature as a formatted string.

<p>This function encapsulates the temperature conversion logic, ensuring that all necessary calculations are handled efficiently and accurately.</p>
<br></br>

### User Interface ✨

  <p><img src="https://firebasestorage.googleapis.com/v0/b/by-rule-90fbd.appspot.com/o/swiftuiweekly%2FTC3.png?alt=media&token=53d79c7d-e28a-45be-8756-52f68053703b" alt="User Interface for Temperature Converter" style="height: 400px;"/></p>

  In this section, we define the main body of the temperature converter view using a `NavigationView` and a vertical stack (`VStack`) to organize the UI elements. Here's how the layout is structured:
<br></br>

1. **`inputField()`**: A custom view builder that creates the input field for the user to enter the temperature value.
<br></br>
2. **`unitPicker`(title: selection: )**: A reusable view builder that creates a picker for selecting the input and output temperature units. It takes a `title` parameter to label each picker and a `selection` binding to update the selected unit.
<br></br>
3. **`convertedTemperatureView`()**: A custom view builder that displays the converted temperature result based on the user’s input and selected units.
<br></br>
4. **`Spacer`()**: Adds flexible space to push the content toward the top of the screen.

The `VStack` arranges these elements vertically with a spacing of 20 points. The `NavigationView` wraps everything to provide a navigation bar with the title **"Temperature Converter"**. The view is padded for better spacing and visual appearance. 

This structure keeps the UI clean, organized, and responsive, leveraging SwiftUI’s declarative syntax to dynamically update the view based on user interaction. 

*See the [complete implementation on GitHub](https://github.com/startdevelopfin/TemperatureConverter)*
<br></br>


## Key Terms I'm Adding to My Vocabulary 📝

| **Term** | **Definition** |
|---|---|
| **`Type Inference`** | Swift's ability to automatically determine a variable's type based on its initial value |
| **`String Interpolation`** | Embedding variables within string literals using `\(variableName)` syntax |
| **`Collection Types`** | Swift's three primary collection types: arrays, sets, and dictionaries |
| **`Control Flow`** | Structures that change the order in which code is executed (if/else, loops, switch) |
| **`Parameter Labels`** | External names for function parameters that make function calls more readable |
<br></br>

## Next Week's Focus 🎯

<p>Looking ahead to Week 2, I'll be diving into:</p>

1. **`Closures`** - Swift's elegant functions on steroids
<br></br>
2. **`Structs`** - Creating custom data types with value semantics 
<br></br> 
3. **`Classes`** - Object-oriented programming in Swift
<br></br>
4. **`Protocols and Extensions`** - The secret to Swift's flexibility
<br></br>

<!--## What I'm Excited to Try Next 🔮-->
<!---->
<!--<p>I can't wait to experiment with more complex functions in my app. I'm planning to use them to create reusable components for data validation and formatting. Stay tuned!</p>-->
<!--<br></br>-->

---

## Resources I Found Helpful

- **[Hacking with Swift](https://www.hackingwithswift.com)**: Paul Hudson's clear explanations of Swift fundamentals
- **[Swift Documentation](https://swift.org/documentation/)**: Official documentation for deeper understanding
- **[Swift Playgrounds](https://www.apple.com/swift/playgrounds/)**: Great for experimenting with code in real-time
---
