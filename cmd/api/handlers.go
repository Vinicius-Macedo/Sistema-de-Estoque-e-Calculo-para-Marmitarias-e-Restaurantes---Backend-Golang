package main

import (
	"backend/cmd/internal/models"
	"encoding/json"
	"fmt"
	"net/http"
	"time"
)

func (app *application) Home(w http.ResponseWriter, r *http.Request) {
	var payload = struct {
		Status  string `json:"status"`
		Message string `json:"message"`
		Version string `json:"version"`
	}{
		Status:  "active",
		Message: "Restaurants API is up and running",
		Version: "1.0.0",
	}

	out, err := json.Marshal(payload)
	if err != nil {
		fmt.Println(err)
	}

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	w.Write(out)
}

func (app *application) Foods(w http.ResponseWriter, r *http.Request) {

	var foods []models.Food
	potato := models.Food{
		Id:              1,
		Name:            "potato",
		IngredientName:  "potato",
		Price:           1.99,
		Quantity:        1.550,
		MeasurementType: "kg",
		CreatedAt:       time.Now(),
		UpdatedAt:       time.Now(),
	}

	foods = append(foods, potato)

	out, err := json.Marshal(foods)
	if err != nil {
		fmt.Println(err)
	}

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	w.Write(out)
}

func (app *application) Ingredients(w http.ResponseWriter, r *http.Request) {
	var ingredients []models.Ingredient
	potato := models.Ingredient{
		Id:        1,
		Name:      "potato",
		CreatedAt: time.Now(),
		UpdatedAt: time.Now(),
	}

	ingredients = append(ingredients, potato)

	out, err := json.Marshal(ingredients)
	if err != nil {
		fmt.Println(err)
	}

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	w.Write(out)
}

func (app *application) Recipes(w http.ResponseWriter, r *http.Request) {
	var recipes []models.Recipe

	marmita := models.Recipe{
		Id:           1,
		Name:         "marmita",
		Description:  "acompanha arroz, feijão, omelete e frango assado",
		Category:     "marmitas",
		ExtraCost:    2.00,
		Yield:        1,
		DeliveryCost: 0.00,
		SellingPrice: 20.00,
		Ingredients: []models.IngredientsAttachedToRecipe{
			{
				Name:            "potato",
				MeasurementType: "kg",
				Quantity:        0.150,
			},
		},
	}

	recipes = append(recipes, marmita)

	out, err := json.Marshal(recipes)

	if err != nil {
		fmt.Println(err)
	}

	w.Header().Set("Content-Type", "application/json")
	w.WriteHeader(http.StatusOK)
	w.Write(out)

}
