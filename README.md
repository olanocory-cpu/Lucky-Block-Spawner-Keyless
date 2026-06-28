<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lucky Block Spawner - Keyless</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Press+Start+2P&family=VT323&display=swap');
        
        :root {
            --bg: #0f0f1a;
            --accent: #ffd700;
            --text: #ffffff;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            background: linear-gradient(135deg, #0f0f1a 0%, #1a1a2e 100%);
            color: var(--text);
            font-family: 'Press Start 2P', system-ui;
            line-height: 1.6;
            min-height: 100vh;
            overflow-x: hidden;
        }
        
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 40px 20px;
        }
        
        header {
            text-align: center;
            margin-bottom: 60px;
            position: relative;
        }
        
        .title {
            font-size: 3.5rem;
            background: linear-gradient(90deg, #ffd700, #ff00ff, #00ffff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 0 0 30px rgba(255, 215, 0, 0.8);
            margin-bottom: 15px;
            animation: glow 2s ease-in-out infinite alternate;
        }
        
        .subtitle {
            font-family: 'VT323', monospace;
            font-size: 1.8rem;
            color: #00ffcc;
            margin-bottom: 20px;
        }
        
        .badge {
            display: inline-block;
            background: #ff00ff;
            color: white;
            padding: 8px 20px;
            border-radius: 50px;
            font-size: 1rem;
            margin: 10px;
            box-shadow: 0 0 20px #ff00ff;
        }
        
        .hero {
            background: rgba(255, 215, 0, 0.1);
            border: 4px solid var(--accent);
            border-radius: 20px;
            padding: 40px;
            margin-bottom: 60px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .hero::before {
            content: '🍀';
            font-size: 12rem;
            position: absolute;
            opacity: 0.1;
            top: -50px;
            right: -40px;
        }
        
        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            margin-bottom: 60px;
        }
        
        .card {
            background: rgba(255, 255, 255, 0.05);
            border: 2px solid #ffd700;
            border-radius: 15px;
            padding: 30px;
            transition: all 0.3s;
        }
        
        .card:hover {
            transform: translateY(-10px) scale(1.03);
            box-shadow: 0 0 40px rgba(255, 215, 0, 0.5);
        }
        
        .card h3 {
            color: #ffd700;
            margin-bottom: 15px;
            font-size: 1.4rem;
        }
        
        .how-to {
            background: #1a1a2e;
            border: 3px dashed #00ffcc;
            border-radius: 15px;
            padding: 40px;
            margin-bottom: 60px;
        }
        
        .code-block {
            background: #000;
            border: 2px solid #00ffcc;
            border-radius: 10px;
            padding: 25px;
            font-family: monospace;
            color: #00ffcc;
            overflow-x: auto;
            white-space: pre-wrap;
            margin: 20px 0;
        }
        
        button {
            background: linear-gradient(45deg, #ffd700, #ff00ff);
            color: #000;
            border: none;
            padding: 15px 35px;
            font-family: 'Press Start 2P';
            font-size: 1.1rem;
            cursor: pointer;
            border-radius: 50px;
            transition: all 0.3s;
            box-shadow: 0 10px 30px rgba(255, 215, 0, 0.4);
        }
        
        button:hover {
            transform: scale(1.1);
            box-shadow: 0 15px 40px rgba(255, 0, 255, 0.6);
        }
        
        footer {
            text-align: center;
            padding: 40px;
            color: #888;
            border-top: 2px solid #333;
            margin-top: 60px;
        }
        
        @keyframes glow {
            from { text-shadow: 0 0 20px #ffd700; }
            to { text-shadow: 0 0 40px #ff00ff, 0 0 60px #00ffff; }
        }
        
        .blocks {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin: 40px 0;
        }
        
        .block {
            width: 80px;
            height: 80px;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            border: 4px solid;
            box-shadow: 0 0 25px currentColor;
            transition: all 0.4s;
        }
        
        .block:hover {
            transform: rotate(15deg) scale(1.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1 class="title">LUCKY BLOCK<br>SPAWNER</h1>
            <p class="subtitle">KEYLESS • 2026</p>
            <div>
                <span class="badge">Tephtory Hub</span>
                <span class="badge">Open Source</span>
                <span class="badge">Instant Spawn</span>
            </div>
        </header>

        <div class="hero">
            <h2 style="font-size: 2.2rem; margin-bottom: 20px;">🍀 THE ULTIMATE LUCKY BLOCK GIVER 🍀</h2>
            <p style="font-size: 1.4rem; max-width: 700px; margin: 0 auto 30px;">
                Spawn Lucky, Super, Diamond, Rainbow & Galaxy Blocks instantly.<br>
                No key. No hassle. Pure chaos.
            </p>
            
            <div class="blocks">
                <div class="block" style="background: #ffd700; color: #000; border-color: #ffaa00;">🍀</div>
                <div class="block" style="background: #00aaff; color: #fff; border-color: #00ffff;">⭐</div>
                <div class="block" style="background: #00ffff; color: #000; border-color: #ffffff;">💎</div>
                <div class="block" style="background: #ff69b4; color: #fff; border-color: #ff00ff;">🌈</div>
                <div class="block" style="background: #8a2be2; color: #fff; border-color: #ff00ff;">🌌</div>
            </div>
            
            <button onclick="window.scrollTo({top: document.querySelector('.how-to').offsetTop - 100, behavior: 'smooth'})">
                GET THE SCRIPT →
            </button>
        </div>

        <h2 style="text-align: center; margin-bottom: 40px; font-size: 2rem; color: #ffd700;">✦ FEATURES ✦</h2>
        
        <div class="features">
            <div class="card">
                <h3>🌟 INSTANT SPAWNING</h3>
                <p>One-click spawning of multiple block types with no cooldown or restrictions.</p>
            </div>
            <div class="card">
                <h3>🔓 100% KEYLESS</h3>
                <p>No key system. No Discord. No waiting. Just execute and dominate.</p>
            </div>
            <div class="card">
                <h3>🎮 BEAUTIFUL GUI</h3>
                <p>Draggable, clean, retro-futuristic interface with glowing buttons.</p>
            </div>
            <div class="card">
                <h3>💎 MULTIPLE BLOCKS</h3>
                <p>Lucky • Super • Diamond • Rainbow • Galaxy</p>
            </div>
        </div>

        <div class="how-to">
            <h2 style="text-align: center; margin-bottom: 30px; color: #00ffcc;">HOW TO USE</h2>
            
            <ol style="font-size: 1.3rem; max-width: 800px; margin: 0 auto; padding-left: 40px;">
                <li style="margin-bottom: 20px;">Join <strong>Be a Lucky Block</strong> (or compatible game)</li>
                <li style="margin-bottom: 20px;">Use any Roblox executor (Delta, Solara, Codex, etc.)</li>
                <li style="margin-bottom: 20px;">Paste the script below</li>
                <li>Enjoy unlimited lucky blocks</li>
            </ol>
            
            <h3 style="margin: 40px 0 15px; text-align: center; color: #ffd700;">SCRIPT</h3>
            <div class="code-block" id="script-code">
-- Tephtory Hub - Lucky Block Spawner
loadstring(game:HttpGet("https://raw.githubusercontent.com/olanocory-cpu/Lucky-Block-Spawner-Keyless/main/Tephtory-Hub.lua"))()
            </div>
            
            <div style="text-align: center; margin-top: 30px;">
                <button onclick="copyScript()">📋 COPY SCRIPT</button>
            </div>
        </div>

        <div style="text-align: center; margin: 60px 0;">
            <h2 style="color: #ff00ff; margin-bottom: 25px;">MADE FOR MAXIMUM CHAOS</h2>
            <p style="max-width: 600px; margin: 0 auto 30px; font-size: 1.2rem;">
                By MANANASINING • Powered by pure meme energy
            </p>
        </div>

        <footer>
            <p>⭐ Star the repo if you're getting rich off lucky blocks</p>
            <p style="margin-top: 20px; font-size: 0.9rem;">
                © 2026 • No rights reserved • Spawn responsibly (or don't)
            </p>
        </footer>
    </div>

    <script>
        function copyScript() {
            const code = document.getElementById('script-code').innerText;
            navigator.clipboard.writeText(code).then(() => {
                const btns = document.querySelectorAll('button');
                const original = btns[btns.length-1].innerHTML;
                btns[btns.length-1].innerHTML = '✅ COPIED!';
                setTimeout(() => {
                    btns[btns.length-1].innerHTML = original;
                }, 2000);
            });
        }
        
        // Easter egg
        document.addEventListener('keydown', (e) => {
            if (e.key === 'l' && e.ctrlKey) {
                alert('🍀 YOU ARE NOW LUCKY 🍀');
            }
        });
    </script>
</body>
</html>
