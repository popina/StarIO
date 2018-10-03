Pod::Spec.new do |s|
  s.name         = 'StarIO'
  s.version      = '3.17.3'
  s.summary      = 'Star Micronics iOS Print SDK'
  s.description  = <<-DESC
  This package contains StarIO and its SDK.
     StarIO is a library for supporting to develop application for Star printers.

        StarIO.framework version:  2.3.3
        Supported OS:  iOS 7.0 - 11.2.5

     Please refer to document including this package for details.
                   DESC
  s.homepage     = 'http://www.starmicronics.com/support/SDKDocumentation.aspx'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Star Micronics Co., Ltd.' => 'contact@starmicronics.com' }
  s.platform     = :ios, '9.0'
  s.source       = { :git => 'https://github.com/popina/StarIO.git', :tag => '3.17.3' }
  s.frameworks = 'UIKit', 'CoreGraphics', 'ExternalAccessory'
  s.library   = 'z'
  s.preserve_paths = 'Distributables/*.framework'
  s.public_header_files = 'Distributables/*.framework/**/*.h'
  s.vendored_frameworks = 'Distributables/*.framework'
end
