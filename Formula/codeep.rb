class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.161.tgz"
  sha256 "6c28e36e9440997d399a3eecbd6e1a5668a2bd76ee63eca11d2408b60c3a8aec"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.161"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
