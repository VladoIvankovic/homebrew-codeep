class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.37.tgz"
  sha256 "f98ac0fd2d7bd123bd33ea5921b5391ef073fa8222635ad13df99604dbbe5df9"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.37"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
