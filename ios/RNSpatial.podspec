
Pod::Spec.new do |s|
  s.name         = "RNSpatial"
  s.version      = "1.0.0"
  s.summary      = "RNSpatial"
  s.description  = <<-DESC
                  RNSpatial
                   DESC
  s.homepage     = "https://github.com/mvits/react-native-spatial"
  s.license      = "MIT"
  s.author       = { "author" => "https://github.com/mvits" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/mvits/react-native-spatial.git", :tag => "master" }
  s.source_files  = "RNSpatial/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"

end

  