echo "Hello World"

WORD='Ansh!' # variable names can not start with number

echo "Way 1 (accessing variable in double quotes! it worked):$WORD" # displaying value of the variable

echo 'Way 2 (accessing variable in single quote! does not work): $WORD' # single quote doesn't recognize a variable

echo "Way 3 (accessing variable having variable name enclosed in curly braces and prefixed with $ sign): ${WORD}" # alternative way to access variable 
