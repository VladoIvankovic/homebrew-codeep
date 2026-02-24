class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.58.tgz"
  sha256 "66204d683704e6f7a3d9877189fbc993247bafdc998f45e5712b800edc0c490e"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.58"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
