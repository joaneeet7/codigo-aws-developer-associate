exports.handler = (event, context, callback) => {
    callback(null, "Hola, " + event.who + "!");
};