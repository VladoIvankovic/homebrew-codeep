class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-3.6.0.tgz"
  sha256 "2ee6efedc05f7c26385b4918d31b2957632c24a63d63a1419ad4cb399429f261"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@3.6.0"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
