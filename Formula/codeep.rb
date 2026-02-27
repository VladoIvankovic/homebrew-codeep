class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.82.tgz"
  sha256 "dd71b1189c22799b74224c39b1b5002261d6c3168d4cf98c7eb8846b8c4270cd"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.82"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
