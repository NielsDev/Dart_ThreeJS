import 'lib/threejs_wrapper.dart' as THREE;
import 'dart:html';

THREE.Scene scene;
THREE.Camera camera;
THREE.CanvasRenderer renderer;
THREE.Mesh mesh;

void init()
{
  scene = new THREE.Scene();
  camera = new THREE.PerspectiveCamera(75, 640 / 480, 1, 10000);
  camera.position.z = 1000;
  
  THREE.BoxGeometry geometry = new THREE.BoxGeometry(200, 200, 200);
  THREE.MeshBasicMaterial material = new THREE.MeshBasicMaterial({ "color": 0xFF0000, "wireframe": true });
  mesh = new THREE.Mesh(geometry, material);
  
  scene.add(mesh);
  
  renderer = new THREE.CanvasRenderer();
  renderer.setSize(640, 480);
  
  document.body.append(renderer.domElement);
}

void animate(num time)
{
  window.requestAnimationFrame(animate);
  
  mesh.rotation.x += 0.01;
  mesh.rotation.y += 0.02;
  
  renderer.render(scene, camera);
}

void main() 
{
  init();
  animate(0);
}