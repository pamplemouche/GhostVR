.class public Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;
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

    const/16 v0, 0x38d

    .line 33
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->OCULUS_VR_CERTIFICATE:[B

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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 341
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method createVrCertificate()Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    .line 277
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->OCULUS_VR_CERTIFICATE:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 279
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method findMetaInfFileWithExtension(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 314
    invoke-virtual {v1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 319
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 323
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_4

    const/4 p1, 0x0

    .line 327
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "/"

    .line 328
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ne v0, p2, :cond_3

    return-object p1

    .line 329
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " includes sub directories in its path."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 324
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " file, found "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method listJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 286
    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 287
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 288
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 289
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple entries named "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object v0
.end method

.method public verifyDeveloperVrSignature(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oculussig_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 187
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ufeff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "UTF-16LE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    :try_start_2
    invoke-virtual {p0, v1, p1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->verifyVrSignature(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-static {p1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    return p2

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object p1, v0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string p1, "VrSignatureVerifier"

    const-string p2, "No developer OSIG found"

    .line 183
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 p1, 0x0

    .line 190
    invoke-static {v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    return p1

    .line 190
    :goto_0
    invoke-static {p1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 191
    invoke-static {v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    throw p2
.end method

.method verifySignature(Ljava/security/cert/X509Certificate;Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "SHA256withRSA"

    .line 257
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 258
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    const/16 p1, 0x400

    .line 260
    new-array p1, p1, [B

    .line 263
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 264
    invoke-virtual {v0, p1, v2, v1}, Ljava/security/Signature;->update([BII)V

    goto :goto_0

    .line 267
    :cond_0
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 268
    :goto_1
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 269
    invoke-virtual {p2, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 273
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method public verifyStoreVrSignature(Ljava/io/File;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    const-string v2, "META-INF/"

    .line 200
    invoke-virtual {p0, v1, v2}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->listJarEntries(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    const-string v3, ".SF"

    .line 202
    invoke-virtual {p0, v2, v3}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->findMetaInfFileWithExtension(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, ".OSIG"

    .line 207
    invoke-virtual {p0, v2, v4}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->findMetaInfFileWithExtension(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 212
    invoke-virtual {v1, v3}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v4, "Failed to open "

    if-eqz p1, :cond_2

    .line 216
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    .line 224
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 225
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 226
    invoke-virtual {p0, p1, v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->verifyVrSignature(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 232
    :try_start_5
    invoke-static {v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 233
    invoke-static {p1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 236
    invoke-static {v1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    return v2

    .line 227
    :cond_0
    :try_start_6
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Signature for store OSIG not valid"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v2

    goto :goto_0

    :catchall_1
    move-exception v2

    move-object p1, v0

    .line 232
    :goto_0
    :try_start_7
    invoke-static {v0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    .line 233
    invoke-static {p1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    throw v2

    .line 218
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No .OSIG file found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No .SF files found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_1

    :catchall_3
    move-exception p1

    move-object v1, v0

    .line 236
    :goto_1
    invoke-static {v1}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->close(Ljava/io/Closeable;)V

    throw p1
.end method

.method verifyVrSignature(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->mOculusVrCertificate:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->createVrCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->mOculusVrCertificate:Ljava/security/cert/X509Certificate;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->mOculusVrCertificate:Ljava/security/cert/X509Certificate;

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0, v0, p1, p2}, Lcom/oculus/vrshell/panelservice/VrSignatureVerifier;->verifySignature(Ljava/security/cert/X509Certificate;Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
