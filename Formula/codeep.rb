class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.12.tgz"
  sha256 "e9408da17fe16afd7f92b8bfc6000fdbb8d07c517fe60739e7e95d53dc23981c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.12"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
