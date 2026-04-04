class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.144.tgz"
  sha256 "ed3f80fa1db983f6d44c11996c3bd32ff8b164e6c868e65231389d2e299d8a46"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.144"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
