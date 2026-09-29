class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.7.0.tgz"
  sha256 "9ca1c37d8ea92dac3e85c1ce4492edaf03402d3036f1e3059628b63d68ba7383"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.7.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
