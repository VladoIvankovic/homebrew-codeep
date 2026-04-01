class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.129.tgz"
  sha256 "eff83a2e431c6151313ba9d35b20febf67710ebed10686cba328fff92bf362f4"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.129"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
