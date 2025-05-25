package com.github.jdha.blogapi.config

import io.swagger.v3.oas.models.OpenAPI
import io.swagger.v3.oas.models.info.Info
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration

@Configuration
class OpenApiConfig {

    @Bean
    @ConditionalOnProperty(
        value = ["springdoc.swagger-ui.enabled"],
        havingValue = "true",
        matchIfMissing = true,
    )
    fun openAPI(): OpenAPI {
        return OpenAPI()
            .info(
                Info()
                    .title("Blog API")
                    .description(
                        "REST API built with Kotlin and Spring Boot for blog platform"
                    )
                    .version("0.0.1")
            )
    }
}
