class Punch < Formula
  desc "A script to bootstrap, query and control AWS EC2 instances."
  homepage "https://github.com/karlvr/punch"
  url "https://github.com/karlvr/punch/archive/1.3.1.tar.gz"
  sha256 "a708d330c2bc0593573c0c52ad2a3ce627483be05c6ecbe07ac70edfeb6eabe8"

  def install
    inreplace "punch", /^PUNCH_LIB_DIR=.*/, "PUNCH_LIB_DIR=#{lib}"
    bin.install "punch"
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
