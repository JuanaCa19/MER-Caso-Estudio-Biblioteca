# Sistema de Gestión de Biblioteca

## Caso de estudio

La **Biblioteca San Rafael** actualmente controla sus préstamos con fichas de papel y ya no da abasto. Necesitan un sistema que permita saber qué libros tienen, cuántas copias físicas hay de cada uno, quién los tiene prestados, y cuáles préstamos están vencidos o generan multas.

## Requisitos

**1. Usuarios**
- Se registran con documento, nombre, dirección, teléfono y correo.
- Pueden tener préstamos activos y multas pendientes.

**2. Libros**
- Cada libro tiene ISBN, título, autor, género y año de publicación.
- Un libro puede tener varias copias físicas (ejemplares).

**3. Copias de libro**
- Cada copia física es un ejemplar independiente del mismo libro, con su propio estado (disponible, prestada, dañada, extraviada).
- Un libro tiene muchas copias; cada copia pertenece a un solo libro.

**4. Préstamos**
- Un usuario solicita en préstamo una copia específica de un libro (no el libro en general).
- Se registra fecha de préstamo y fecha de devolución.
- Una copia puede ser prestada muchas veces a lo largo del tiempo; un usuario puede tener muchos préstamos.

**5. Multas**
- Si un usuario no devuelve a tiempo, se genera una multa asociada al usuario.
- Cada multa tiene un monto y un estado de pago (pagada o no).

## Preguntas que debe responder la base de datos

- ¿Qué copias de libros están prestadas actualmente?
- ¿Qué préstamos están vencidos?
- ¿Qué usuarios tienen multas sin pagar?
- ¿Cuántas copias disponibles hay de un libro específico?
- ¿Cuál es el libro más prestado?

## Modelo Entidad-Relación (MER)

### Entidades y atributos

**Usuario**
- documento (PK)
- nombre
- dirección
- teléfono
- correo

**Libro**
- isbn (PK)
- título
- autor
- género
- año

**CopiaLibro** *(entidad débil, depende de Libro)*
- idCopia (PK parcial)
- isbnLibro (FK a Libro)
- estado

**Multa**
- idMulta (PK)
- monto
- pagada



