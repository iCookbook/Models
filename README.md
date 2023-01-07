# Models

This module presents a layer responsible for the application data models

## API models

API provides large amount of data

- [Response](Models/Sources/API/Response.swift): server response
- [Digest](Models/Sources/API/Digest.swift): represents different food data: calories, vitamins etc.
- [Hit](Models/Sources/API/Hit.swift) wrapper: contains recipe and link to itself
- [Images](Models/Sources/API/Images.swift): links to images with different types
- [Links](Models/Sources/API/Links.swift): links
- [Recipe](Models/Sources/API/Recipe.swift): main recipe model

## Filters

API has different filters. All types of filters are described in `Filters`.

- [Cuisine](Models/Sources/Filters/Cuisine.swift): cuisine types
- [Diet](Models/Sources/Filters/Diet.swift): different diets
- [Dish](Models/Sources/Filters/Dish.swift): dish types
- [Meal](Models/Sources/Filters/Meal.swift): meal types

## Persistence

Models that represent managed object models from [Persistence](https://github.com/iCookbook/Persistence) module

- [RecipeData](Models/Sources/Persistence/RecipeData.swift) represents [Recipe](https://github.com/iCookbook/Persistence/blob/master/Persistence/Sources/Models/Recipe%2BCoreDataProperties.swift) managed object model
- [StepData](Models/Sources/Persistence/StepData.swift) represents [Step](https://github.com/iCookbook/Persistence/blob/master/Persistence/Sources/Models/Step%2BCoreDataProperties.swift) managed object model

---

For details, read [GitHub Wiki](https://github.com/iCookbook/Models/wiki) documentation
