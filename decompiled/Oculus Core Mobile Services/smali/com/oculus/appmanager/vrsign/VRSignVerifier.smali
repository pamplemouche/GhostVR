.class public Lcom/oculus/appmanager/vrsign/VRSignVerifier;
.super Ljava/lang/Object;
.source "VRSignVerifier.java"


# static fields
.field private static final CERT:[B


# instance fields
.field private final mVerifier:Lcom/facebook/sign/lib/FBSignVerify;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x38d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->CERT:[B

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
    .locals 3

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 945
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->CERT:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 946
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    new-instance v1, Lcom/facebook/sign/lib/FBSignVerify;

    invoke-direct {v1, v0}, Lcom/facebook/sign/lib/FBSignVerify;-><init>(Ljava/security/cert/X509Certificate;)V

    iput-object v1, p0, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->mVerifier:Lcom/facebook/sign/lib/FBSignVerify;

    .line 952
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    .line 986
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 987
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 989
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 991
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 992
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    :cond_1
    return-object v2
.end method


# virtual methods
.method public verifyVRSig(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 955
    new-instance v3, Ljava/util/jar/JarFile;

    invoke-direct {v3, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 956
    const-string v0, ".SF"

    invoke-static {v3, v0}, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->getJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 957
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v1, :cond_0

    .line 958
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one .SF file, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 962
    const-string v0, ".OSIG"

    invoke-static {v3, v0}, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->getJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 963
    invoke-virtual {v3, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 964
    iget-object v6, p0, Lcom/oculus/appmanager/vrsign/VRSignVerifier;->mVerifier:Lcom/facebook/sign/lib/FBSignVerify;

    invoke-virtual {v6, v4, v0}, Lcom/facebook/sign/lib/FBSignVerify;->verify(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 968
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
