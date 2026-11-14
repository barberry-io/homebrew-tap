# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.25.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.25.0/barberry-0.25.0-aarch64-apple-darwin.tar.gz"
      sha256 "383617329b407966ff8fd1234c6e84b351598e49bd9cc8ac1bfa3333f964e1af"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.25.0/barberry-0.25.0-x86_64-apple-darwin.tar.gz"
      sha256 "10a781a2d36b631cac87708d35964e0bc23d65566e2c03130e5303b1739051af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.25.0/barberry-0.25.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2260b10b730571e8e0cff758611947f931fbb852c0a775e7ead1515138c945f2"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.25.0/barberry-0.25.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "584a60f4e80b1b8548e066594b5d0e1f5a9f724912b8b893bec67833a9621bcc"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
