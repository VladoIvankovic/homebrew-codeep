class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.4.2.tgz"
  sha256 "452b7ccfae42370cce4a2bf28576a8f27a65c959707313426f358722c411ec9f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.4.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
