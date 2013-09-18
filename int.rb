require 'formula'
class Int < Formula
  homepage 'https://github.com/Helabs/int'
  url 'https://github.com/Helabs/int/archive/0.0.2.tar.gz'
  sha1 'a7b1f707d06328715319169f92f1c25535db0870'
  head 'https://github.com/Helabs/int.git', :using => :git

  def install
    prefix.install Dir["*"]
    sub_message = `#{prefix}/bin/int init`
    ohai sub_message
  end
end
