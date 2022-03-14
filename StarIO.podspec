Pod::Spec.new do |s|
  s.name         = 'StarIO'
  s.version      = '5.15.0'
  s.summary      = 'Star Micronics iOS Print SDK'
  s.description  = <<-DESC
  This package contains StarPRNT SDK for supporting to develop applications for Star printers.
      Please refer to the document(documents/UsersManual.url) for details.
                   DESC
  s.homepage     = 'http://www.starmicronics.com/support/SDKDocumentation.aspx'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Star Micronics Co., Ltd.' => 'contact@starmicronics.com' }
  s.platform     = :ios, '9.0'
  s.source       = { :git => 'https://github.com/popina/StarIO.git', :tag => '5.15.0' }
  s.frameworks = 'UIKit', 'CoreGraphics', 'ExternalAccessory'
  s.library   = 'z'
  s.preserve_paths = 'Distributables/*.xcframework'
  s.public_header_files = 'Distributables/*.xcframework/**/*.h'
  s.vendored_frameworks = 'Distributables/*.xcframework'
end
