# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.21.0; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.21.0/barberry-0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "dd9cf567f49e11a4b079c943f33309b07a900bc0d352d1c9ea50cf3c1edc32c9"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.21.0/barberry-0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "21414adc6df43a8365fc0de1f9844c01a5078014fd13e10929b8c0a16fc406bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.21.0/barberry-0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4b0cd073752b419b2e41183a0d92c8fa374cc705f8ca3701b8675c764576fe44"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.21.0/barberry-0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d301f9416d856a2030e0e46c6837bdde1d4ce1b8bb7fa1920d7591d4b8785bdb"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
