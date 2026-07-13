class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-2.15.0.tgz"
  sha256 "3f05ee1a3ee24094625438fc104de6ee36d07815133791a56dda93f32956c2f5"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@2.15.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
