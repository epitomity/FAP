
import java.security.NoSuchAlgorithmException;
import java.util.logging.*;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.*;

public class Security {

    //Optional Code for non-static key generation
    public static byte[] GenKey() {
        try {
            // Key Generator to be used with AES Algorithm.
            KeyGenerator keygen = KeyGenerator.getInstance("AES");

            // Key Size is Specified Here.
            keygen.init(256);
            byte[] Ekey = keygen.generateKey().getEncoded();
            return Ekey;
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Security.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    private static byte[] key = {
        //Static key used by the encrypted database
        0x74, 0x68, 0x69, 0x73, 0x49, 0x73, 0x41, 0x53,
        0x65, 0x63, 0x72, 0x65, 0x74, 0x4b, 0x65, 0x79
    };

    public static String encrypt(String strToEncrypt) {

        //Declare Variables
        String encryptedString = null;

        try {
            //Initialize Cipher
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");

            //Initialize Key to Variable
            final SecretKeySpec secretKey = new SecretKeySpec(key, "AES");

            //Initialize Cipher with Key
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);

            //Encrypt the passsword
            encryptedString = Base64.encodeBase64String(cipher.doFinal(strToEncrypt.getBytes()));

        } catch (Exception e) {
            System.err.println(e.getMessage());
        }

        //Return the Encrypted Password
        return encryptedString;
    }
}