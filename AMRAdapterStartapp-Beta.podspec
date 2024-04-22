Pod::Spec.new do |s|
  s.name             = 'AMRAdapterStartapp-Beta'
  s.version          = '4.10.3.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Startapp adapter for AMR SDK.'
  s.description      = 'AMR Startapp adapter allows publishers to mediate Startapp banner and interstitial ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-STARTAPP.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.swift_versions = ['5']
  s.pod_target_xcconfig = { 
    'OTHER_LDFLAGS' => '-ObjC -lc++',
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK-Beta', '~> 1.5.40'
  s.dependency 'StartAppSDK', '4.10.3'
  s.vendored_frameworks = 'AMRAdapterStartapp/Libs/AMRAdapterStartapp.xcframework'
end
