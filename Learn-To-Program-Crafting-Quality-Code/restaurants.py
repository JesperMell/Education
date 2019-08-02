def recommend(file, price, cuisines_list):


def read_restaurants(file)
  """ (file) -> (dict, dict, dict)

  Return a tuple of three dictionaries based on the information in the file
  - a dict of {restaurant name: rating%}
  - a dict of {price: list of restaurant names}
  - a dift of {cuisines: list of restaurant names}

  """
  name_to_string = {}
  price_to_names = { "$": [],"$$": [], "$$$": [], "$$$$": [] }
  cuisine_to_names = {}
