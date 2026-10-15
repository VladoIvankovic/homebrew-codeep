class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.12.1.tgz"
  sha256 "e14b52d9c8dbb44b5bb437db8801b74093ab1388a7394402172f9df91ce0436f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.12.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
