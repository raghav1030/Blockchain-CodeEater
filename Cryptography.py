from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.asymmetric import padding
from cryptography.exceptions import InvalidSignature


def generate_keys():
    private = rsa.generate_private_key(
        public_exponent=65537,
        key_size=2048,
    )
    public = private.public_key()
    return private, public


def sign(message, private):
    message = bytes(str(message), 'UTF-8')  # converting message into bytes
    signature = private.sign(
        message,
        padding.PSS(
            mgf=padding.MGF1(hashes.SHA256()),
            salt_length=padding.PSS.MAX_LENGTH
        ),
        hashes.SHA256()
    )
    return signature


def verifcation(message, public, sign):

    message = bytes(str(message), 'UTF-8')  # converting message into bytes
    try:
        public.verify(
            sign,
            message,
            padding.PSS(
                mgf=padding.MGF1(hashes.SHA256()),
                salt_length=padding.PSS.MAX_LENGTH
            ),
            hashes.SHA256()
        )
        return True
    except InvalidSignature:
        print("Error in Excecuting public key")
        return False
    except:
        return False


if __name__ == '__main__':

    pr, pu = generate_keys()
    # print ("public key >> ", pu)
    # print ("private key >> " , pr)

    pr1, pu1 = generate_keys()

    message = "My first cryptography Code"
    sig = sign(message, pr)
    # print (sig)

    verify = verifcation(message, pu, sig)

    if (verify):
        print("Verification Successful")
    else:
        print("Verification Failed")
