class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.3.1.tgz"
  sha256 "200acdf053dfeda9ed6cc08e5c16bd196635b087ae8a484824ac72b67ede17cf"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.3.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
