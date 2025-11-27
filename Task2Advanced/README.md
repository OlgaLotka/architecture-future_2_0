
### <a name="_u8xz25hbrgql"></a>**Интеграция с CI/CD и удалённым хранением состояния**

### <a name="_u8xz25hbrgql"></a>**Общее описание**
Состав:
*Файл с логикой для тераформа [main.tf](main.tf)
*Файл с описанием переменных [variables.tf](variables.tf)
*Файл со значениями переменных кроме сикретов [.tfvars](.tfvars)
*Фал с конфигом пайпа [terraform.yml](../.github/workflows/terraform.yml)

Я выбрала для пайпа GitHub Actions, конфиг его должен лежать в корме проекта

### <a name="_u8xz25hbrgql"></a>**Логика пайпа**
*Добавлены сиктеры в GitHub Actions secrets.PROVIDER_TOKEN, secrets.ACCESS_KEY, secrets.SECRET_KEY
*Пайп запускается по пушу в ветки master_new или для PR в ветку main
*Указано, что рабочей директорией является ./Task2Advanced/
*Для s3 нельзя напрямую передать ключ для подключения к клауду, поэтому в енвах указывает ключи и сикрет а для конфиге для тераформа ссылку на стейт
