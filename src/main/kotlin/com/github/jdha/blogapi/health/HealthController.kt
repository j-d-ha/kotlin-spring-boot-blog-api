package com.github.jdha.blogapi.health

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

data class Health(val status: String)

@RestController
@RequestMapping("/api/health")
class HealthController {
    @RequestMapping fun health(): Health = Health("ok")
}
