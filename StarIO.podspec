Pod::Spec.new do |s|
  s.name         = 'StarIO'
  s.version      = '3.13.1'
  s.summary      = 'Star Micronics iOS Print SDK'
  s.description  = <<-DESC
   This package contains StarIO and its SDK.
   StarIO is a library for supporting to develope application for Star printers.

      StarIO.framework version:  1.19.2
      Supported OS:  iOS 5.1.1 - 8.2

   Please refer to document including this package for details.
                   DESC
  s.homepage     = 'http://www.starmicronics.com/support/SDKDocumentation.aspx'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Star Micronics Co., Ltd.' => 'contact@starmicronics.com' }
  s.platform     = :ios, '5.1.1'
  s.source       = { :git => 'https://github.com/cflorion/StarIO.git', :tag => '3.13.1' }
  s.frameworks = 'UIKit', 'CoreGraphics', 'ExternalAccessory'
  s.library   = 'z'
  s.preserve_paths = 'Distributables/*.framework'
  s.public_header_files = 'Distributables/StarIO.framework/**/*.h'
  s.vendored_frameworks = 'Distributables/StarIO.framework'
end
