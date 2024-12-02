// // module aliases
// var Engine = Matter.Engine,
//   Render = Matter.Render,
//   Runner = Matter.Runner,
//   Bodies = Matter.Bodies,
//   Composite = Matter.Composite;
// 짧게 쓰기 위한 변수 처리
// Object Destructuring
const { Engine, Render, Runner, Bodies, Composite } = Matter;

// // create an engine
// var engine = Engine.create();
// 물리 시뮬레이션을 위한 엔진 생성 (필수)
const anyEngine = Engine.create();

// // create a renderer
// var render = Render.create({
//   element: document.body,
//   engine: engine,
// });
// 화면에 그리기 위한 렌더러 생성 (P5에서 그릴거라면 안필수)
const anyRender = Render.create({
  element: document.body,
  engine: anyEngine,
  options: { width: 600, height: 800 },
});

// // create two boxes and a ground
// var boxA = Bodies.rectangle(400, 200, 80, 80);
// var boxB = Bodies.rectangle(450, 50, 80, 80);
// var ground = Bodies.rectangle(400, 610, 810, 60, { isStatic: true });
// 월드에 집어넣을 바디를 생성
// 두개는 박스, 하나는 같은 박스지만, 스태틱 처리되서 바닥으로 역할함.
let boxA = Bodies.rectangle(400, 200, 80, 80);
let boxB = Bodies.rectangle(450, 50, 80, 80);
let circle = Bodies.circle(200, 100, 80, 80);
let ground = Bodies.rectangle(400, 610, 810, 60, { isStatic: true });

// // add all of the bodies to the world
// Composite.add(engine.world, [boxA, boxB, ground]);
// 월드에다가 만든 녀석들을 탈탈 집어넣기. 집어넣기 위해서 콤포지트를 사용함.
Composite.add(anyEngine.world, [boxA, boxB, ground]);
Composite.add(anyEngine.world, circle);

// // run the renderer
// Render.run(render);
// 렌더 모듈에게 만든 렌더객체 넣어서 굴리라고 말하기
Render.run(anyRender);

// // create runner
// var runner = Runner.create();
// 계속 실행을 보장하는 러너 생성
const anyRunner = Runner.create();

// // run the engine
// Runner.run(runner, engine);
// 러너 모듈에게 생성된 러너와 생성된 엔진을 집어넣고 시동 걸기 (무한 실행 보장)
Runner.run(anyRunner, anyEngine);
