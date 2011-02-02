require 'formula'

class Swfdec <Formula
  url 'http://swfdec.freedesktop.org/download/swfdec/0.8/swfdec-0.8.4.tar.gz'
  homepage 'http://swfdec.freedesktop.org/'
  md5 'aece501d0e73f3e564200a44ec03c385'

  depends_on 'gst-plugins-base'
  depends_on 'libsoup'

  def install
    inreplace './configure' do |config|
      config.gsub!(/-Wl,-Bsymbolic/, '')
    end
    system "./configure", "--disable-debug", "--disable-dependency-tracking", 
                          "--with-audio=none", "--prefix=#{prefix}"
    system "make install"
  end
end
