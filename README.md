# learning-ruby_on_rails

ð±ð±ð± æ¥æ¬äººã¨ã³ã¸ãã¢ã®åºç¤æé¤ã¨ãã¦ã®"Ruby on Rails"ãå­¦ç¿ããã  

åºç¤çãªé¨åã¨ããä½¿ç¨ããããªã¦ã¼ã¶èªè¨¼ãDeviseãä½¿ç¨ãã¦å®è£ããã  

ä»¥ä¸ã®2ã¤ã®æè¡ãä½¿ç¨ããã  

- Ruby on Rails
- PostgreSQL

![ææç©](./.development/img/fruit.gif)  

> **Warning**  
> ããã¾ã§ã"Ruby on Rails"ã«è§¦ãããã¨ãç®çã¨ãã¦ãããããã»ã­ã¥ãªãã£å¯¾ç­ã¯æªå®è£ã§ãã  
> å·ä½çã«ã¯XSSæ»æã®èå¼±æ§ãã¦ã¼ã¶ã®å¥åå¤ã®æªæ¤è¨¼ãªã©ã®åé¡ç¹ãããã¾ãã  

## å®è¡æ¹æ³

ä»¥ä¸ã®ã³ãã³ããé ã«å®è¡ããã  

```shell
docker compose up db -d [--build]
docker compose up web -d [--build]
```

`docker compose up db -d`ã³ãã³ãã§PostgreSQLãã¼ã¿ãã¼ã¹ãä½æã  
ãããå®è¡ããæ®µéã§ãã­ã¼ã«ã«(ãã¹ã)ãã·ã³ã«æ¥ç¶ãã¦ãããããã­ã¼ã«ã«ãããã¼ã¿ãã¼ã¹ã«ã¢ã¯ã»ã¹å¯è½ã  

| è¨­å® | è¨­å®å¤ |
| ---- | ---- |
| host | localhost |
| port | 5432 |
| user | rails_study |
| password | password |

---

æ¬¡ã«ã`docker compose up web -d`ãå®è¡ããã  
ããã§Railsãµã¼ããç«ã¡ä¸ããã  

## èªåç¨ã¡ã¢

ååæã¯`docker-compose run web rails new . --force --no-deps --database=postgresql`ã³ãã³ãã§ãã¤ã­ã¤ã­ãªãã¼ã¿ãä½æããã  

```shell
# ã¢ãã«ã®ä½æ
rails generate model <ã¢ãã«å> ã«ã©ã å:ãã¼ã¿å ã«ã©ã å:ãã¼ã¿å ã«ã©ã å:ãã¼ã¿å
# docker-compose run web rails generate model <ã¢ãã«å> ã«ã©ã å:ãã¼ã¿å ã«ã©ã å:ãã¼ã¿å ã«ã©ã å:ãã¼ã¿å

# ã³ã³ãã­ã¼ã©ã®ä½æ
rails generate controller <ã³ã³ãã­ã¼ã©å> <ã¡ã½ããå>
# docker-compose run web rails generate controller <ã³ã³ãã­ã¼ã©å> <ã¡ã½ããå>
```

ãã¤ã°ã¬ã¼ã·ã§ã³ãããã«ã¯ããã  

```shell
rails db:migrate RAILS_ENV=development
# docker compose run web rails db:migrate RAILS_ENV=development
```
