-- register feature
if exports.ChaosCollection && exports.ChaosCollection.AvailableFeatures then
  if exports.ChaosCollection.AvailableFeatures.Essentials == nil then
    exports.ChaosCollection.AvailableFeatures.Essentials = true
    print("[CC-Essentials-LOG] Registered feature `Essentials' with ChaosCollection.AvailableFeatures")
  else
    print("[CC-Essentials-ERROR] Failed to register feature `Essentials' with ChaosCollection.AvailableFeatures: Already registered!")
  end
else
  print("[CC-Essentials-ERROR] Failed to register feature `Essentials' with ChaosCollection.AvailableFeatures: No such variable!")
end

-- activate/deactivate feature

AddEventHandler('onResourceStart', function(resouce)
  if exports.ChaosCollection && exports.ChaosCollection.LoadedFeatures then
    if exports.ChaosCollection.LoadedFeatures.Essentials then
      print("[CC-Essentials-ERROR] Failed to load feature `Essentials' with ChaosCollection.LoadedFeatures: Already loaded!")
      CancelEvent()
    else
      exports.ChaosCollection.LoadedFeatures.Essentials = true
      print("[CC-Essentials-LOG] Loaded feature `Essentials' on ChaosCollection.LoadedFeatures")
    end
  else
    print("[CC-Essentials-ERROR] Failed to load feature `Essentials' with ChaosCollection.LoadedFeatures: No such variable!")
  end
end)

AddEventHandler('onResourceStop', function(resouce)
  if exports.ChaosCollection && exports.ChaosCollection.LoadedFeatures then
    if not exports.ChaosCollection.LoadedFeatures.Essentials then
      print("[CC-Essentials-ERROR] Failed to unload feature `Essentials' with ChaosCollection.LoadedFeatures: Not loaded!")
      CancelEvent()
    else
      exports.ChaosCollection.LoadedFeatures.Essentials = false
      print("[CC-Essentials-LOG] Unloaded feature `Essentials' on ChaosCollection.LoadedFeatures")
    end
  else
    print("[CC-Essentials-ERROR] Failed to unload feature `Essentials' with ChaosCollection.LoadedFeatures: No such variable!")
  end
end)
