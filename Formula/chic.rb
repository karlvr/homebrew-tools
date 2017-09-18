class Chic < Formula
  desc "Small utility to make AMIs"
  homepage "https://github.com/karlvr/chic"
  url "https://github.com/karlvr/chic/archive/1.0.tar.gz"
  sha256 "71b47fa36ec2146d6c4883b81fea2e6001ad5a4fa4bbcde6685d991b014e5be8"

  def install
    bin.install "chic"
    prefix.install "lib"
  end
end
