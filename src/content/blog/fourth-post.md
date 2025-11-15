---
title: 'Жизнеспособные приложения - Как создать?'
tags: ['MVP', 'шаблон', 'приложение', '7 дней', 'scaffold']
description: 'Минимально жизнеспособное приложение (MJA) — шаблон за 7 дней'
pubDate: 'Jun 01 2024'
heroImage: '../../assets/1fe4401ef2e1660ad1403df65785d499.jpg'
---

## Что такое MJA

MJA — это **MVP**, но без красивостей: работает, приносит пользу, собирает метрики.

---

## День 1 — Идея и скоуп

- **Боль**: пользователь не успевает отследить расходы
- **Решение**: приложение, которое просит ввести сумму **один раз в день**
- **Метрика**: DAU, % ввода суммы

---

## День 2 — Дизайн-система

- **1 шрифт** (Roboto)
- **2 цвета** (primary + error)
- **3 компонента** (кнопка, инпут, карточка)
- **Figma-community шаблон**: «Expense-Day-MJA»

---

## День 3 — Архитектура

- **Single-activity**
- **3 экрана**: Splash → Input → History
- **1 Room-таблица**: expenses (date, sum, category)

---

## День 4 — Логика

- **Notification в 20:00** (WorkManager)
- **Ввод суммы за 2 клика** (Quick-Tiles)
- **Offline-first** → никаких регистраций

---

## День 5 — Тесты

- **Unit**: ViewModel + Room
- **UI**: 3 espresso-теста (ввод, показ списка, удаление)
- **Performance**: cold-start <800 мс

---

## День 6 — Полировка

- **Размер APK** < 5 МБ (R8 + webp)
- **Батарея** < 1 % в день (Benchmark)
- **Accessibility**: контраст 4.5:1

---

## День 7 — Релиз

- **RuStore Console** → загрузка APK
- **Описание**: 2 предложения + 3 скриншота
- **Ключевые слова**: «расходы», «за 10 секунд», «без регистрации»

---

## Список библиотек

```kotlin
implementation("androidx.room:room-ktx:2.7.0")
implementation("androidx.work:work-runtime-ktx:2.10.0")
implementation("androidx.compose.material3:material3:1.3.0")
implementation("com.jakewharton.threetenabp:threetenabp:1.4.8")
// Всего 5 зависимостей
```
