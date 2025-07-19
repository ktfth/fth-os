#!/bin/bash

# Script para construir FTH OS

set -e

echo "🚀 Construindo FTH OS - Ultimate Web Development Linux"
echo "=================================================="

# Verificar se está executando como root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Este script deve ser executado como root (use sudo)"
    exit 1
fi

# Verificar dependências
echo "📋 Verificando dependências..."
if ! command -v lb &> /dev/null; then
    echo "❌ live-build não está instalado. Instalando..."
    apt update
    apt install -y live-build
fi

# Limpar build anterior se existir
if [ -d "binary" ] || [ -d "cache" ] || [ -d "chroot" ]; then
    echo "🧹 Limpando build anterior..."
    lb clean --purge
fi

# Configurar build
echo "⚙️  Configurando build..."
./auto/config

# Iniciar build
echo "🔨 Iniciando construção da imagem..."
echo "⏰ Isso pode levar um tempo considerável..."

lb build

# Verificar se o build foi bem-sucedido
if [ -f *.iso ]; then
    iso_file=$(ls *.iso | head -n 1)
    iso_size=$(du -h "$iso_file" | cut -f1)
    echo ""
    echo "✅ Build concluído com sucesso!"
    echo "📀 Imagem criada: $iso_file"
    echo "📏 Tamanho: $iso_size"
    echo ""
    echo "🎯 Para testar a imagem:"
    echo "   • Use uma máquina virtual (VirtualBox, VMware, etc.)"
    echo "   • Grave em um pendrive com 'dd' ou Rufus/Balena Etcher"
    echo "   • Use 'sudo dd if=$iso_file of=/dev/sdX bs=4M status=progress'"
    echo ""
    echo "🔧 Login padrão:"
    echo "   • Usuário: user"
    echo "   • Senha: user"
    echo ""
    echo "📚 Documentação completa no README.md"
    echo "=================================================="
else
    echo "❌ Erro na construção da imagem!"
    exit 1
fi
