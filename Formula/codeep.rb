class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.19.tgz"
  sha256 "30aeeb9b8fbc6b69ba6dc656381704b36e7b1ce597ca8ec8f2181548fb92feb0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.19"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
