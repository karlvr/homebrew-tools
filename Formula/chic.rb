class Chic < Formula
  desc "Small utility to make AMIs"
  homepage "https://github.com/karlvr/chic"
  url "https://github.com/karlvr/chic/archive/1.1.2.tar.gz"
  sha256 "6ddf56c9cdbfb549dbc94bd71a0e00b32df9bfb5035584f9d22e7b3cadc9736a"

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
