Pod::Spec.new do |spec|
  spec.name         = "Down"
  spec.summary      = "Blazing fast Markdown rendering in Swift, built upon cmark."
  spec.version      = "0.6.3"
  spec.homepage     = "https://github.com/iwasrobbed/Down"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.authors      = { "Rob Phillips" => "rob@robphillips.me" }
  spec.source       = { :git => "https://github.com/SebastianCiuca/Down-gfm.git" }
  spec.source_files = "Source/Down/{Enums & Options,Extensions,Renderers}/**/*.swift", "Source/cmark/*.{h,c,swift,inc,cpp}", "Source/Down/*"
  spec.ios.source_files = "Source/Down/Views/**"
  spec.osx.source_files = "Source/Down/Views/**"
  spec.public_header_files = "Source/Down/*.h"
  spec.ios.deployment_target = "14.5"
  spec.tvos.deployment_target = "9.0"
  spec.osx.deployment_target = "10.11"
  spec.requires_arc = true
  spec.module_name = "Down"
  spec.preserve_paths = "Source/cmark/module.modulemap", "Source/cmark/*.inc", "Source/cmark/COPYING"
  spec.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/Down/Source/cmark/**' }
  spec.compiler_flags = '-Wno-shorten-64-to-32'
  spec.ios.resource = 'Source/Down/Resources/DownView.bundle'
  spec.osx.resource = 'Source/Down/Resources/DownView.bundle'
  spec.swift_versions = ['5.0', '5.1']
end
