class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.5.tgz"
  sha256 "eb331a1eec72c7d52b0a9f499e9cbd3032cff57b841c1e413e519ba3efbf124d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.5"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
