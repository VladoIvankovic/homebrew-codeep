class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.22.tgz"
  sha256 "70a9ab034b8fcebb54a2e97f4b21d5e9020ae086e5d7240501e381e06d3c2b3a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.22"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
