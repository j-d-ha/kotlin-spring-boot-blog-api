package com.github.jdha.blogapi.health

import io.swagger.v3.oas.annotations.tags.Tag
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

data class Health(val status: String)

@RestController
@RequestMapping("/api/health")
@Tag(name = "Health", description = "Application health check")
class HealthController {

    @GetMapping fun health(): Health = Health("ok")
}
