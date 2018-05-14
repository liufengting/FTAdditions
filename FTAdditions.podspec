Pod::Spec.new do |s|

  s.name         = "FTAdditions"
  s.version      = "0.0.1"
  s.summary      = "A package contains some useful categories."
  s.description  = <<-DESC
          "A package contains some useful categories. UIAlertController for now."
                   DESC
  s.author             = { "liufengting" => "wo157121900@me.com" }
  s.homepage     = "https://github.com/liufengting/FTAdditions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.social_media_url   = "https://twitter.com/liufengting"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/liufengting/FTAdditions.git", :tag => "#{s.version}" }
  s.source_files  = "FTAdditions", "FTAdditions/**/*.{h,m}"
  # s.resources    = "FTAdditions/**/*.{bundle}"
  s.requires_arc = true
  
  s.subspec 'UIAlertController+Addition' do |bs|
    bs.source_files  = "UIAlertController+Addition", "FTAdditions/UIAlertController+Addition/*.{h,m}"
  end

end
