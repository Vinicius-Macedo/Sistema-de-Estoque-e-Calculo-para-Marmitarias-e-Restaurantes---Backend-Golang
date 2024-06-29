package models

import "time"

type IngredientsAttachedToRecipe struct {
	Name            string  `json:"name"`
	MeasurementType string  `json:"measurement_type"`
	Quantity        float32 `json:"quantity"`
}

type Recipe struct {
	Id           int       `json:"id"`
	Name         string    `json:"name"`
	Description  string    `json:"description"`
	Category     string    `json:"category"`
	ExtraCost    float32   `json:"extra_cost"`
	Yield        int       `json:"yield"`
	DeliveryCost float32   `json:"delivery_cost"`
	SellingPrice float32   `json:"selling_price"`
	CreatedAt    time.Time `json:"created_at"`
	UpdatedAt    time.Time `json:"updated_at"`
	Ingredients  []IngredientsAttachedToRecipe
}
