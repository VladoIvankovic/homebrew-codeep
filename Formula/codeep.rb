class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.48.tgz"
  sha256 "cabd573ec2ce82112166f6f0d60993ddd68944016cdf7a3f379f84b9ffdfa1e3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.48"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
