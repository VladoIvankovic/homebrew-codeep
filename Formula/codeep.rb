class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.105.tgz"
  sha256 "0218d9d6aca676f63a8c79f07e41b742f4358f35cbd764bd9b132784aae433a6"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.105"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
