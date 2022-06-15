class Validate{
static final RegExp _mobileRegex =RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
static String? validateMobileAddress(String mobile){
final _hashMatched= _mobileRegex.hasMatch(mobile);
if(!_hashMatched){
return'Please Enter valid mobile no.';
}
else{
return null;
}
}
}