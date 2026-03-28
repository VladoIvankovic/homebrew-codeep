class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.114.tgz"
  sha256 "989bf63cc5845debe33d49a951ab782f213af8a6d9956eae33de531aa1b7643a"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.114"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
