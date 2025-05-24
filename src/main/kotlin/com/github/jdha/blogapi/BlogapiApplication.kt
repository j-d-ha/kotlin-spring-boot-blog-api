package com.github.jdha.blogapi

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication class BlogapiApplication

fun main(args: Array<String>) {
    runApplication<BlogapiApplication>(*args)
}
