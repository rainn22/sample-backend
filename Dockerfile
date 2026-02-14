# Use Java 17 runtime
FROM eclipse-temurin:17-jdk

# App folder inside container
WORKDIR /app

# Copy all project files
COPY . .

# Make mvnw executable
RUN chmod +x mvnw

# Build jar
RUN ./mvnw clean package -DskipTests

# Run the jar
CMD ["java", "-jar", "target/sample-0.0.1-SNAPSHOT.jar"]
