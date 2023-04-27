#pragma once

#ifdef MyDLL_EXPORTS
#define MyDLL_API __declspec(dllexport)
#else
#define MyDLL_API __declspec(dllimport)
#endif

extern "C" {
MyDLL_API void helloWorld();
}