# 🛠 Sys Menu

Ferramenta tudo-em-um de diagnóstico e otimização do sistema Linux.

**Python UI** · **Shell backend** · **Multi-distro** · **3 abas**

## Interface

```
┌──────────────────────────────────────────────┐
│      🛠  SYS MENU  —  v6.0                     │
│  [1] 📊 Dash   [2] ⚡ Ações   [3] 📜 Output   │
└──────────────────────────────────────────────┘

┌─ 💻  SISTEMA ────────────────────────┐
│  CPU   Intel i7-4790 (4 núcleos)     │
│  Load  0.85 0.62 0.45                │
│  Uptime 2 hours 15 min               │
└──────────────────────────────────────┘
┌─ 📊  RECURSOS ───────────────────────┐
│  RAM   3.2G/7.7G  ████░░░░░░  42%    │
│  Disco 27G/47G    ██████░░░░  58%    │
│  Temp  55.0°C                         │
└──────────────────────────────────────┘
┌─ 🌐  REDE · 💾  ARMAZENAMENTO ──────┐
│  WiFi  -57 dBm  Rede: Familia...     │
│  Zram  1.9G     Swap: 1 dispositivo  │
│  Svcs  0        Boot: 17.0s          │
└──────────────────────────────────────┘
```

## 3 Abas

| Aba | Descrição |
|-----|-----------|
| **1** 📊 **Dashboard** | Visão geral com métricas em tempo real (CPU, RAM, disco, WiFi, zram, boot) |
| **2** ⚡ **Ações** | Todas as ferramentas: diagnóstico, rede, SMART, manutenção, segurança, extras |
| **3** 📜 **Output** | Output do último comando executado (fixo, sempre disponível) |

## Ações disponíveis

```
📊  Diagnóstico completo     🌐  WiFi + Rede (DNS, power save)
💾  Zram / SMART / Espaço    🧹  Manutenção (update, clean, trim)
🔒  Segurança + Utilizadores 🐳  Docker / Flatpak
🔄  Serviços (start/stop)    🏁  Auto-Pilot (tudo automático)
📋  Exportar diagnóstico
```

## Instalação

```bash
git clone https://github.com/anymousdark/sysmenu.git
cd sysmenu
./sysmenu
```

O script pergunta se queres instalar globalmente na primeira execução.  
Ou manualmente:

```bash
sudo cp sysmenu /usr/local/bin/
sysmenu
```

## Distribuições suportadas

Debian/Ubuntu, Fedora, Arch, openSUSE, Void — deteção automática do gestor de pacotes.

## Dependências opcionais

- `smartmontools` — saúde do disco
- `lm-sensors` — temperaturas
- `nvidia-smi` — GPU NVIDIA
- `iw`, `nmcli` — WiFi

## License

MIT
