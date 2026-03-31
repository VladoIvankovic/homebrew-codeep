class Codeep < Formula
  desc "AI-powered coding assistant built for the terminal"
  homepage "https://codeep.dev"
  url "https://registry.npmjs.org/codeep/-/codeep-1.2.121.tgz"
  sha256 "ce311824e51d23fb1e3d33e57199d2a355be4e1fbc16a017a10c54a83d1edeff"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{prefix}", "--omit=dev", "codeep@1.2.121"
  end

  test do
    system "#{bin}/codeep", "--version"
  end
end
