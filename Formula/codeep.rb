class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.17.tgz"
  sha256 "cd580bbd378875d7f89cb9b7c5dfb0592fd4bb230bb28e18a4bea36be3c1960f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.17"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
