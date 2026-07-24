class Specy < Formula
  desc     "Interactive editor for the .spec structure-declaration DSL"
  homepage "https://gitlab.com/defsquare/specy/cli"
  url      "https://dl.specy-cli.defsquare.com/specy/specy-0.1.1-darwin-arm64.tar.gz"
  version  "0.1.1"
  sha256   "aea4687d110dbb2a8ecfb1799e7abea15710d75eaa3fae0b85a3f7f133f70ddd"
  license  :cannot_represent

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "specy"
  end

  test do
    # specy has no --help; with no valid args it prints usage and exits 1.
    output = shell_output("#{bin}/specy 2>&1", 1)
    assert_match "Usage: specy edit", output
  end
end
