/*
	Simple OpenID Plugin
	http://code.google.com/p/openid-selector/
	
	This code is licensed under the New BSD License.
*/

var providers_large = {
    facebook : {
                 name: 'Facebook',
                 url: 'javascript:FBLogin();'
           }, 
	google : {
		name : 'Google',
		url : 'https://www.google.com/accounts/o8/id'
	},
	yahoo : {
		name : 'Yahoo',
		url : 'http://me.yahoo.com/'
	},
	
};

var providers_small = {
	
};

//openid.locale = 'en';
//openid.sprite = 'en'; // reused in german& japan localization
//openid.demo_text = 'In client demo mode. Normally would have submitted OpenID:';
//openid.signin_text = 'Sign-In';
//openid.image_title = 'log in with {provider}';
