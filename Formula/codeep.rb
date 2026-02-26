class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.73.tgz"
  sha256 "5f5be7aa24a72689710639704363ded6003723fc46244c0a95cd342cab1ccc92"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.73"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
