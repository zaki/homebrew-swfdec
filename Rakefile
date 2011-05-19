desc "Copies swfdec formulae to homebrew directory"
task :install do
  BREW_DIR = '/usr/local/Library/Formula'

  Dir['./*.rb'].each do |file|
    cp file, File.join(BREW_DIR, File.basename(file))
  end
end
