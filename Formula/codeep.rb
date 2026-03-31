class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.120.tgz"
  sha256 "9ebfb05de11db75b152841ddeb75120fb33f29e381a75d3aaf0e5c1f92befb78"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.120"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
