require 'formula'
class Int < Formula
  head 'git@github.com:Helabs/int.git', :using => :git, :branch => 'master'

  def install
    prefix.install Dir["*"]
    system "#{prefix}/bin/int init"
  end
end
