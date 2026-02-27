class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.80.tgz"
  sha256 "7e1dffaad676887aa98851f73928022199e0c85bbad39ae4ff89d5a29bb06e22"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.80"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
