class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.60.tgz"
  sha256 "70c6eb3e3caf2103573a497ce5557adea9aaf68a60bd581e3ae5c015903ebf4d"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.60"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
