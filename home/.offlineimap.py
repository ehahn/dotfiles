from subprocess import check_output

def get_password():
    return check_output(['pass', 'uberspace.de'])[:-1]
