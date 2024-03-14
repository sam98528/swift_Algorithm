def main():
    content = ""
    directory_count = 0

    directories = []
    solveds = []
    problems = []  # 문제 정보를 담을 리스트

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
                        problems.append((category, os.path.join(root, file), submission_date))
                    else:
                        problems.append((category, os.path.join(root, file), None))
                    solveds.append(category)
                    directory_count += 1

    # 제출일자를 기준으로 정렬
    sorted_problems = sorted(problems, key=lambda x: x[2] if x[2] else datetime(2024, 1, 1))

    for category, file_path, submission_date in sorted_problems:
        if submission_date:
            content += "| {} |[링크]({})|{}|\n".format(category, parse.quote(file_path), submission_date.strftime("%Y-%m-%d"))
        else:
            content += "| {} |[링크]({})|{}|\n".format(category, parse.quote(file_path), "제출 일자를 찾을 수 없음")

    content = """
# Swift 문제 풀이 목록\n
프로그래머스 및 백준 문제들을 정리한 Repository입니다!\n
지금까지 총 **{}** 문제를 풀었습니다!\n
""".format(directory_count) + content
    with open("README.md", "w") as fd:
        fd.write(content)
