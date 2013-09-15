require 'formula'
class Int < Formula
  homepage 'https://github.com/Helabs/int'
  url 'https://github.com/Helabs/int/archive/0.0.1.tar.gz'
  sha1 'a5ec57ea15f4c8733a6d72f76b7dd6a57fadc196'
  head 'https://github.com/Helabs/int.git', :using => :git

  def install
    prefix.install Dir["*"]
    sub_message = `#{prefix}/bin/int init`
    ohai sub_message
  end
end
