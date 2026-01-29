class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.29.tgz"
  sha256 "9fedbfea697b0968d9adaa9059defff79bdc2531e958d65b75b58d2c39e0cf5e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.29"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
