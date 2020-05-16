# BitTicker

An iOS app to track crypto coins prices from different exchanges

## Features

The project uses Poloniex WebSocket to get crypto coin prices using the subscribe and unsubscribe methods.

## Server

Firebase Storage

## Getting Started

1. Clone the repo
2. Go to the project directory
3. Run pod install

## Architectural Pattern

Clean Swift VIPER

## Tests

- UnitTests

## How to run the tests

1. Open the BitTicker.xcworkspace in Xcode
2. Press ⌘ + U or go to Product -> Test
3. The application will get build and the test cases will be executed
4. Press the on the "Show the Report Navigator" button in Xcode
5. Press the coverage option under the test to see the code coverage

## Generate Code Coverage Report

1. Install Slather using command "sudo gem install slather" in the Terminal
2. Execute the Test Cases in Xcode as shown above
3. Run the below command in Terminal after giving the correct path to the BitTicker.xcworkspace & BitTicker.xcodeproj files
4. Code coverage report will be generated in the project directory and will get opened in your web browser

```bash
slather coverage --show --html --scheme BitTicker --workspace path/to/BitTicker.xcworkspace path/to/BitTicker.xcodeproj

```

## Tools Used

MacOS 10.15.4, Xcode 11.4, iOS 13.4, iPhone 11 Pro Max
