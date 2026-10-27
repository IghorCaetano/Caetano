# [Diagnostico de Churn]


## 📌 Visão Geral
Este projeto visa analisar o perfil dos usuarios que deixam de utilizar a plataforma e o seu motivo para isso.

📄 [Veja o template da apresentação](https://github.com/IghorCaetano/Caetano/blob/main/Churn/reports/figures/Apresentacao_Diagnostico_Churn_Onboarding.pptx)

📄 [Veja o template do notebook](https://github.com/IghorCaetano/Caetano/blob/main/Churn/notebooks/Estatistica%20I.ipynb)

## 💼 Entendimento do Negócio

**Tipos de Análise Realizados:**
- Confirmamos o NPS como sinalizador precoce robusto de insatisfação.
- Segmentamos os assinantes em 5 grupos estratégicos para orientar réguas de relacionamento

  
**Principais Indicadores Chave de Desempenho:**
- Causas de Churn (Pareto)
- NPS como Farol

## 📊 Análise do Modelo Atual

Analisamos as taxas de churn dos clientes e aonde acontecem com maior frequência e seus motivos.


_Considerações Importantes:_
1. Os dados são anônimos para proteger a privacidade dos usuários.
   
_Etapas do Pré-processamento no Pipeline:_
1. Normalização dos Dados
2. Tratamento de Valores Ausentes
3. Codificação de Variáveis Categóricas

## 🤖 Modelagem e Avaliação

Utilizamos Modelo RFM Ativo, Cohort de Safras, entre outros.


## 📈 Insights e Conclusões

Identificamos o maior gargalo operacional do produto na etapa de assinou_plano, onde perdemos 60,49% do tráfego que assiste à primeira aula antes de efetivar o pagamento.

Causas de Churn (Pareto): Mapeamos que Preço, Falta de Conteúdo Novo e Bugs Técnicos explicam 75,45% de toda a evasão.

## 📜 Estrutura do Projeto

A estrutura de diretórios do projeto foi organizada da seguinte forma:
```
├── README.md 
├── models
├── notebooks 
├── reports
│ └── figures 
│    └── Apresentacao_Diagnostico_Churn_Onboarding.ppt
├── requirements.txt

```


