-- FOCO: tabela que guarda os treinos de cada usuário.
-- Cole tudo isto em Supabase > SQL Editor > New query > Run.

create table if not exists public.foco_data (
  user_id uuid primary key references auth.users (id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.foco_data enable row level security;

drop policy if exists "foco ler o proprio" on public.foco_data;
drop policy if exists "foco criar o proprio" on public.foco_data;
drop policy if exists "foco atualizar o proprio" on public.foco_data;

create policy "foco ler o proprio" on public.foco_data
  for select using (auth.uid() = user_id);
create policy "foco criar o proprio" on public.foco_data
  for insert with check (auth.uid() = user_id);
create policy "foco atualizar o proprio" on public.foco_data
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
