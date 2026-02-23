class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.38.tgz"
  sha256 "f49bcc645c684fc0f0a699d4a08af601e415e4908b555da727d84671cfd639b3"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.38"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
