# Rendered from .github/homebrew/planfiles.rb.tmpl in the planfiles source
# repo by the release workflow, which substitutes the version and per-arch
# sha256 tokens — edit the template there, never this file.
class Planfiles < Formula
  desc "Plain-text .plan files with a daily Focus / Plan / Log page"
  homepage "https://planfiles.sh"
  version "0.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/planfiles/homebrew-tap/releases/download/plan-v0.3.0/plan-aarch64-apple-darwin.tar.gz"
      sha256 "02cb9ddb22f1e28fcb920ae1f630e01666b6cb462bf92e9aa39c1ff177549227"
    end
    on_intel do
      url "https://github.com/planfiles/homebrew-tap/releases/download/plan-v0.3.0/plan-x86_64-apple-darwin.tar.gz"
      sha256 "628f16c4ec26abc3772f13789b76fb53827dc674f976d6ac8b3be8cf04da2e2f"
    end
  end

  def install
    bin.install "plan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plan --version")
  end
end
