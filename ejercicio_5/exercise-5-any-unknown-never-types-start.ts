/**
 * START: Follow the instructions below.
 */

// Add the `any` type to fix the type errors in the following code.
let currency: any = { name: "Indian rupee" };

currency.code = "THB";

currency = "Baht";

// Fix the if statement in this function so the type of `value` is narrowed to `string`.
function countryNameLength(value: unknown) {
    if (typeof value === "string") { // Se cambió el tipo de comparación a "string"
        console.log(value.length);
    }
}

countryNameLength("United States of America");

// Fix the type error we see when calling this function.
// Hint: Replace one of the `never` types with a different type.
function throwCountryError(message: string): never { // Se cambió el tipo de `message` a `string`
    throw new Error(`Could not find country: ${message}`);
}

throwCountryError("Narnia");

// ----

export {};
// any:

// Representa una variable de cualquier tipo.
// Útil cuando no estás seguro del tipo o cuando el tipo exacto no es crítico.
// Puede disminuir la ventaja del sistema de tipos fuerte si se usa en exceso.

// unknown:

// Representa un valor cuyo tipo no se conoce en tiempo de compilación.
// Necesita verificaciones de tipo o conversiones explícitas antes de operar.
// Proporciona mayor seguridad de tipos que any al manejar datos dinámicos.

// never:

// Representa un tipo de valor que nunca ocurre.
// Se utiliza en funciones que nunca devuelven (lanzan excepciones o entran en bucles infinitos).
// Indica situaciones donde el programa nunca continúa su ejecución después de ciertos puntos.