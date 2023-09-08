#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <array>

using namespace std;

string get_icon();
string exec(const char *cmd);

int main()
{
  cout << exec("pamixer --get-volume");
  return 0;
}

string get_icon(string input)
{
  int value = std::stoi(input);
  bool isMuted = exec("pamixer --get-mute") == "true";
  if (isMuted)
  {
    return "󰸈";
  }

  if (value <= 25)
  {
    return "";
  }
}

string exec(const char *cmd)
{
  array<char, 128> buffer;
  string result;
  unique_ptr<FILE, decltype(&pclose)> pipe(popen(cmd, "r"), pclose);
  if (!pipe)
  {
    throw std::runtime_error("popen() failed!");
  }
  while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr)
  {
    result += buffer.data();
  }
  return result;
}
