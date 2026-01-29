class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.10.tgz"
  sha256 "94d92c16c20f127e9b7eb51e9decfa1af2cda47d1e13371d0e0782b87999c37b"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.10"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
