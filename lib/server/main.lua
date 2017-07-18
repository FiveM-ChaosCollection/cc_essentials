print("We got somewhere with the server")

if ChaosCollection then
  if ChaosCollection.Features then
    print("we have features")
    if ChaosCollection.Features.Essentials then
      print("we have essentials")
    else
      print("we DONT have essentials")
      ChaosCollection.Features.Essentials = true
      if ChaosCollection.Features.Essentials then
        print("we have essentials")
      else
        print("we DONT have essentials")
        ChaosCollection.Features.Essentials = true
      end
    end
  else
    print("we DONT have features")
  end
else
  print("we DONT have a collection")
end
