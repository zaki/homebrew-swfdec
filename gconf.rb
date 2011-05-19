require 'formula'

class Gconf <Formula
  url 'ftp://ftp.gnome.org/pub/GNOME/sources/GConf/2.22/GConf-2.22.0.tar.gz'
  homepage ''
  md5 'b9634a0b6f87376b63439160761cc67b'

  depends_on 'orbit2'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
