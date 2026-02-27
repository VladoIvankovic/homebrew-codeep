class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.78.tgz"
  sha256 "72f3c7c2e0f7bd7e3e85c53739d08dea5551f267599d3d29fe02753751ba6f8d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.78"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
