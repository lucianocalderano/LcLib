Pod::Spec.new do |s|


# 1
s.platform = :ios
s.ios.deployment_target = '9.0'
s.name = "LcLib"
s.summary = "LcLib - Utilità standard."
s.requires_arc = true
s.swift_version = "4.0"

# 2
s.version = "0.0.1"

# 3
s.license = { :type => 'LcLib License, Version 0.0.1', :text => <<-LICENSE
Licensed LcLib free Version 0.0.1 (by Lc)

#pod spec create LcLib

#git init
#git add .
#git commit -m "Initial commit"
#git tag 0.0.1
#git remote add origin https://github.com/lucianocalderano/LcLib.git
#git push -u origin master --tags

#pod repo add LcLib https://github.com/lucianocalderano/LcLib.git
#pod repo push LcLib LcLib.podspec

LICENSE
}

# 4 - Replace with your name and e-mail address
s.author = { "Luciano C." => "luciano.c@virgilio.it" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/lucianocalderano"

# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/lucianocalderano/LcLib.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "LcLib/**/*.{swift}"

# 9
#s.resources = ""
end