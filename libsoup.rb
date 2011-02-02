require 'formula'

class Libsoup <Formula
  url 'http://download.gnome.org/sources/libsoup/2.4/libsoup-2.4.0.tar.gz'
  homepage 'http://www.gnome.org'
  md5 '14ac0d2742134906fd6548568b1d6e24'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
