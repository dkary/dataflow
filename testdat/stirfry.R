# make tasty food with R code

source("testdat/func.R")

# 1. Start the Rice
water = get("water", "faucet")
rice <- get("rice", "pantry")
rice_cooker <- get("rice_cooker", "cupboard")
cooked_rice <- rice_cooker |>
    add(rice) |>
    add(water) |>
    cook(min = 20)

# 2. Start the Tofu
tofu <- get("tofu", "fridge")
wok <- get("wok", "cupboard")
oil <- get("oil", "cupboard")
heated_wok <- wok |>
    add(oil) |>
    heat(temp = "hi", min = 3)
chopped_tofu <- chop(tofu)
seared_tofu <- heated_wok |>
    add(chopped_tofu) |>
    fry(temp = "med-hi", min = 5)

# 3. Add the Veggies
peppers <- get("peppers", "fridge")
onions <- get("onions", "pantry")
spices <- get("spices", "pantry")
mixing_bowl <- get("mixing_bowl", "cupboard")
veggies <- chop(peppers, onions)
mixed_veggies <- mixing_bowl |>
    add(veggies) |>
    add(oil) |>
    add(spices) |>
    mix()
stirfry <- seared_tofu |>
    add(mixed_veggies) |>
    fry(temp = "med", min = 5) |>
    fry(temp = "low", min = 10)

# 4. Serve!
bowls <- get("bowls", "cupboard")
chopsticks <- get("chopsticks", "cupboard")
bowls |>
    add(cooked_rice) |>
    add(stirfry) |>
    add(chopsticks) |>
    serve()
