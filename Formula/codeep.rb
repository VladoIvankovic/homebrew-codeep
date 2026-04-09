class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.17.tgz"
  sha256 "c80fa6b8ea3e01158f21a1c5662f40988a69a030d002db85291e9f97bd3f7910"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.17"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
