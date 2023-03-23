folly_compiler_flags = '-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1 -Wno-comma -Wno-shorten-64-to-32'
boost_compiler_flags = '-Wno-documentation'
Pod::Spec.new do |s|
  s.name = 'JSI'
  s.version = '0.0.1'
  s.license = 'MIT'
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.summary = 'a binding between JavaScript Object and native Object'
  s.homepage = 'https://github.com/acton393/JSI.git'
  s.author = { 'Olivier Poitrey' => 'rs@dailymotion.com' }
  s.source = { :git => 'https://github.com/acton393/JSI.git',:branch=>'master' }

  s.description = 'a binding between JavaScript Object and native Object'
  s.source_files = 'jsi/*.{h,cpp}'
  s.exclude_files  = 'jsi/jsilib-windows.cpp'
  s.compiler_flags  = folly_compiler_flags + ' ' + boost_compiler_flags
  s.pod_target_xcconfig    = { "HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost-for-react-native\" \"$(PODS_ROOT)/Folly\" \"$(PODS_ROOT)/DoubleConversion\"" }

  s.dependency "RCT-Folly"
end
