
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

    private static byte[] key = {'l','u','v','a','m','i','n','e',
                                     's','t','a','n','d','a','r','d'};
    
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
     public static String decrypt(String codeDecrypt) {
        String decryptedString = null;
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            final SecretKeySpec secretKey = new SecretKeySpec(key, "AES");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            decryptedString = new String(cipher.doFinal(Base64.decodeBase64(codeDecrypt)));
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return decryptedString;
    }
}