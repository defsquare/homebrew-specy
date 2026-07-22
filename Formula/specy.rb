class Specy < Formula
  desc     "Interactive editor for the .spec structure-declaration DSL"
  homepage "https://gitlab.com/defsquare/specy/cli"
  url      "https://dl.specy-cli.defsquare.com/specy/specy-0.1.0-darwin-arm64.tar.gz"
  version  "0.1.0"
  sha256   "608787ba554fa566311da84edf8e6abb976183e9be175465d7c5e6448de04435"
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
