
const version = '0.0.1'; // Add this line

void main(List<String> arguments) {
  if(arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if(arguments.first == 'version') {
    print('CLI Version: $version');
  } else {
    print('Unknown command: ${arguments.first}');
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
