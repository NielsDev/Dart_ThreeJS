library ThreeJSWrapper;

import 'dart:html';
import 'dart:js';
import 'dart:typed_data';
import 'dart:web_gl';
import 'dart:collection';

// ThreeBase object
part 'three_base.dart';
part 'three_object.dart';

// List that auto changes JsObject
part 'three_object_list.dart';
part 'three_list_list.dart';

// Core
part 'core/object3d.dart';
part 'core/geometry.dart';
part 'core/buffer_geometry.dart';
part 'core/face3.dart';
part 'core/buffer_attribute.dart';
part 'core/clock.dart';
part 'core/raycaster.dart';
part 'core/projector.dart';
part 'core/event_dispatcher.dart';

// Lights
part 'lights/light.dart';
part 'lights/point_light.dart';
part 'lights/hemisphere_light.dart';
part 'lights/ambient_light.dart';
part 'lights/area_light.dart';
part 'lights/spot_light.dart';
part 'lights/directional_light.dart';

// Math
part 'math/math.dart';
part 'math/quaternion.dart';
part 'math/euler.dart';
part 'math/vector2.dart';
part 'math/vector3.dart';
part 'math/vector4.dart';
part 'math/sphere.dart';
part 'math/box2.dart';
part 'math/box3.dart';
part 'math/matrix3.dart';
part 'math/matrix4.dart';
part 'math/color.dart';
part 'math/plane.dart';
part 'math/line3.dart';
part 'math/spline.dart';
part 'math/triangle.dart';
part 'math/frustum.dart';
part 'math/ray.dart';

// Materials
part 'materials/material.dart';
part 'materials/mesh_basic_material.dart';
part 'materials/mesh_normal_material.dart';
part 'materials/mesh_depth_material.dart';
part 'materials/mesh_face_material.dart';
part 'materials/mesh_lambert_material.dart';
part 'materials/mesh_phong_material.dart';
part 'materials/line_basic_material.dart';
part 'materials/line_dashed_material.dart';
part 'materials/point_cloud_material.dart';
part 'materials/shader_material.dart';
part 'materials/raw_shader_material.dart';
part 'materials/sprite_material.dart';
part 'materials/sprite_canvas_material.dart';

// Objects
part 'objects/mesh.dart';
part 'objects/skinned_mesh.dart';
part 'objects/bone.dart';
part 'objects/line.dart';
part 'objects/lod.dart';
part 'objects/point_cloud.dart';
part 'objects/sprite.dart';
part 'objects/morph_anim_mesh.dart';

// Scenes
part 'scenes/scene.dart';
part 'scenes/abstract_fog.dart';
part 'scenes/fog.dart';
part 'scenes/fog_exp2.dart';

// Cameras
part 'cameras/camera.dart';
part 'cameras/perspective_camera.dart';
part 'cameras/orthographic_camera.dart';
part 'cameras/cube_camera.dart';

// Textures
part 'textures/mapping_modes.dart';
part 'textures/texture.dart';
part 'textures/data_texture.dart';
part 'textures/compressed_texture.dart';
part 'textures/cube_texture.dart';

// Renderers
part 'renderers/abstract_renderer.dart';
part 'renderers/canvas_renderer.dart';
part 'renderers/webgl_renderer.dart';
part 'renderers/webgl_render_target.dart';
part 'renderers/webgl_render_target_cube.dart';

// Renderers/webgl
part 'renderers/webgl/webgl_program.dart';
part 'renderers/webgl/webgl_shader.dart';

// Extras
part 'extras/image_utils.dart';

// Extras/core
part 'extras/core/curve.dart';
part 'extras/core/curve_path.dart';
part 'extras/core/path.dart';
part 'extras/core/gyroscope.dart';
part 'extras/core/shape.dart';

// Extras/geometries
part 'extras/geometries/box_geometry.dart';
part 'extras/geometries/circle_geometry.dart';
part 'extras/geometries/extrude_geometry.dart';
part 'extras/geometries/icosahedron_geometry.dart';
part 'extras/geometries/lathe_geometry.dart';
part 'extras/geometries/octahedron_geometry.dart';
part 'extras/geometries/parametric_geometry.dart';
part 'extras/geometries/plane_geometry.dart';
part 'extras/geometries/polyhedron_geometry.dart';
part 'extras/geometries/ring_geometry.dart';
part 'extras/geometries/shape_geometry.dart';
part 'extras/geometries/sphere_geometry.dart';
part 'extras/geometries/tetrahedron_geometry.dart';
part 'extras/geometries/text_geometry.dart';
part 'extras/geometries/torus_geometry.dart';
part 'extras/geometries/torus_knot_geometry.dart';
part 'extras/geometries/tube_geometry.dart';

// Extras/helpers
part 'extras/helpers/arrow_helper.dart';
part 'extras/helpers/axis_helper.dart';
part 'extras/helpers/bounding_box_helper.dart';
part 'extras/helpers/camera_helper.dart';
part 'extras/helpers/directional_light_helper.dart';
part 'extras/helpers/edges_helper.dart';
part 'extras/helpers/face_normals_helper.dart';
part 'extras/helpers/grid_helper.dart';


// == CONSTANTS ==


// GL STATE CONSTANTS
final int CullFaceNone = context["THREE"]["CullFaceNone"];
final int CullFaceBack = context["THREE"]["CullFaceBack"];
final int CullFaceFront = context["THREE"]["CullFaceFront"];
final int CullFaceFrontBack = context["THREE"]["CullFaceFrontBack"];

final int FrontFaceDirectionCW = context["THREE"]["FrontFaceDirectionCW"];
final int FrontFaceDirectionCCW = context["THREE"]["FrontFaceDirectionCCW"];

// SHADOWING TYPES
final int BasicShadowMap = context["THREE"]["BasicShadowMap"];
final int PCFShadowMap = context["THREE"]["PCFShadowMap"];
final int PCFSoftShadowMap = context["THREE"]["PCFSoftShadowMap"];

// MATERIAL CONSTANTS

// side
final int FrontSide = context["THREE"]["FrontSide"];
final int BackSide = context["THREE"]["BackSide"];
final int DoubleSide = context["THREE"]["DoubleSide"];

// shading
final int NoShading = context["THREE"]["NoShading"];
final int FlatShading = context["THREE"]["FlatShading"];
final int SmoothShading = context["THREE"]["SmoothShading"];

// colors
final int NoColors = context["THREE"]["NoColors"];
final int FaceColors = context["THREE"]["FaceColors"];
final int VertexColors = context["THREE"]["VertexColors"];

// blending modes
final int NoBlending = context["THREE"]["NoBlending"];
final int NormalBlending = context["THREE"]["NormalBlending"];
final int AdditiveBlending = context["THREE"]["AdditiveBlending"];
final int SubstractiveBlending = context["THREE"]["SubstractiveBlending"];
final int MultiplyBlending = context["THREE"]["MultiplyBlending"];
final int CustomBlending = context["THREE"]["CustomBlending"];

// custom blending equations
final int AddEquation = context["THREE"]["AddEquation"];
final int SubstractEquation = context["THREE"]["SubstractEquation"];
final int ReverseSubstractEquation = context["THREE"]["ReverseSubstractEquation"];

// custom blending destination factors
final int ZeroFactor = context["THREE"]["ZeroFactor"];
final int OneFactor = context["THREE"]["OneFactor"];
final int SrcColorFactor = context["THREE"]["SrcColorFactor"];
final int OneMinusSrcColorFactor = context["THREE"]["OneMinusSrcColorFactor"];
final int SrcAlphaFactor = context["THREE"]["SrcAlphaFactor"];
final int OneMinusSrcAlphaFactor = context["THREE"]["OneMinusSrcAlphaFactor"];
final int DstAlphaFactor = context["THREE"]["DstAlphaFactor"];
final int OneMinusDstAlphaFactor = context["THREE"]["OneMinusDstAlphaFactor"];

// custom blending source factors
final int DstColorFactor = context["THREE"]["DstColorFactor"];
final int OneMinusDstColorFactor = context["THREE"]["OneMinusDstColorFactor"];
final int SrcAlphaSaturateFactor = context["THREE"]["SrcAlphaSaturateFactor"];

// TEXTURE CONSTANTS
final int MultiplyOperation = context["THREE"]["MultiplyOperation"];
final int MixOperation = context["THREE"]["MixOperation"];
final int AddOperation = context["THREE"]["AddOperation"];

// MAPPING MODES
// See mapping_modes.dart
//final Object UVMapping = context["THREE"]["UVMapping"];
//final Object CubeReflectionMapping = context["THREE"]["CubeReflectionMapping"];
//final Object CubeRefractionMapping = context["THREE"]["CubeRefractionMapping"];
//final Object SphericalReflectionMapping = context["THREE"]["SphericalReflectionMapping"];
//final Object SphericalRefractionMapping = context["THREE"]["SphericalRefractionMapping"];

// WRAPPING MODES
final int RepeatWrapping = context["THREE"]["RepeatWrapping"];
final int ClampToEdgeWrapping = context["THREE"]["ClampToEdgeWrapping"];
final int MirroredRepeatWrapping = context["THREE"]["MirroredRepeatWrapping"];

// FILTERS
final int NearestFilter = context["THREE"]["NearestFilter"];
final int NearestMipMapNearestFilter = context["THREE"][NearestMipMapNearestFilter];
final int NearestMipMapLinearFilter = context["THREE"]["NearestMipMapLinearFilter"];
final int LinearFilter = context["THREE"]["LinearFilter"];
final int LinearMipMapNearestFilter = context["THREE"]["LinearMipMapNearestFilter"];
final int LinearMipMapLinearFilter = context["THREE"]["LinearMipMapLinearFilter"];

// DATA TYPES
final int UnsignedByteType = context["THREE"]["UnsignedByteType"];
final int ByteType = context["THREE"]["ByteType"];
final int ShortType = context["THREE"]["ShortType"];
final int CustomBlendingUnsignedShortType = context["THREE"]["UnsignedShortType"];
final int IntType = context["THREE"]["IntType"];
final int UnsignedIntType = context["THREE"]["UnsignedIntType"];
final int FloatType = context["THREE"]["FloatType"];

// PIXEL TYPES
final int UnsignedShort4444Type = context["THREE"]["UnsignedShort4444Type"];
final int UnsignedShort5551Type = context["THREE"]["UnsignedShort5551Type"];
final int UnsignedShort565Type = context["THREE"]["UnsignedShort565Type"];

// PIXEL FORMATS
final int AlphaFormat = context["THREE"]["AlphaFormat"];
final int RGBFormat = context["THREE"]["RGBFormat"];
final int RGBAFormat = context["THREE"]["RGBAFormat"];
final int LuminanceFormat = context["THREE"]["LuminanceFormat"];
final int LuminanceAlphaFormat = context["THREE"]["LuminanceAlphaFormat"];

// COMPRESSED TEXTURE FORMATS
final int RGB_S3TC_DXT1_Format = context["THREE"]["RGB_S3TC_DXT1_Format"];
final int RGBA_S3TC_DXT1_Format = context["THREE"]["RGBA_S3TC_DXT1_Format"];
final int RGBA_S3TC_DXT3_Format = context["THREE"]["RGBA_S3TC_DXT3_Format"];
final int RGBA_S3TC_DXT5_Format = context["THREE"]["RGBA_S3TC_DXT5_Format"];