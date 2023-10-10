# mime_mover
Automatically organize your files in a directory in subdirectories based on their mime type

# How to make it executable
```
chmod +x ./mime_mover.sh
```
# How to use
Assume that we want to organize all files in our ~/Download directory
```
./mime_mover.sh ~/Downloads
File: /Users/kpatronas/Downloads/Advanced Computer Vision with Python - Full Course.mp4, MIME Type: video/mp4, Status: Not Open
Moved '/Users/kpatronas/Downloads/Advanced Computer Vision with Python - Full Course.mp4' to 'video/mp4' directory.
File: /Users/kpatronas/Downloads/Build 12 Data Science Apps with Python and Streamlit - Full Course.webm, MIME Type: video/webm, Status: Not Open
Moved '/Users/kpatronas/Downloads/Build 12 Data Science Apps with Python and Streamlit - Full Course.webm' to 'video/webm' directory.
File: /Users/kpatronas/Downloads/Build 12 Data Science Apps with Python and Streamlit - Full Course.webm_audio.webm, MIME Type: video/webm, Status: Not Open
Moved '/Users/kpatronas/Downloads/Build 12 Data Science Apps with Python and Streamlit - Full Course.webm_audio.webm' to 'video/webm' directory.
File: /Users/kpatronas/Downloads/Build 12 Data Science Apps with Python and Streamlit - Full Course.webm_video.webm, MIME Type: video/webm, Status: Not Open
Moved '/Users/kpatronas/Downloads/Build 12 Data Science Apps with Python and Streamlit - Full Course.webm_video.webm' to 'video/webm' directory.
File: /Users/kpatronas/Downloads/Build a Social Media App with Django – Python Web Framework Tutorial.webm, MIME Type: video/webm, Status: Not Open
Moved '/Users/kpatronas/Downloads/Build a Social Media App with Django – Python Web Framework Tutorial.webm' to 'video/webm' directory.
File: /Users/kpatronas/Downloads/Build a Social Media App with Django – Python Web Framework Tutorial.webm_audio.webm, MIME Type: video/webm, Status: Not Open
Moved '/Users/kpatronas/Downloads/Build a Social Media App with Django – Python Web Framework Tutorial.webm_audio.webm' to 'video/webm' directory.
File: /Users/kpatronas/Downloads/Build a Social Media App with Django – Python Web Framework Tutorial.webm_video.webm, MIME Type: video/webm, Status: Not Open
Moved '/Users/kpatronas/Downloads/Build a Social Media App with Django – Python Web Framework Tutorial.webm_video.webm' to 'video/webm' directory.
File: /Users/kpatronas/Downloads/Data Analysis with Python - Full Course for Beginners (Numpy, Pandas, Matplotlib, Seaborn).mp4.part, MIME Type: video/mp4, Status: Open
File: /Users/kpatronas/Downloads/Dynamic Programming - Learn to Solve Algorithmic Problems & Coding Challenges.webm, MIME Type: video/webm, Status: Not Open
```

Now files that were not open by a process have moved to
```
~/mime_master
```
We can view the structure with find
```
./mime_mover/video/webm/Dynamic Programming - Learn to Solve Algorithmic Problems & Coding Challenges.webm_audio.webm
./mime_mover/video/webm/Easy CD-CI with Jenkins, Docker Swarm and Docker secrets.webm
./mime_mover/video/mp4/Learn PostgreSQL Tutorial - Full Course for Beginners.mp4
./mime_mover/video/mp4/Advanced Computer Vision with Python - Full Course.mp4
./mime_mover/video/mp4/Full Ethical Hacking Course - Network Penetration Testing for Beginners (2019).mp4
./mime_mover/video/mp4/Learn Go Programming - Golang Tutorial for Beginners.mp4
./mime_mover/video/mp4/SQL Tutorial - Full Database Course for Beginners.mp4
./mime_mover/video/mp4/Python Django Web Framework - Full Course for Beginners.mp4
./mime_mover/video/mp4/Git and GitHub for Beginners - Crash Course.mp4
./mime_mover/video/mp4/OpenCV Course - Full Tutorial with Python.mp4
./mime_mover/text/x-shellscript/h.sh
./mime_mover/application/x-bittorrent/[hisgames.org]remedium_sentinels.torrent
```
