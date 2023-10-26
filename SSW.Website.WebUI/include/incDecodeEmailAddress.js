function sendEmail(encodedEmail)
{
  var email = "";

  // go through and decode the email address
  for (i=0; i < encodedEmail.length;)
  {
    // holds each letter (2 digits)
    var letter = "";
    letter = encodedEmail.charAt(i) + encodedEmail.charAt(i+1)

    // build the real email address
    email += String.fromCharCode(parseInt(letter,16));
    i += 2;
  }

  // do the mailto: link
  location.href = "mailto:" + email;
}
