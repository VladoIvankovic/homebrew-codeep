class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.9.2.tgz"
  sha256 "fce584d427894aa8181c4bb08df9edc058651dde87ebabd44f933cb67602efec"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.9.2"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
