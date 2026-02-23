class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.25.tgz"
  sha256 "080090b7018584a590b47425f3a64778e277c0007fa33c7fb0aaf9487d256086"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.25"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
