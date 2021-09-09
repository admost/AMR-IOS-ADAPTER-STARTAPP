Pod::Spec.new do |s|
  s.name             = 'AMRAdapterStartapp'
  s.version          = '4.6.6.0'
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
  s.dependency 'AMRSDK', '~> 1.4.75'
  s.dependency 'StartAppSDK', '4.6.6'
  s.vendored_libraries = 'AMRAdapterStartapp/Libs/libAMRAdapterStartapp.a'
end
