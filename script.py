#!/usr/bin/env python

import os
from urllib import parse
from datetime import datetime
from collections import defaultdict

HEADER="""
# Swift 문제 풀이 목록
프로그래머스 및 백준 문제들을 정리한 Repository입니다!
"""

def extract_submission_date(readme_path):
    with open(readme_path, "r", encoding="utf-8") as f:
        readme_content = f.read()
        submission_date_start = readme_content.find("제출 일자\n") + len("제출 일자\n")
        submission_date_end = readme_content.find("\n", submission_date_start)
        submission_date_str = readme_content[submission_date_start:submission_date_end].strip()
        
        # '년', '월', '일', '시', '분', '초'를 기준으로 분리하여 날짜와 시간을 추출
        submission_date_str_split = submission_date_str.split(' ')
        year = int(submission_date_str_split[0][:-1])  # '년' 제거 후 연도 추출
        month = int(submission_date_str_split[1][:-1])  # '월' 제거 후 월 추출
        day = int(submission_date_str_split[2][:-1])  # '일' 제거 후 일 추출
        time_str = submission_date_str_split[3]  # 시간 추출
        
        # '시', '분', '초'를 ':'로 분리하여 시간 추출
        time_str_split = time_str.split(':')
        hour = int(time_str_split[0])
        minute = int(time_str_split[1])
        second = int(time_str_split[2])
        
        submission_date = datetime(year, month, day, hour, minute, second)
        return submission_date




def main():
    content = HEADER
    directory_count = 0

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
                content += "| 문제번호 | 링크 | 제출일자 |\n"
                content += "| ------------- | ------------- | ------------- |\n"
            directories.append(directory)

        for file in files:
            if file == 'README.md':
                if category not in solveds:
                    submission_date = extract_submission_date(os.path.join(root, file))
                    content += "| {} |[링크]({})|{}|\n".format(category, parse.quote(os.path.join(root, file)), submission_date.strftime("%Y-%m-%d"))
                    solveds.append(category)
                    directory_count += 1

    content = """
# Swift 문제 풀이 목록\n
프로그래머스 및 백준 문제들을 정리한 Repository입니다!\n
지금까지 총 **{}** 문제를 풀었습니다!\n
""".format(directory_count) + content
    with open("README.md", "w") as fd:
        fd.write(content)

if __name__ == "__main__":
    main()
