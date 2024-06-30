package models

import "time"

type Food struct {
	Id              int       `json:"id"`
	Name            string    `json:"name"`
	IngredientName  string    `json:"ingredient_name"`
	Price           float32   `json:"price"`
	Quantity        float32   `json:"quantity"`
	MeasurementType string    `json:"measurement_type"`
	CreatedAt       time.Time `json:"created_at"`
	UpdatedAt       time.Time `json:"updated_at"`
}
