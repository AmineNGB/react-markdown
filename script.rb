def launch_push_github
    write_file
    git_push
end

def write_file
    File.write("dummy.html", "git pushing", mode: "a")
end

def git_push
    system("git add . ; git commit -m '#{Time.now}' ; git push origin master")
end


rand(1..4).times do
    launch_push_github
end
