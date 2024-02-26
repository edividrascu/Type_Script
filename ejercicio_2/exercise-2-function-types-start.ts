/**
 * START: Follow the instructions below.
 */

// Add types to this function declaration.
function doubleThePopulation(value: number): number {
    return value * 2;
}

// Correct or remove the function calls which cause type errors.
doubleThePopulation(5);

// El valor "6.12" es una cadena, se cambiará a un número válido.
doubleThePopulation(6.12);

// Se cambiará el guion bajo por un guion en el número.
doubleThePopulation(8526);

// Se cambiará el valor booleano por un número.
doubleThePopulation(Number(false));

// Alter this function so the `language2` parameter is optional.
// Hint: Check `language2` is not `undefined` before passing it to `console.log()`.
function languagesSpoken(country: string, language1: string, language2?: string): void {
    console.log(`The languages spoken in ${country} are:`);

    console.log(language1);

    // Se verificará si language2 no es undefined antes de imprimirlo.
    if (language2 !== undefined) {
        console.log(language2);
    }
}

languagesSpoken("Colombia", "Spanish", "English");

languagesSpoken("Greece", "Greek");

languagesSpoken("New Zealand", "English", "Māori");

// ----

export {};
