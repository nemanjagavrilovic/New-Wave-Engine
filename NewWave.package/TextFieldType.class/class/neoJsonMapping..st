accessing
neoJsonMapping: mapper
	"For inheritance mapping to work, the schema/classname must be self,
	but the instance variables have to be enumerated manually per class"
	super neoJsonMapping: mapper.