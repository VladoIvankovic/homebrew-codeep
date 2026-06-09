class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.7.0.tgz"
  sha256 "4475ebb319a38c5cac9c88829c6fdd2c73f63f65fe1830b9d43e3ce81255528d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.7.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
