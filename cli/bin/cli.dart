
const version = '0.0.1'; // Add this line

void main(List<String> arguments) {
  if(arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if(arguments.first == 'version') {
    print('CLI Version: $version');
  } else if(arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    print('Unknown command: ${arguments.first}');
  }
}

void searchWikipedia(List<String>? arguments) { // Add this new function and add ? to arguments type
  print('searchWikipedia received arguments: $arguments');
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}
