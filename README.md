# FOCO

App de treino instalável (PWA). Treinos A, B, C por dia da semana, vídeo de execução pelo YouTube,
check semanal automático e sincronização entre aparelhos.

## Como colocar no ar

1. **Supabase (banco de dados, grátis):** crie um projeto em supabase.com, abra *SQL Editor*,
   cole o conteúdo de `supabase-setup.sql` e clique em *Run*.
2. Em *Authentication > Sign In / Providers > Email*, **desligue "Confirm email"**.
3. Em *Project Settings > API*, copie a **Project URL** e a chave **anon public** para o arquivo `config.js`.
4. **GitHub Pages:** em *Settings > Pages*, escolha *Deploy from a branch*, branch `main`, pasta `/ (root)`.
5. Abra o link do Pages no celular e use *Adicionar à tela inicial*.

## Observações

- O usuário vira um e-mail interno (`usuario@foco.app`), então não existe "esqueci minha senha".
- Os dados de cada conta ficam no Supabase e uma cópia fica no aparelho, para abrir sem internet.
- Se dois aparelhos editarem ao mesmo tempo, vale a última alteração.
