require 'formula'
class Int < Formula
  head 'https://github.com/Helabs/int.git', :using => :git

  def install
    prefix.install Dir["*"]
    sub_message = `#{prefix}/bin/int init`
    ohai sub_message
  end
end
