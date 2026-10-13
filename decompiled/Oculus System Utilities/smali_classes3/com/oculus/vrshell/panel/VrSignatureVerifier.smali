.class public Lcom/oculus/vrshell/panel/VrSignatureVerifier;
.super Ljava/lang/Object;
.source "VrSignatureVerifier.java"


# static fields
.field public static final OCULUS_VR_CERTIFICATE:[B

.field public static final SIG_ALG:Ljava/lang/String; = "SHA256withRSA"

.field private static final TAG:Ljava/lang/String; = "VrSignatureVerifier"


# instance fields
.field private mOculusVrCertificate:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x38d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->OCULUS_VR_CERTIFICATE:[B

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
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "c"    # Ljava/io/Closeable;

    .prologue
    .line 370
    if-nez p0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 377
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createVrCertificate()Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 299
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->OCULUS_VR_CERTIFICATE:[B

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 300
    .local v0, "certStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    return-object v2
.end method

.method findMetaInfFileWithExtension(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p2, "extension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 343
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    .local v0, "file":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    const/4 v1, 0x0

    .line 365
    :cond_2
    return-object v1

    .line 355
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 356
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected one "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file, found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 359
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    .local v1, "match":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 362
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " includes sub directories in its path."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method listJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p1, "jf"    # Ljava/util/jar/JarFile;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 310
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 311
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 314
    .local v1, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple entries named "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 325
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    .end local v1    # "entry":Ljava/util/jar/JarEntry;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 6
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "serial"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "dataStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 186
    .local v3, "sigStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oculussig_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 193
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ufeff"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-16LE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v0    # "dataStream":Ljava/io/InputStream;
    .local v1, "dataStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {p0, v1, v3}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyVrSignature(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 196
    invoke-static {v3}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v1}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 194
    .end local v1    # "dataStream":Ljava/io/InputStream;
    .restart local v0    # "dataStream":Ljava/io/InputStream;
    :goto_0
    return v4

    .line 187
    :catch_0
    move-exception v2

    .line 189
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v4, "VrSignatureVerifier"

    const-string v5, "No developer OSIG found"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    const/4 v4, 0x0

    .line 196
    invoke-static {v3}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 196
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-static {v3}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 197
    invoke-static {v0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    throw v4

    .line 196
    .end local v0    # "dataStream":Ljava/io/InputStream;
    .restart local v1    # "dataStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dataStream":Ljava/io/InputStream;
    .restart local v0    # "dataStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method verifySignature(Ljava/security/cert/X509Certificate;Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 8
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .param p2, "dataStream"    # Ljava/io/InputStream;
    .param p3, "signatureStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 275
    const-string v5, "SHA256withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 276
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 278
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 281
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "read":I
    if-eq v2, v6, :cond_0

    .line 283
    invoke-virtual {v4, v1, v7, v2}, Ljava/security/Signature;->update([BII)V

    goto :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {p3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 289
    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 292
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 293
    .local v3, "sigBytes":[B
    invoke-virtual {v4, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    return v5
.end method

.method public verifyStoreVrSignature(Ljava/io/File;)Z
    .locals 12
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 207
    .local v0, "jar":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 208
    .end local v0    # "jar":Ljava/util/jar/JarFile;
    .local v1, "jar":Ljava/util/jar/JarFile;
    :try_start_1
    const-string v9, "META-INF/"

    invoke-virtual {p0, v1, v9}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->listJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 210
    .local v2, "metaInfoEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v9, ".SF"

    invoke-virtual {p0, v2, v9}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->findMetaInfFileWithExtension(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "sfFileName":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 213
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No .SF files found in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    .end local v2    # "metaInfoEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "sfFileName":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v0, v1

    .end local v1    # "jar":Ljava/util/jar/JarFile;
    .restart local v0    # "jar":Ljava/util/jar/JarFile;
    :goto_0
    invoke-static {v0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    throw v9

    .line 216
    .end local v0    # "jar":Ljava/util/jar/JarFile;
    .restart local v1    # "jar":Ljava/util/jar/JarFile;
    .restart local v2    # "metaInfoEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "sfFileName":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v9, ".OSIG"

    invoke-virtual {p0, v2, v9}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->findMetaInfFileWithExtension(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "sigFileName":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 219
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No .OSIG file found in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 222
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 223
    .local v3, "sfEntry":Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_2

    .line 225
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 227
    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 228
    .local v6, "sigEntry":Ljava/util/zip/ZipEntry;
    if-nez v6, :cond_3

    .line 230
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    :cond_3
    const/4 v5, 0x0

    .line 234
    .local v5, "sfInput":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 237
    .local v8, "sigInput":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v1, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 238
    invoke-virtual {v1, v6}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    .line 239
    invoke-virtual {p0, v5, v8}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifyVrSignature(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 241
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Signature for store OSIG not valid"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 248
    :catchall_1
    move-exception v9

    :try_start_4
    invoke-static {v8}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 249
    invoke-static {v5}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    throw v9

    .line 244
    :cond_4
    const/4 v9, 0x1

    .line 248
    invoke-static {v8}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 249
    invoke-static {v5}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 254
    invoke-static {v1}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 244
    return v9

    .line 254
    .end local v1    # "jar":Ljava/util/jar/JarFile;
    .end local v2    # "metaInfoEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "sfEntry":Ljava/util/zip/ZipEntry;
    .end local v4    # "sfFileName":Ljava/lang/String;
    .end local v5    # "sfInput":Ljava/io/InputStream;
    .end local v6    # "sigEntry":Ljava/util/zip/ZipEntry;
    .end local v7    # "sigFileName":Ljava/lang/String;
    .end local v8    # "sigInput":Ljava/io/InputStream;
    .restart local v0    # "jar":Ljava/util/jar/JarFile;
    :catchall_2
    move-exception v9

    goto/16 :goto_0
.end method

.method verifyVrSignature(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "dataStream"    # Ljava/io/InputStream;
    .param p2, "signatureStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 261
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->mOculusVrCertificate:Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->createVrCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->mOculusVrCertificate:Ljava/security/cert/X509Certificate;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->mOculusVrCertificate:Ljava/security/cert/X509Certificate;

    .line 269
    .local v0, "vrCert":Ljava/security/cert/X509Certificate;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/vrshell/panel/VrSignatureVerifier;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v1

    return v1

    .line 269
    .end local v0    # "vrCert":Ljava/security/cert/X509Certificate;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
