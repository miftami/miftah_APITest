function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = '';
  }
  var config = {
    env: env,
    username: 'miftah',
    password: 'mift4h',
    baseURL: 'https://petstore.swagger.io/v2'
  }

  karate.configure('connectTimeout',30000)
  karate.configure('readTimeout',30000)

  return config;
}