class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.15.tgz"
  sha256 "8ba2b20cd57cdded72584c2ae62c78f3dedb9744e8c740bb62802202190aa173"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.15"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
