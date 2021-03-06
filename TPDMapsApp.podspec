Pod::Spec.new do |s|
  s.name         = "TPDMapsApp"
  s.version      = "1.1.0"
  s.summary      = "A class to help deal with the variety of mapping apps on iOS."
  s.description  = <<-DESC
TPDMapsApp helps you launch the right external mapping application.

It detects installed applications and provides APIs to automatically
select the most desirable one or to easily create preferences UI to
allow the customer to select their own.

                   DESC
  s.homepage     = "https://github.com/tetherpad/TPDMapsApp"
  s.license      = 'MIT'
  s.author       = {
    "Mark Ferlatte" => "mark@tetherpad.com"
  }
  s.source       = { 
    :git => "https://github.com/tetherpad/TPDMapsApp.git", 
    :tag => s.version.to_s
  }
  s.source_files = 'TPDMapsApp/TPDMapsApp/*.{h,m}'
  s.requires_arc = true

  s.ios.deployment_target = '7.0'
end
