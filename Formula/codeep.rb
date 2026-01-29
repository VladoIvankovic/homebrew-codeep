class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.0.42.tgz"
  sha256 "853adbe3dfa195692a4c9384fc25d77e4e5b9e1ee9afca7fbe9db86dc11c0def"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.0.42"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
