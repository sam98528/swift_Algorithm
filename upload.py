#!/usr/bin/env python

import os
from urllib import parse

HEADER="""
# Swift 문제 풀이 목록
프로그래머스 및 백준 문제들을 정리한 Repository입니다!
"""

def main():
  content = ""
  content += HEADER
  
  directories = []
  solveds = []
  
  for root, dirs, files in os.walk("."):
    dirs.sort()
    if root == '.':
      for dir in ('.git', '.github'):
        try:
          dirs.remove(dir)
        except ValueError:
          pass
      continue
    
    category = os.path.basename(root)
    
    if category == 'images':
      continue
      
    directory = os.path.basename(os.path.dirname(root))
    
    if directory == '.':
      continue
      
    if directory not in directories:
      if directory in ["프로그래머스","백준"]:
        content += "## 🐶 {}\n".format(directory)
      else:
        content += "### 🙉 Level {}\n".format(directory)
        content += "| 문제번호 | 링크 |\n"
        content += "| :--------: | :--------: |\n"
      directories.append(directory)
      
    for file in files:
      if file == 'README.md':
        if category not in solveds:
          content += "| {} |[링크]({})|\n".format(category, parse.quote(os.path.join(root, file)))
          solveds.append(category)
          
  with open("README.md", "w") as fd:
    fd.write(content)
    
if __name__ == "__main__":
  main()
