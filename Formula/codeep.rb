class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.112.tgz"
  sha256 "c039f0af409250acad54e27ac85c1a0b03d083e22df22718e1da797ecd3691ed"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.112"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
