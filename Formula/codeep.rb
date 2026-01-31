class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.108.tgz"
  sha256 "972be57d0109dffc166b25f380fbf10a7c1721ccee5773a2a122b2f79c4e5795"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.108"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
