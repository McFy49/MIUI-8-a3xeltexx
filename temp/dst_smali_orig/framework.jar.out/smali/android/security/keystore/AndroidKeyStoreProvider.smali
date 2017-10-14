.class public Landroid/security/keystore/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v0, "AndroidKeyStore"

    const-string v1, "Android KeyStore security provider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string v0, "KeyStore.AndroidKeyStore"

    const-string v1, "android.security.keystore.AndroidKeyStoreSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.EC"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyPairGenerator.RSA"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EC"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "RSA"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "KeyGenerator.AES"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$AES"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA1"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA224"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA256"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA384"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeyGenerator.HmacSHA512"

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA1"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA224"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA384"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    const-string v0, "HmacSHA512"

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 5
    .param p0, "publicKey"    # Landroid/security/keystore/AndroidKeyStorePublicKey;

    .prologue
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getUid()I

    move-result v3

    check-cast p0, Ljava/security/interfaces/ECKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;ILjava/security/spec/ECParameterSpec;)V

    return-object v1

    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getUid()I

    move-result v3

    check-cast p0, Ljava/security/interfaces/RSAKey;

    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-object v1

    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 7
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "keyAlgorithm"    # Ljava/lang/String;
    .param p3, "x509EncodedForm"    # [B

    .prologue
    :try_start_0
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, p3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .local v3, "publicKey":Ljava/security/PublicKey;
    const-string v4, "EC"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .end local v3    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v4, p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    return-object v4

    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Invalid X.509 encoding of public key"

    invoke-direct {v4, v5, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to obtain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KeyFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    const-string v4, "RSA"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    .end local v3    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v4, p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/RSAPublicKey;)V

    return-object v4

    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_1
    new-instance v4, Ljava/security/ProviderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getKeyStoreForUid(I)Ljava/security/KeyStore;
    .locals 5
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    const-string v2, "AndroidKeyStore"

    const-string v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .local v1, "result":Ljava/security/KeyStore;
    :try_start_0
    new-instance v2, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-direct {v2, p0}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load AndroidKeyStore KeyStore for UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .locals 4
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    .prologue
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    instance-of v1, p0, Ljava/security/Signature;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    .local v0, "spi":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Crypto primitive not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0    # "spi":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "spi":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ljavax/crypto/Cipher;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    .end local v0    # "spi":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported crypto primitive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Supported: Signature, Mac, Cipher"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v0    # "spi":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    check-cast v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    .end local v0    # "spi":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    move-result-wide v2

    return-wide v2
.end method

.method public static install()V
    .locals 7

    .prologue
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .local v3, "providers":[Ljava/security/Provider;
    const/4 v0, -0x1

    .local v0, "bcProviderIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-object v2, v3, v1

    .local v2, "provider":Ljava/security/Provider;
    const-string v5, "BC"

    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .end local v2    # "provider":Ljava/security/Provider;
    :cond_0
    new-instance v5, Landroid/security/keystore/AndroidKeyStoreProvider;

    invoke-direct {v5}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    new-instance v4, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;

    invoke-direct {v4}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    .local v4, "workaroundProvider":Ljava/security/Provider;
    const/4 v5, -0x1

    if-eq v0, v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-static {v4, v5}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    :goto_1
    return-void

    .end local v4    # "workaroundProvider":Ljava/security/Provider;
    .restart local v2    # "provider":Ljava/security/Provider;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "provider":Ljava/security/Provider;
    .restart local v4    # "workaroundProvider":Ljava/security/Provider;
    :cond_2
    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    goto :goto_1
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v1

    .local v1, "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-static {v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    move-result-object v0

    .local v0, "privateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;

    move-result-object v0

    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 22
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v9, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v17

    .local v17, "errorCode":I
    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_0

    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Failed to obtain information about private key"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/security/UnrecoverableKeyException;

    throw v4

    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    invoke-virtual/range {v10 .. v15}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v18

    .local v18, "exportResult":Landroid/security/keymaster/ExportResult;
    move-object/from16 v0, v18

    iget v4, v0, Landroid/security/keymaster/ExportResult;->resultCode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Failed to obtain X.509 form of public key"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    iget v5, v0, Landroid/security/keymaster/ExportResult;->resultCode:I

    invoke-static {v5}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/security/UnrecoverableKeyException;

    throw v4

    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/security/keymaster/ExportResult;->exportData:[B

    move-object/from16 v21, v0

    .local v21, "x509EncodedPublicKey":[B
    const v4, 0x10000002

    invoke-virtual {v9, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v20

    .local v20, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v20, :cond_2

    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Key algorithm unknown"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .local v19, "jcaKeyAlgorithm":Ljava/lang/String;
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-result-object v4

    return-object v4

    .end local v19    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    const-string v5, "Failed to load private key"

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljava/security/UnrecoverableKeyException;

    throw v4
.end method

.method public static loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 12
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "secretKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .local v5, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v7

    .local v7, "errorCode":I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_0

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Failed to obtain information about key"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/security/UnrecoverableKeyException;

    throw v0

    :cond_0
    const v0, 0x10000002

    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v9, :cond_1

    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Key algorithm unknown"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0x20000005

    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    move-result-object v11

    .local v11, "keymasterDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v10, -0x1

    .local v10, "keymasterDigest":I
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v10}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .local v8, "keyAlgorithmString":Ljava/lang/String;
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-direct {v0, p1, p2, v8}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .end local v8    # "keyAlgorithmString":Ljava/lang/String;
    .end local v10    # "keymasterDigest":I
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .restart local v10    # "keymasterDigest":I
    goto :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Unsupported secret key type"

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/security/UnrecoverableKeyException;

    throw v0
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore.AndroidKeyStoreSecretKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method