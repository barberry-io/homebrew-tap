# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.4.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.4.0/barberry-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "824d88e89d8e3646173a0b821cd2a129137f3d17b9a123ba190b164b363659fc"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.4.0/barberry-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "841482a58f804157c2f85db884be2a199646bc98ceb8df87ae32c2c3ec979ad2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.4.0/barberry-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8a29500a0382adfdcac52bb2519317f4f8d04fd0ad6057906d8f03cc68c8932a"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.4.0/barberry-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e1c53ea71e633efe5936fc3282ae044cfd88690b7954308ed6bc7496ff75b88"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
