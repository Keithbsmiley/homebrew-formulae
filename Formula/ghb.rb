class Ghb < Formula
  homepage 'https://github.com/keith/ghb'
  head 'https://github.com/keith/ghb.git'
  url 'https://github.com/keith/ghb/archive/1.1.0.tar.gz'
  sha256 'b1a954427fa1ad16a82114a5dc458fe30979f628bdc722f2addc2f54f5260bdd'

  depends_on :python

  resource "requests" do
    url "https://pypi.python.org/packages/6e/40/7434b2d9fe24107ada25ec90a1fc646e97f346130a2c51aa6a2b1aba28de/requests-2.12.1.tar.gz"
    sha256 "2109ecea94df90980be040490ff1d879971b024861539abb00054062388b612e"
  end

  def install
    bin.install Dir['src/*']
    zsh_completion.install 'zsh/_ghb'
  end
end
