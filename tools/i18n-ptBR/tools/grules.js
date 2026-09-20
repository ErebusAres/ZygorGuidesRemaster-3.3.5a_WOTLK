'use strict';
// Template translations for the most repetitive guide sentences ("Click X", "Use your X on Y", "Go north to X", ...).
// Only texts where the variable parts are proper names / coordinates / numbers are translated here (anything else stays pending
// for manual translation). Output: tr/guides/<group>/000_auto.txt  (manual batches 001.txt... override these).
//   node grules.js            regenerate all groups and print coverage
//   node grules.js sample N   print N random auto translations (review)
const fs = require('fs'), path = require('path');
const { TR } = require('./lua.js');
const GSRC = path.join(TR, '..', 'gsrc'), GTR = path.join(TR, 'guides');

const W = "[A-Z0-9][A-Za-z0-9'’\\-]*";
const CONN = '(?:of|the|and|de|la|del|von|van|du|des)';
const BAD = '(?!(?:Here|It|Them|This|That|These|Those|There|Him|Her|You|Your|He|She|They|We|If|When|Then|After|Once|Make|Be|Do)\\b)';
const N = `${BAD}(${W}(?:\\s+(?:${CONN}\\s+)*${W})*)`;          // one captured proper name
const C = '(\\d+(?:\\.\\d+)?,\\s*\\d+(?:\\.\\d+)?)';              // coordinates
const DIRS = 'north|south|east|west|northeast|northwest|southeast|southwest';
const DIR = { north: 'norte', south: 'sul', east: 'leste', west: 'oeste', northeast: 'nordeste', northwest: 'noroeste', southeast: 'sudeste', southwest: 'sudoeste' };
const VEH = { boat: 'barco', ship: 'navio', zeppelin: 'zepelim', train: 'trem', tram: 'bonde', blimp: 'dirigível', elevator: 'elevador' };
const PLACE = { cave: 'na caverna', mine: 'na mina', building: 'no prédio', house: 'na casa', tower: 'na torre', temple: 'no templo', tunnel: 'no túnel', hut: 'na cabana', tent: 'na tenda', inn: 'na estalagem', church: 'na igreja', crypt: 'na cripta', barn: 'no celeiro', cellar: 'no porão', basement: 'no porão', fort: 'no forte', castle: 'no castelo', camp: 'no acampamento', shop: 'na loja', ruins: 'nas ruínas', keep: 'na fortaleza', cathedral: 'na catedral', library: 'na biblioteca', palace: 'no palácio', town: 'na cidade', city: 'na cidade', village: 'na vila', dungeon: 'na masmorra', chamber: 'na câmara', room: 'na sala' };
const P = Object.keys(PLACE).join('|');
const RANK = 'Friendly|Honored|Revered|Exalted|Neutral';
const DET = '(?:(?:the|a|an|your|his|her|their|its)\\s+)?';

// [regex, replacement string | function(match)]
const RULES = [
  [new RegExp(`^Go (${DIRS}) to (?:the )?${N}$`), (m) => `Ir para o ${DIR[m[1]]} até ${m[2]}`],
  [new RegExp(`^Go (${DIRS}) to ${C}$`), (m) => `Ir para o ${DIR[m[1]]} até ${m[2]}`],
  [new RegExp(`^Go (${DIRS})$`), (m) => `Ir para o ${DIR[m[1]]}`],
  [new RegExp(`^Go to (?:the )?${N}$`), 'Ir para $1'],
  [new RegExp(`^Go to ${C}$`), 'Ir até $1'],
  [new RegExp(`^Go back to (?:the )?${N}$`), 'Voltar para $1'],
  [new RegExp(`^Go outside to ${C}$`), 'Sair até $1'],
  [new RegExp(`^Go outside to ${N}$`), 'Sair para $1'],
  [/^Go outside$/, 'Sair'],
  [new RegExp(`^Go (?:inside|into) (?:the )?(${P}) to ${C}$`), (m) => `Entrar ${PLACE[m[1]]} até ${m[2]}`],
  [new RegExp(`^Go (?:inside|into) (?:the )?(${P})$`), (m) => `Entrar ${PLACE[m[1]]}`],
  [new RegExp(`^Go (?:inside|into) (?:the )?${N} to ${C}$`), 'Entrar em $1 até $2'],
  [new RegExp(`^Go (?:inside|into) (?:the )?${N}$`), 'Entrar em $1'],
  [new RegExp(`^Enter (?:the )?(${P}) at ${C}$`), (m) => `Entrar ${PLACE[m[1]]} em ${m[2]}`],
  [new RegExp(`^Enter (?:the )?(${P})$`), (m) => `Entrar ${PLACE[m[1]]}`],
  [new RegExp(`^Enter (?:the )?${N} at ${C}$`), 'Entrar em $1 em $2'],
  [new RegExp(`^Enter (?:the )?${N}$`), 'Entrar em $1'],
  [new RegExp(`^Leave (?:the )?${N}$`), 'Sair de $1'],
  [new RegExp(`^Hearth to ${N}$`), 'Usar a Hearthstone para ir a $1'],
  [new RegExp(`^Fly to ${N}$`), 'Voar para $1'],
  [new RegExp(`^Ride the (${Object.keys(VEH).join('|')}) to ${N}$`), (m) => `Pegar o ${VEH[m[1]]} para ${m[2]}`],
  [new RegExp(`^Travel to ${N}$`), 'Viajar para $1'],
  [new RegExp(`^Visit (?:the )?${N} in ${N}((?:, ${N})*)$`), (m) => `Visitar ${m[1]} em ${m[2]}${m[3]}`],
  [new RegExp(`^Visit (?:the )?${N}$`), 'Visitar $1'],
  [new RegExp(`^Explore (?:the )?${N}$`), 'Explorar $1'],
  [new RegExp(`^Kill (?:the )?${N}$`), 'Matar $1'],
  [new RegExp(`^Kill (\\d+) ${N}$`), 'Matar $1 $2'],
  [new RegExp(`^Defeat (?:the )?${N}$`), 'Derrotar $1'],
  [new RegExp(`^Defeat (\\d+) ${N}$`), 'Derrotar $1 $2'],
  [new RegExp(`^Destroy (?:the )?${N}$`), 'Destruir $1'],
  [new RegExp(`^Destroy (\\d+) ${N}$`), 'Destruir $1 $2'],
  [new RegExp(`^Free (?:the )?${N}$`), 'Libertar $1'],
  [new RegExp(`^Free (\\d+) ${N}$`), 'Libertar $1 $2'],
  [new RegExp(`^Click (?:on )?${DET}${N}$`), 'Clicar em $1'],
  [new RegExp(`^Click (?:on )?${DET}${N} in your bags$`), 'Clicar em $1 nas suas bolsas'],
  [new RegExp(`^Click (?:on )?${DET}${N} next to ${DET}${N}$`), 'Clicar em $1 ao lado de $2'],
  [new RegExp(`^Click (?:on )?${DET}${N} at ${C}$`), 'Clicar em $1 em $2'],
  [new RegExp(`^Use ${DET}${N}$`), 'Usar $1'],
  [new RegExp(`^Use ${DET}${N} on ${DET}${N}$`), 'Usar $1 em $2'],
  [new RegExp(`^Use ${DET}${N} on ${DET}${N} around this area$`), 'Usar $1 em $2 nesta área'],
  [new RegExp(`^Use ${DET}${N} in your bags$`), 'Usar $1 nas suas bolsas'],
  [new RegExp(`^Use ${DET}${N} at ${C}$`), 'Usar $1 em $2'],
  [new RegExp(`^Use ${DET}${N} next to ${DET}${N}$`), 'Usar $1 ao lado de $2'],
  [new RegExp(`^Talk to ${DET}${N}$`), 'Falar com $1'],
  [new RegExp(`^Get ${DET}${N}$`), 'Obter $1'],
  [new RegExp(`^Get (\\d+) ${N}$`), 'Obter $1 $2'],
  [new RegExp(`^Read ${DET}${N}$`), 'Ler $1'],
  [new RegExp(`^Open ${DET}${N}$`), 'Abrir $1'],
  [new RegExp(`^Unlock ${DET}${N}$`), 'Desbloquear $1'],
  [new RegExp(`^Unlock ${DET}${N} with ${DET}${N}$`), 'Destrancar $1 com $2'],
  [new RegExp(`^Interact with gameobject: (.+)$`), 'Interagir com o objeto: $1'],
  [new RegExp(`^Progress for ${N}$`), 'Progresso em $1'],
  [new RegExp(`^Fish up: (.+)$`), 'Pescar: $1'],
  [new RegExp(`^Complete ${DET}${N}$`), 'Completar $1'],
  [new RegExp(`^Congratulations! You are now (${RANK}) with ${DET}${N}!$`), 'Parabéns! Você agora é $1 com $2!'],
  [new RegExp(`^Congratulations, you are now (${RANK}) with ${DET}${N}!$`), 'Parabéns, você agora é $1 com $2!'],
  [/^Congratulations, you are now level (\d+)!$/, 'Parabéns, você agora é nível $1!'],
];

function translate(en) {
  for (const [re, out] of RULES) {
    const m = re.exec(en); if (!m) continue;
    return typeof out === 'function' ? out(m) : en.replace(re, out);
  }
  return null;
}

function readTsv(f) { return fs.existsSync(f) ? fs.readFileSync(f, 'utf8').split('\n').filter(Boolean).map((l) => { const i = l.indexOf('\t'); return [Number(l.slice(0, i)), l.slice(i + 1)]; }) : []; }
function manualIds(g) { // ids already covered by manual batches (not the auto file)
  const dir = path.join(GTR, g); const s = new Set(); if (!fs.existsSync(dir)) return s;
  for (const f of fs.readdirSync(dir).filter((x) => /\.txt$/.test(x) && x !== '000_auto.txt')) for (const l of fs.readFileSync(path.join(dir, f), 'utf8').split('\n')) { const m = /^(\d+) = /.exec(l); if (m) s.add(Number(m[1])); }
  return s;
}

const args = process.argv.slice(2);
let total = 0, hit = 0; const all = [];
for (const f of fs.readdirSync(GSRC).filter((x) => /\.tsv$/.test(x))) {
  const g = f.replace('.tsv', ''); const done = manualIds(g); const lines = [];
  for (const [id, en] of readTsv(path.join(GSRC, f))) {
    total++; if (done.has(id)) continue;
    const pt = translate(en); if (pt == null) continue;
    lines.push(id + ' = ' + pt); hit++; all.push([en, pt]);
  }
  fs.mkdirSync(path.join(GTR, g), { recursive: true });
  fs.writeFileSync(path.join(GTR, g, '000_auto.txt'), lines.join('\n') + (lines.length ? '\n' : ''), 'utf8');
}
console.log('template rules translated ' + hit + ' of ' + total + ' texts (' + Math.round(100 * hit / total) + '%)');
if (args[0] === 'sample') { let s = Number(args[2] || 5); const n = Number(args[1] || 30); for (let i = 0; i < n; i++) { s = (s * 1103515245 + 12345) & 0x7fffffff; const [en, pt] = all[s % all.length]; console.log(en + '\n   => ' + pt); } }
