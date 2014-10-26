#
# Be sure to run `pod lib lint ROCardToss.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ROCardToss"
  s.version          = "1.0.1"
  s.summary          = "Generates a card popup that you can toss to dismiss."
  s.description      = <<-DESC
                       The Card Toss is part of the Rounded UI Framework. It allows you to easily generate a card popup, with a smooth bouncy transition, and a quick toss-to-dismiss motion when finished with the view. Delegates are setup to be notified when the card was tossed or the X button was clicked. Add any subviews you'd like to the Card Toss.
                       DESC
  s.homepage         = "https://github.com/Rounded/ROCardToss"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Brian Weinreich" => "bw@roundedco.com" }
  s.source           = { :git => "https://github.com/Rounded/ROCardToss.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/roundedco'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'ROCardToss' => ['Pod/Assets/*.png']
  }

  s.dependency 'pop'
  s.dependency 'PureLayout'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end
