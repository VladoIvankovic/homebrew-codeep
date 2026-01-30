class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.75.tgz"
  sha256 "aa78c9cbaeee159f8ef420278717c6063bfd24cd5d74d08849bb322ef03974ce"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.75"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
