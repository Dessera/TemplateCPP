#include <iostream>
#include <nlohmann/json.hpp>
#include <nlohmann/json_fwd.hpp>

int main() {
  nlohmann::json data = nlohmann::json::parse(R"({"key": "value"})");
  std::cout << data << std::endl;

  return 0;
}
