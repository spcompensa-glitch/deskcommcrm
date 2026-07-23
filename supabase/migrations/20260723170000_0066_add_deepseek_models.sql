-- Adiciona modelos DeepSeek V3 e R1
insert into public.ai_models (provider, model_id, display_name, description, context_window, input_price_per_million_cents, output_price_per_million_cents, supports_tools, is_default_for_provider)
values
  ('deepseek', 'deepseek-chat', 'DeepSeek V3 (Chat)', 'Flagship da DeepSeek - Excelente custo-benefício', 64000, 14, 28, true, true),
  ('deepseek', 'deepseek-reasoner', 'DeepSeek R1 (Reasoner)', 'Modelo de raciocínio lógico profundo do DeepSeek', 64000, 55, 219, false, false)
on conflict (provider, model_id) do nothing;
