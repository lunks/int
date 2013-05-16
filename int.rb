require 'formula'
class Int < Formula
  head 'git@github.com:Helabs/int.git', :using => :git, :branch => 'stable'

  def install
    prefix.install Dir["*"]
    sub_message = `#{prefix}/bin/int init`
    ohai sub_message
  end
end
