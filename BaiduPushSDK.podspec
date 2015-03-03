Pod::Spec.new do |s|
  s.name         = "BaiduPushSDK"
  s.version      = "1.1.0"
  s.summary      = "BaiduPushSDK."

  s.homepage     = "http://developer.baidu.com/wiki/index.php?title=docs/cplat/push"
  s.license      = {
       :type => 'Copyright', 
       :text => 'LICENSE  ©2013 Baidu, Inc. All rights reserved.' 
    }
  s.author             = { "lerosua" => "lerosua@gmail.com" }
  s.platform     = :ios

  s.source       = { :git => "https://github.com/lerosua/BaiduPushSDK.git" }

  s.source_files  = 'BaiduPushSDK/*.{h,m}'
  s.preserve_paths = "BaiduPushSDK/libBPush.a"
  s.library   = 'BPush','z'
  s.framework = 'CFNetwork', 'CoreTelephony', 'SystemConfiguration'
  
  s.requires_arc = false

  s.xcconfig      = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/BaiduPushSDK/**"'}

end
