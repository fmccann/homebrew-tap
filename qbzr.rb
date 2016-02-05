class Qbzr < Formula
  desc "Simple Qt cross-platform frontend for some of Bazaar commands"
  homepage "https://launchpad.net/qbzr"
  url "https://launchpad.net/qbzr/0.23/0.23.1/+download/qbzr-0.23.1.tar.gz"
  sha256 "3211adef11c975dfbb6c80285651e2e6f3bfa99f1baa1a95371e8490ea8ff441"

  depends_on "bazaar"
  depends_on "qt"
  depends_on "pyqt"
  depends_on "sip"

  def install
    (share/"bazaar/plugins/qbzr").install Dir["*"]
  end

  test do
    assert_match /QBzr - Qt-based frontend for Bazaar/, shell_output("bzr help qbzr")
  end
end