import crafttweaker.item.IItemStack;
//Use pure daisy to get bog oak:
val woodProgressionArray =[
  <immersiveengineering:treated_wood>,
  <rockhounding_surface:bog_logs:0>,
  <rockhounding_surface:bog_logs:1>,
  <rockhounding_surface:bog_logs:3>,
  <rockhounding_surface:fossil_logs:0>,
  <rockhounding_surface:fossil_logs:1>,
  <rockhounding_surface:fossil_logs:2>,
  <rockhounding_surface:fossil_logs:3>,
  <rockhounding_surface:petrified_logs:0>,
  <rockhounding_surface:petrified_logs:1>,
  <rockhounding_surface:petrified_logs:2>,
  <rockhounding_surface:petrified_logs:3>,
  <rockhounding_surface:cold_logs:0>,
  <rockhounding_surface:cold_logs:1>,
  <rockhounding_surface:cold_logs:2>,
  <rockhounding_surface:cold_logs:3>
] as IItemStack[];
scripts.functions.addToPureDaisyStages(woodProgressionArray, 60);
