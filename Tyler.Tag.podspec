
Pod::Spec.new do |s|

	s.name = "Tag"
	s.version = "0.0.1"
	s.swift_version = "4.2"
	s.summary = "Tyler Tag"
	s.homepage = "https://github.com/IgorMuzyka/Tyler.Tag"
	s.source = { :git => "https://github.com/IgorMuzyka/Tyler.Tag.git", :tag => s.version.to_s }
	s.license = { :type => "MIT", :file => "LICENSE" }
	s.author = { 'igormuzyka' => "igormuzyka42@gmail.com" }
	s.source_files = "Sources/Tag/*"

	s.osx.deployment_target = "10.10"
	s.ios.deployment_target = "9.0"
	s.tvos.deployment_target = "9.0"
	s.watchos.deployment_target = "3.0"

end
