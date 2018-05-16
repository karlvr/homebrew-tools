class Chic < Formula
  desc "Small utility to make AMIs"
  homepage "https://github.com/karlvr/chic"
  url "https://github.com/karlvr/chic/archive/1.7.1.tar.gz"
  sha256 "8272afdbde4277f1e86de92bfef176cd152f583ce5466555193acc93b6dbe42c"

  def install
    inreplace "chic", /^CHIC_LIB_DIR=.*/, "CHIC_LIB_DIR=#{lib}"
    bin.install "chic"
    prefix.install "lib"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test punch`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
