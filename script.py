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
    try:
        with open(readme_path, "r", encoding="utf-8") as f:
            readme_lines = f.readlines()
            for index, line in enumerate(readme_lines):
                if "제출 일자" in line:
                    submission_date_index = index + 2
                    submission_date_str = readme_lines[submission_date_index].strip()

                    # 날짜를 파싱하여 datetime 객체로 변환
                    try:
                        submission_date = datetime.strptime(submission_date_str, "%Y년 %m월 %d일 %H:%M:%S")
                    except ValueError:
                        print("이상한 데이터 발견: {}".format(submission_date_str))
                        submission_date = datetime(2024, 1, 1, 0, 0, 0)
                    return submission_date
            print("Submission Date를 찾을 수 없습니다.")
    except FileNotFoundError:
        print("README.md 파일을 찾을 수 없습니다.")



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
            if directory in ["프로그래머스"]:
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
                    if submission_date:
                        content += "| {} |[링크]({})|{}|\n".format(category, parse.quote(os.path.join(root, file)), submission_date.strftime("%Y-%m-%d"))
                    else:
                        content += "| {} |[링크]({})|{}|\n".format(category, parse.quote(os.path.join(root, file)), "제출 일자를 찾을 수 없음")
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
