class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.18.tgz"
  sha256 "398c3c6bfff4ed98fce9b58f7aa4df1d9d2894d62aee09d3c806bd46d222a9b7"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.18"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
