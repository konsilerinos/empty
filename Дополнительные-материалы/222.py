import os
import html

# Укажите путь к корневой директории, которую нужно отсканировать
# '.' означает текущую папку, в которой запущен скрипт
ROOT_DIR = '.' 

# Имя генерируемого файла
INDEX_NAME = 'index.html'

def generate_index(dir_path):
    try:
        # Получаем список всех элементов в текущей директории
        items = sorted(os.listdir(dir_path))
    except PermissionError:
        print(f"Нет доступа к директории: {dir_path}")
        return

    # Разделяем на папки и файлы для красивого отображения (сначала папки, потом файлы)
    dirs = []
    files = []
    
    for item in items:
        # Пропускаем сам файл index.html, чтобы он не дублировался в списке
        if item == INDEX_NAME:
            continue
            
        full_path = os.path.join(dir_path, item)
        if os.path.isdir(full_path):
            dirs.append(item + '/')
        else:
            files.append(item)

    # Вычисляем относительный путь для заголовка (имитация "Index of /...")
    rel_path = os.path.relpath(dir_path, ROOT_DIR)
    display_path = '/' if rel_path == '.' else '/' + rel_path.replace(os.sep, '/') + '/'

    # Начало HTML-шаблона в стиле классического листинга
    html_content = f"""<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index of {html.escape(display_path)}</title>
    <style>
        body {{ font-family: monospace; padding: 20px; }}
        h1 {{ font-size: 1.5em; margin-bottom: 20px; border-bottom: 1px solid #ccc; padding-bottom: 5px; }}
        ul {{ list-style-type: none; padding-left: 0; }}
        li {{ margin-bottom: 5px; }}
        a {{ text-decoration: none; color: #0000ee; }}
        a:hover {{ text-decoration: underline; }}
    </style>
</head>
<body>
    <h1>Index of {html.escape(display_path)}</h1>
    <ul>
"""

    # Добавляем ссылку на родительскую директорию (вверх на один уровень), если мы не в корне
    if dir_path != ROOT_DIR:
        html_content += '        <li><a href="../">Parent Directory</a></li>\n'

    # Добавляем ссылки на папки
    for d in dirs:
        safe_name = html.escape(d)
        html_content += f'        <li><a href="{safe_name}">{safe_name}</a></li>\n'

    # Добавляем ссылки на файлы
    for f in files:
        safe_name = html.escape(f)
        html_content += f'        <li><a href="{safe_name}">{safe_name}</a></li>\n'

    # Закрываем теги
    html_content += """    </ul>
</body>
</html>"""

    # Записываем готовый index.html в текущую папку
    index_file_path = os.path.join(dir_path, INDEX_NAME)
    with open(index_file_path, 'w', encoding='utf-8') as f:
        f.write(html_content)
    print(f"Создан: {index_file_path}")

def main():
    # os.walk(topdown=False) гарантирует, что мы можем корректно строить относительные пути,
    # но для генерации index.html стандартный обход сверху вниз (по умолчанию) тоже отлично подходит.
    for root, dirs, files in os.walk(ROOT_DIR):
        generate_index(root)

if __name__ == '__main__':
    main()
    input("\nНажмите Enter, чтобы закрыть программу...")
