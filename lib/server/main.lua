print("We got somewhere with the server")
createPprint().pprint(exports)
createPprint().pprint(exports.ChaosCollection)


-- register feature
if exports.ChaosCollection and exports.ChaosCollection.AvailableFeatures then
  if exports.ChaosCollection.AvailableFeatures.Essentials == nil then
    exports.ChaosCollection.AvailableFeatures.Essentials = true
    print("[CC-Essentials-LOG] Registered feature `Essentials' with ChaosCollection.AvailableFeatures")
  else
    print("[CC-Essentials-ERROR] Failed to register feature `Essentials' with ChaosCollection.AvailableFeatures: Already registered!")
  end
else
  print("[CC-Essentials-ERROR] Failed to register feature `Essentials' with ChaosCollection.AvailableFeatures: No such variable!")
end
