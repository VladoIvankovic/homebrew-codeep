class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.5.1.tgz"
  sha256 "6cdae860e8c8ec77800ebab3baf9a72f4c2223383a008bbb8a35d1c3155bebd0"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.5.1"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
