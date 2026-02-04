class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.1.10.tgz"
  sha256 "09ed84dcb4e57346c3fe3bd8af0c5cf1d10594470c4d886ac6737ff5de53232f"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.1.10"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
