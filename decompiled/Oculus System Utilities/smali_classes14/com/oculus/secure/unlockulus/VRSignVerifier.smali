.class public Lcom/oculus/secure/unlockulus/VRSignVerifier;
.super Ljava/lang/Object;
.source "VRSignVerifier.java"


# static fields
.field private static final CERT:[B


# instance fields
.field private final mVerifier:Lcom/oculus/secure/unlockulus/FBSignVerify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x38d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/secure/unlockulus/VRSignVerifier;->CERT:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        -0x7et
        0x3t
        -0x77t
        0x30t
        -0x7et
        0x2t
        0x71t
        -0x60t
        0x3t
        0x2t
        0x1t
        0x2t
        0x2t
        0x4t
        0x5at
        -0x2at
        -0x9t
        -0x18t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xbt
        0x5t
        0x0t
        0x30t
        0x75t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0xat
        0x4dt
        0x65t
        0x6et
        0x6ct
        0x6ft
        0x20t
        0x50t
        0x61t
        0x72t
        0x6bt
        0x31t
        0x14t
        0x30t
        0x12t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xbt
        0x4ft
        0x63t
        0x75t
        0x6ct
        0x75t
        0x73t
        0x20t
        0x48t
        0x6ft
        0x6dt
        0x65t
        0x31t
        0x18t
        0x30t
        0x16t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0x13t
        0xft
        0x4ft
        0x63t
        0x75t
        0x6ct
        0x75t
        0x73t
        0x20t
        0x50t
        0x6ct
        0x61t
        0x74t
        0x66t
        0x6ft
        0x72t
        0x6dt
        0x31t
        0x14t
        0x30t
        0x12t
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0x13t
        0xbt
        0x4ft
        0x63t
        0x75t
        0x6ct
        0x75t
        0x73t
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x30t
        0x1et
        0x17t
        0xdt
        0x31t
        0x34t
        0x30t
        0x39t
        0x30t
        0x35t
        0x31t
        0x37t
        0x32t
        0x38t
        0x31t
        0x30t
        0x5at
        0x17t
        0xdt
        0x34t
        0x32t
        0x30t
        0x31t
        0x32t
        0x31t
        0x31t
        0x37t
        0x32t
        0x38t
        0x31t
        0x30t
        0x5at
        0x30t
        0x75t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x6t
        0x13t
        0x2t
        0x55t
        0x53t
        0x31t
        0xbt
        0x30t
        0x9t
        0x6t
        0x3t
        0x55t
        0x4t
        0x8t
        0x13t
        0x2t
        0x43t
        0x41t
        0x31t
        0x13t
        0x30t
        0x11t
        0x6t
        0x3t
        0x55t
        0x4t
        0x7t
        0x13t
        0xat
        0x4dt
        0x65t
        0x6et
        0x6ct
        0x6ft
        0x20t
        0x50t
        0x61t
        0x72t
        0x6bt
        0x31t
        0x14t
        0x30t
        0x12t
        0x6t
        0x3t
        0x55t
        0x4t
        0xat
        0x13t
        0xbt
        0x4ft
        0x63t
        0x75t
        0x6ct
        0x75t
        0x73t
        0x20t
        0x48t
        0x6ft
        0x6dt
        0x65t
        0x31t
        0x18t
        0x30t
        0x16t
        0x6t
        0x3t
        0x55t
        0x4t
        0xbt
        0x13t
        0xft
        0x4ft
        0x63t
        0x75t
        0x6ct
        0x75t
        0x73t
        0x20t
        0x50t
        0x6ct
        0x61t
        0x74t
        0x66t
        0x6ft
        0x72t
        0x6dt
        0x31t
        0x14t
        0x30t
        0x12t
        0x6t
        0x3t
        0x55t
        0x4t
        0x3t
        0x13t
        0xbt
        0x4ft
        0x63t
        0x75t
        0x6ct
        0x75t
        0x73t
        0x2ct
        0x20t
        0x49t
        0x6et
        0x63t
        0x30t
        -0x7et
        0x1t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0xft
        0x0t
        0x30t
        -0x7et
        0x1t
        0xat
        0x2t
        -0x7et
        0x1t
        0x1t
        0x0t
        -0x61t
        0x6ft
        -0x2ft
        -0x6t
        0x0t
        0x66t
        -0x51t
        0x5dt
        0x79t
        0x62t
        0x31t
        -0x20t
        0x52t
        -0x64t
        -0x19t
        -0x74t
        -0x6at
        0x47t
        0x41t
        0x74t
        -0x38t
        -0x73t
        -0x2at
        -0x7ft
        0x3at
        -0x69t
        0x31t
        0x0t
        -0x35t
        -0x3et
        0x49t
        0x67t
        -0x2at
        0x5ft
        -0x77t
        0x65t
        0x5ft
        -0x28t
        0x1ct
        0x59t
        -0x27t
        0x5ct
        -0xbt
        -0x3bt
        -0x17t
        -0x66t
        -0x1ct
        0x51t
        0x5dt
        -0x3ct
        0x45t
        -0x72t
        -0x39t
        0x4et
        -0x1dt
        0x22t
        0x3bt
        0xbt
        0x17t
        0x23t
        -0x55t
        0x40t
        -0x51t
        -0x62t
        -0x4bt
        0x4dt
        0x1et
        0x79t
        -0x8t
        0x0t
        0x21t
        -0x80t
        0x26t
        0x4t
        -0x63t
        0x71t
        -0x6at
        0x60t
        -0x6at
        -0x60t
        0x57t
        0x7ft
        0x4ct
        -0xft
        -0x1ft
        -0x79t
        -0x22t
        0x51t
        -0x56t
        0x48t
        0xct
        -0x7ft
        -0x3at
        0x2ft
        -0x5ct
        -0x79t
        0x7at
        0x7et
        -0x2ct
        -0x2at
        0x15t
        0x1t
        0x0t
        0x7ct
        -0x51t
        -0x38t
        0x62t
        0x73t
        0x7ct
        0x71t
        0x63t
        -0xbt
        0x48t
        -0x68t
        -0x5et
        -0x32t
        0x1t
        -0x33t
        0xet
        -0x70t
        -0x41t
        -0x10t
        0x1et
        0x50t
        -0x4t
        0x73t
        0x5et
        -0x49t
        0x40t
        0x35t
        0x2et
        0x3dt
        0x5t
        -0x17t
        -0x4ct
        0x7ft
        0x2ft
        -0x72t
        0x1et
        -0x6t
        0x1t
        -0x1ct
        0x24t
        0x4at
        0x7ft
        -0x6ct
        -0x4dt
        -0x1et
        0x7ct
        -0x16t
        0x36t
        0x1ct
        -0x26t
        0x5t
        0x30t
        -0x1bt
        0x2dt
        -0x62t
        0x7dt
        -0x40t
        -0x32t
        0x58t
        -0x76t
        0x47t
        0x58t
        -0x7t
        0xft
        -0xdt
        -0x7at
        -0x1ct
        0x3dt
        0x41t
        -0x28t
        -0x2at
        -0xbt
        -0x5dt
        0x59t
        0x14t
        0x13t
        -0x26t
        -0x3ct
        -0x4et
        -0x73t
        0x5et
        0x7t
        -0x80t
        0x58t
        -0x10t
        0x1ct
        -0x52t
        -0x57t
        0x29t
        -0x63t
        -0x42t
        0x60t
        -0x80t
        0x27t
        0x3t
        -0x6at
        -0x6et
        0xbt
        0x3at
        0x59t
        -0x3et
        0x16t
        -0x18t
        -0x3at
        0x76t
        0x37t
        -0x15t
        -0x1bt
        -0x2at
        0x68t
        0x5ct
        -0x57t
        -0x66t
        0x60t
        0x74t
        0x5ct
        -0x10t
        -0x72t
        0xft
        0x7at
        -0x1et
        -0x7t
        0x4ct
        -0x59t
        -0x14t
        0x4t
        0xet
        -0x37t
        0x6et
        -0x28t
        0x37t
        0x4et
        0x7bt
        -0x7t
        0x40t
        -0x14t
        -0x45t
        0x7ft
        0x66t
        -0x41t
        -0x64t
        -0x3ft
        -0x67t
        -0x4et
        0x4dt
        -0x1ft
        -0x4dt
        0x35t
        -0x1at
        -0x57t
        0x14t
        0x3at
        -0x3dt
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
        -0x5dt
        0x21t
        0x30t
        0x1ft
        0x30t
        0x1dt
        0x6t
        0x3t
        0x55t
        0x1dt
        0xet
        0x4t
        0x16t
        0x4t
        0x14t
        -0x3at
        0x61t
        -0x28t
        0x6dt
        0x2bt
        0x44t
        0x7bt
        0x44t
        -0x61t
        0x25t
        -0x7t
        0x29t
        0x20t
        0x26t
        -0x1ct
        -0x1at
        0x3dt
        0x23t
        0x6ft
        -0x67t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xbt
        0x5t
        0x0t
        0x3t
        -0x7et
        0x1t
        0x1t
        0x0t
        0x45t
        -0x57t
        -0x58t
        -0x44t
        -0x4t
        -0x7bt
        0x4ft
        -0x19t
        -0x13t
        -0x6ct
        -0x35t
        0x5dt
        0x72t
        0x33t
        -0x57t
        0x78t
        0x65t
        0x59t
        0x1bt
        0x15t
        0x66t
        -0x3ft
        -0x10t
        0x25t
        -0x3et
        0x54t
        -0x14t
        -0x5dt
        -0x4ft
        -0x24t
        -0x11t
        -0x7t
        0x6at
        -0xft
        0x7et
        0x40t
        0x3et
        -0x5at
        0x6ft
        0x46t
        0x7t
        -0x16t
        0xct
        -0x2ct
        -0x6t
        -0x57t
        0x7ft
        -0x4ft
        0x3at
        -0x64t
        -0x2ct
        -0x68t
        0x7ft
        0x7at
        0x1et
        -0x8t
        -0x78t
        0x1et
        0x54t
        -0x71t
        -0x3t
        0x43t
        0x70t
        -0x51t
        -0x76t
        0x16t
        0x10t
        0xdt
        0x5dt
        0x31t
        -0x2dt
        0x6ft
        0x1ft
        -0x4dt
        -0xbt
        0x5dt
        -0x3ft
        0x2t
        -0x58t
        -0x14t
        -0x58t
        0xat
        0x61t
        -0x23t
        -0x52t
        0x67t
        -0x7t
        -0xct
        -0xft
        -0x49t
        -0x21t
        -0x3dt
        -0x5et
        0x7dt
        -0x3et
        -0x26t
        0x76t
        -0x76t
        0x78t
        -0x44t
        0x76t
        -0x20t
        -0x75t
        -0x51t
        -0x34t
        -0x6et
        -0x7et
        0x57t
        0x65t
        -0x39t
        -0x67t
        -0x7at
        -0x5ct
        0x6bt
        0x25t
        0x6dt
        -0x75t
        0x3et
        -0x63t
        -0x3dt
        0x37t
        -0x73t
        0x49t
        -0x41t
        -0x61t
        0x62t
        0x42t
        -0x31t
        0x65t
        0x69t
        0x19t
        0x1t
        0x77t
        -0x4ft
        -0x5at
        0x79t
        -0x62t
        -0x67t
        0x26t
        0x3bt
        -0x1t
        0x5et
        0x6ft
        0x35t
        0xet
        -0x7ft
        -0x25t
        0x59t
        -0x77t
        0x21t
        0x56t
        0x6ft
        -0x15t
        0x57t
        -0x16t
        0x76t
        -0x12t
        0x52t
        -0x23t
        -0x41t
        -0x20t
        0x5ct
        -0x38t
        0xct
        -0x4t
        -0x59t
        -0xet
        -0x43t
        -0x2et
        0x66t
        -0x38t
        0x28t
        -0xdt
        0x3at
        0x47t
        0x75t
        0xct
        0x2ct
        0x28t
        -0x48t
        0x16t
        0x4at
        -0x12t
        -0x60t
        -0x53t
        0x5bt
        -0x7dt
        0x5t
        0x73t
        0x26t
        -0x3at
        0x63t
        0x2ft
        -0xet
        -0x51t
        0x74t
        0x4ft
        0x0t
        -0x53t
        -0x13t
        -0x3ct
        0x7ft
        0x71t
        0x4et
        -0x37t
        -0x4t
        0x56t
        -0x80t
        -0x56t
        0x39t
        0x5at
        0x56t
        -0x27t
        -0x3dt
        0x72t
        -0x7at
        -0x3ct
        -0x66t
        0x50t
        -0x5et
        -0x29t
        0x55t
        0x72t
        -0x3dt
        -0x7ct
        0x43t
        -0x35t
        -0x23t
        0x79t
        -0x10t
        0x57t
        0x11t
        0x36t
        -0x7at
        -0x3ct
        0x4bt
        -0xat
        0x18t
        0x27t
        -0xet
        0x9t
        -0x66t
        0x5at
        -0x33t
        -0x4et
        -0x5t
        -0x51t
        0x57t
        -0x31t
        -0x11t
        -0x4ft
        -0x66t
        0x13t
        0x44t
        -0x2bt
        -0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 941
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 945
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 947
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lcom/oculus/secure/unlockulus/VRSignVerifier;->CERT:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 948
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .local v0, "certificate":Ljava/security/cert/X509Certificate;
    new-instance v3, Lcom/oculus/secure/unlockulus/FBSignVerify;

    invoke-direct {v3, v0}, Lcom/oculus/secure/unlockulus/FBSignVerify;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v3, p0, Lcom/oculus/secure/unlockulus/VRSignVerifier;->mVerifier:Lcom/oculus/secure/unlockulus/FBSignVerify;

    .line 954
    return-void

    .line 949
    .end local v0    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    :catch_0
    move-exception v2

    .line 950
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "inputJar"    # Ljava/util/jar/JarFile;
    .param p1, "suffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 989
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v2, "matching":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 992
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 993
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 994
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 997
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    :cond_1
    return-object v2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1001
    new-instance v1, Lcom/oculus/secure/unlockulus/VRSignVerifier;

    invoke-direct {v1}, Lcom/oculus/secure/unlockulus/VRSignVerifier;-><init>()V

    .line 1003
    .local v1, "verifier":Lcom/oculus/secure/unlockulus/VRSignVerifier;
    const/4 v2, 0x0

    aget-object v0, p0, v2

    .line 1004
    .local v0, "apk":Ljava/lang/String;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/oculus/secure/unlockulus/VRSignVerifier;->verifyVRSig(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1005
    return-void
.end method


# virtual methods
.method public verifyOculusSig(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 3
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "signatureStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 981
    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ufeff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-16LE"

    .line 982
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 984
    .local v0, "dataStream":Ljava/io/ByteArrayInputStream;
    iget-object v1, p0, Lcom/oculus/secure/unlockulus/VRSignVerifier;->mVerifier:Lcom/oculus/secure/unlockulus/FBSignVerify;

    invoke-virtual {v1, v0, p2}, Lcom/oculus/secure/unlockulus/FBSignVerify;->verify(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v1

    return v1
.end method

.method public verifyVRSig(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apkFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 957
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 958
    .local v1, "jar":Ljava/util/jar/JarFile;
    const-string v5, ".SF"

    invoke-static {v1, v5}, Lcom/oculus/secure/unlockulus/VRSignVerifier;->getJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 959
    .local v2, "sfEntries":Ljava/util/List;, "Ljava/util/List<Ljava/util/jar/JarEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v6, :cond_0

    .line 960
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected one .SF file, got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 962
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v5}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 964
    .local v3, "sfInput":Ljava/io/InputStream;
    const-string v5, ".OSIG"

    invoke-static {v1, v5}, Lcom/oculus/secure/unlockulus/VRSignVerifier;->getJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 965
    .local v0, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 966
    .local v4, "sigInput":Ljava/io/InputStream;
    iget-object v8, p0, Lcom/oculus/secure/unlockulus/VRSignVerifier;->mVerifier:Lcom/oculus/secure/unlockulus/FBSignVerify;

    invoke-virtual {v8, v3, v4}, Lcom/oculus/secure/unlockulus/FBSignVerify;->verify(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    .line 970
    .end local v0    # "entry":Ljava/util/jar/JarEntry;
    .end local v4    # "sigInput":Ljava/io/InputStream;
    :goto_0
    return v5

    :cond_2
    move v5, v7

    goto :goto_0
.end method
