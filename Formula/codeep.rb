class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.3.25.tgz"
  sha256 "cf57bcc64ce326ad9bb5b7094d6782a043408fce02ff460014ee93b0b020c815"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.3.25"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
