class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.11.tgz"
  sha256 "8bb3e146aca6324add086aa1cf1c1bd0705f6daa64e32e188a8eeb49aedd20dd"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.11"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
