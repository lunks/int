require 'formula'
class Int < Formula
  homepage 'https://github.com/Helabs/int'
  url 'https://github.com/Helabs/int/archive/0.0.1.tar.gz'
  sha1 'a4a47f5c4d1a46badd4c75186434a344db5f8611'
  head 'https://github.com/Helabs/int.git', :using => :git

  def install
    prefix.install Dir["*"]
    sub_message = `#{prefix}/bin/int init`
    ohai sub_message
  end
end
