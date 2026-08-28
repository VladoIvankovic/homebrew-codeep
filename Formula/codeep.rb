class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.25.0.tgz"
  sha256 "c54d7ca6311564df370c6538d643879165c884c571717b6f450cd868b65b6789"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.25.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
