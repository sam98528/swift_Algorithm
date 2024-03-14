#!/usr/bin/env python

import os
from urllib import parse
from datetime import datetime
from collections import defaultdict


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
    
    content = "| 알고리즘 사이트 | 난이도 | 문제번호 | 링크 | 제출일자 |\n" + "| ------------- | ------------- | ------------- | ------------- | ------------- |\n"
    content_entries = []
    sorting_entries = []
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
            if directory in ["프로그래머스", "백준"]:
                temp = directory
        for file in files:
            if file == 'README.md':
                if category not in solveds:
                    submission_date = extract_submission_date(os.path.join(root, file))
                    if submission_date:
                        entry = "| {} | {} |[Link]({})|{}|\n".format(temp, directory, category, parse.quote(os.path.join(root)), submission_date.strftime("%Y-%m-%d"))
                    else:
                        entry = "| {} | {} |[Link]({})|{}|\n".format(directory, category, parse.quote(os.path.join(root, file)), "제출 일자를 찾을 수 없음")
                    sorting_entries.append(entry)
                    solveds.append(category)
                    directory_count += 1
    for entry in content_entries:
        content += entry
    for entry in sorting_entries:
        content += entry
    # 날짜를 기준으로 정렬
    # sorted_content_entries = sorted(sorting_entries, key=lambda x: datetime.strptime(x.split("|")[-1].strip(), "%Y-%m-%d"), reverse=True)



    # 정렬된 내용을 content에 추가
    
    content = """# Swift 문제 풀이 목록\n 프로그래머스 및 백준 문제들을 정리한 Repository입니다!\n 
지금까지 총 **{}** 문제를 풀었습니다!\n 
자동으로 업데이트 중!\n 
""".format(directory_count) + content

    with open("README.md", "w") as fd:
        fd.write(content)


if __name__ == "__main__":
    main()
