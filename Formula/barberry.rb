# typed: strict
# frozen_string_literal: true

# Written by server/scripts/cli-formula.sh in the release of barberry 0.7.2; a release replaces it.
class Barberry < Formula
  desc "Catalog, tasting notes and exports of Barberry Garden, from the command-line"
  homepage "https://barberry.io"

  on_macos do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.2/barberry-0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "c9f93623ac12af5fb45f8a2a72d4bd0344f8e563828946c56e27e9136d388d2a"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.2/barberry-0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "94fd7ed1c7c43d9a5998ee3c009267ff926b1fe5bf0af67de60c74a7a43f4f6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.2/barberry-0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7347a982b37b6e8e3bc166ac5b01b86e4070346c60db0270a5da1bb1830830ef"
    end
    on_intel do
      url "https://github.com/barberry-io/homebrew-tap/releases/download/barberry-v0.7.2/barberry-0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b35eab1c52fc1345b8a8481ea08f28b53713230c35d2e8677124a3cdcc4b958"
    end
  end

  def install
    bin.install "barberry"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/barberry --version")
  end
end
