import os
from datetime import datetime
from collections import defaultdict
from markdown2 import markdown_path


def extract_submission_date(readme_path):
    with open(readme_path, "r", encoding="utf-8") as f:
        readme_content = f.read()
        submission_date_start = readme_content.find("제출 일자\n") + len("제출 일자\n")
        submission_date_end = readme_content.find("\n", submission_date_start)
        submission_date_str = readme_content[submission_date_start:submission_date_end]
        submission_date = datetime.strptime(submission_date_str, "%Y년 %m월 %d일 %H:%M:%S")
        return submission_date


def update_main_readme(repo_path):
    main_readme_path = os.path.join(repo_path, "README.md")
    problem_folders = os.listdir(os.path.join(repo_path, "프로그래머스"))

    problem_info = defaultdict(list)

    for folder in problem_folders:
        problem_folder_path = os.path.join(repo_path, "프로그래머스", folder)
        readme_path = os.path.join(problem_folder_path, "README.md")
        if os.path.exists(readme_path):
            submission_date = extract_submission_date(readme_path)
            problem_info[submission_date].append((folder, readme_path))

    with open(main_readme_path, "w", encoding="utf-8") as main_readme:
        main_readme.write("# 프로그래머스 문제 목록\n\n")
        for submission_date in sorted(problem_info.keys(), reverse=True):
            main_readme.write(
                "## {}\n\n".format(submission_date.strftime("%Y년 %m월 %d일"))
            )
            for folder, readme_path in problem_info[submission_date]:
                problem_title = folder.split(".")[1].strip()
                level = folder.split(".")[0]
                main_readme.write("- 레벨: {}\n".format(level))
                main_readme.write("- 문제 번호: {}\n".format(folder.split(".")[0]))
                main_readme.write("- 제목: {}\n".format(problem_title))
                main_readme.write(
                    "- 제출 일자: {}\n".format(
                        submission_date.strftime("%Y년 %m월 %d일 %H:%M:%S")
                    )
                )
                main_readme.write(
                    "- [해당 문제로 이동]({})\n\n".format(
                        os.path.relpath(problem_folder_path, repo_path)
                    )
                )


if __name__ == "__main__":
    repository_path = "/path/to/your/repository"
    update_main_readme(repository_path)
