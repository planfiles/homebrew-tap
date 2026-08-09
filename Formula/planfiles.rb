# Rendered from .github/homebrew/planfiles.rb.tmpl in the planfiles source
# repo by the release workflow, which substitutes the version and per-arch
# sha256 tokens — edit the template there, never this file.
class Planfiles < Formula
  desc "Plain-text .plan files with a daily Focus / Plan / Log page"
  homepage "https://planfiles.sh"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/planfiles/homebrew-tap/releases/download/plan-v0.2.0/plan-aarch64-apple-darwin.tar.gz"
      sha256 "c8af423e2eec619f772b8fdc787616f6b9b50da066d6d4340347158c05dc5d18"
    end
    on_intel do
      url "https://github.com/planfiles/homebrew-tap/releases/download/plan-v0.2.0/plan-x86_64-apple-darwin.tar.gz"
      sha256 "238a93959d7a5b2cdcdd56b54277f1e0065e230bb7e76b6502335b8b7e49fce8"
    end
  end

  def install
    bin.install "plan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plan --version")
  end
end
