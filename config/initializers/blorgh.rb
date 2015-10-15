# NOTE: It's very important here to use the String version of the class,
# rather than the class itself. If you were to use the class, Rails would
# attempt to load that class and then reference the related table. This could
# lead to problems if the table wasn't already existing. Therefore, a String
# should be used and then converted to a class using constantize in the engine
# later on.

Blorgh.author_class = "User"
