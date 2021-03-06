Pod::Spec.new do |s|

  s.name             = "RxRealmDJB"
  s.version          = "3.1.1"
  s.summary          = "An Rx wrapper of Realm's notifications and write bindings"
  s.swift_version    = "5.0"

  s.description      = <<-DESC
    This is an Rx extension that provides an easy and straight-forward way
    to use Realm's natively reactive collection type as an Observable
                       DESC

  s.homepage         = "https://github.com/DouweBos/RxRealm"
  s.license          = 'MIT'
  s.author           = { "Marin Todorov" => "marin@underplot.com" }
  s.source           = { :git => "https://github.com/DouweBos/RxRealm.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'VALID_ARCHS' => 'x86_64 armv7 arm64'
  }
  
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'

  s.source_files = 'Pod/Classes/*.swift'

  s.frameworks = 'Foundation'
  s.dependency 'RealmSwift', '~> 10.0.0'
  s.dependency 'RxSwift', '~> 5.0'

end
