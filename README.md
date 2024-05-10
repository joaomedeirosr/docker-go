## Desafio Go

Este desafio consistiu em criar uma imagem Go, partindo de uma imagem base oficial da própria Go Lang. Feito isso, o principal objetivo do desafio foi realizar uma otimicao nesta imagem, para praticar um dos conceito importantes do docker que é o `Multi-stage build`.

O `Multi-stage build` possibilita o usuário otimizar sua imagem para que ela fique muito mais leve e rápida, em relacao ao processo de build. Além disso, uma outra vantagem é que imagens mais leves ocupam menos espaco o que pode reduizr custos dependendo do ambiente de Deploy


#### Para acessar a imagem no docker hub basta acessar:
<https://hub.docker.com/r/jvmedeirosr/prod-go>


|  Name   | Size  | Version |
|  ----   | ----  | ------- |
| golang  | 890MB | latest  |
| golang  | 232MB | alpine  |
| prod-go | 1.95MB| scratch + alpine|

Veja, que a imagem construída com Multi-stage build no caso a `prod-go` ela é aproximadamente 450x mais leve do que uma imagem oficial go lang, logo temos que o processo de Multi-stage build é extremamente eficaz em muitos cenários o que nos leva a concluir que é uma boa prática, sempre que possível tentar otimizar suas imagens docker.


#### Contribua