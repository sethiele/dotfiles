require 'fileutils'

desc "Create symlinks for all versioned files in $HOME"
task :setup do
  dotfiles = `git ls-files [a-z]*`.split
  top_level_files = dotfiles.map{|path| path.gsub(/\/.*/, '') }.uniq
  top_level_dotfiles = top_level_files.map{|f| ".#{f}"}
  backup_name = "#{File.expand_path File.dirname(__FILE__)}/.backup/#{Time.now.strftime "%Y-%m-%d_%H-%M-%S"}/"
  top_level_dotfiles.each_with_index do |file, index|
    dotfile = File.expand_path("~/#{file}")
    if File.exists?(dotfile)
      Dir.mkdir(backup_name) unless Dir.exist?(backup_name)
      FileUtils.mv(dotfile, backup_name)
      puts "Move #{dotfile} to #{backup_name}"
    end
    FileUtils.ln_s File.expand_path("../#{top_level_files[index]}", __FILE__), dotfile
    puts "Link #{dotfile}"
  end
end
