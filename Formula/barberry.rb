# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.3.1; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.1/barberry-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4daec4bf8eae464ef462fc13b4a0e86f194e5ce43d462469b13138e3599a1fd4"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.1/barberry-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "2266016a464fae82daa14000eafe7f6f93dcd3f12e1ac871338da5db17167333"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.1/barberry-0.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6924beac4fa892949527cf7dcf5beb07c9e64ac179bcfe88be2964185efbd88d"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.3.1/barberry-0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d8edef380669e13c9bd948112692646a3847580a68ae5d5186b34e8a113d340"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
