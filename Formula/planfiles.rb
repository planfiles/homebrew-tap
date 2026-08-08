# Rendered by .github/workflows/release-plan.yml on each plan-v* release and
# pushed to planfiles/homebrew-tap as Formula/planfiles.rb. Placeholders:
# 0.1.0, 032478cac08d2b933d48549e4a2b607bc991f75b8c49a4f60aabda89a004e0ce, 5c3d54b516280b02b6f725dd9ba077af4663d1379cb5700db714eb61721c34b2.
class Planfiles < Formula
  desc "Plain-text .plan files with a daily Focus / Plan / Log page"
  homepage "https://planfiles.sh"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/planfiles/homebrew-tap/releases/download/plan-v0.1.0/plan-aarch64-apple-darwin.tar.gz"
      sha256 "032478cac08d2b933d48549e4a2b607bc991f75b8c49a4f60aabda89a004e0ce"
    end
    on_intel do
      url "https://github.com/planfiles/homebrew-tap/releases/download/plan-v0.1.0/plan-x86_64-apple-darwin.tar.gz"
      sha256 "5c3d54b516280b02b6f725dd9ba077af4663d1379cb5700db714eb61721c34b2"
    end
  end

  def install
    bin.install "plan"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plan --version")
  end
end
