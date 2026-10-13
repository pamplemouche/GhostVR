.class public Lorg/chromium/chrome/browser/browserservices/OriginVerifier;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final i:[C

.field public static final j:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:J

.field public e:Li20;

.field public f:Lh20;

.field public g:J

.field public h:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEF"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->i:[C

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/chromium/content_public/browser/WebContents;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    .line 3
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_1
    const-string p1, "X509"

    .line 7
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    const-string v0, "SHA256"

    .line 8
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    .line 9
    invoke-static {p1}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a([B)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "OriginVerifier"

    const-string v1, "Certificate type X509 encoding failed"

    .line 10
    invoke-static {v0, v1, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :catch_2
    :goto_1
    iput-object v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->b:Ljava/lang/String;

    .line 12
    iput p2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->c:I

    .line 13
    iput-object p3, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->h:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method

.method public static a(Ljava/lang/String;Lh20;)Landroid/net/Uri;
    .locals 1

    const-string v0, "android-app://"

    .line 2
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3
    iget-object p1, p1, Lh20;->a:Landroid/net/Uri;

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 12
    sget-object v2, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->i:[C

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    sget-object v2, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->i:[C

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lorg/chromium/chrome/browser/browserservices/OriginVerifier;ZLjava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public static clearBrowsingData()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lw20;->a(Ljava/util/Set;)V

    return-void
.end method

.method private onOriginVerificationResult(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "OriginVerifier"

    const-string v3, "Device is offline, checking saved verification result."

    .line 1
    invoke-static {v2, v3, p1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-static {}, LqU;->a()LqU;

    move-result-object p1

    .line 3
    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    iget v5, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->c:I

    .line 4
    invoke-static {}, Lw20;->a()Ljava/util/Set;

    move-result-object v6

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 7
    :goto_0
    invoke-static {v1}, LZ10;->a(I)V

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a(ZLjava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1}, LqU;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    .line 11
    :try_start_2
    invoke-virtual {p1}, LqU;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 12
    sget-object v2, LRB;->a:LLB;

    invoke-virtual {v2, v0, p1}, LLB;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13
    :goto_1
    throw v1

    .line 14
    :cond_2
    invoke-static {v1}, LZ10;->a(I)V

    .line 15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a(ZLjava/lang/Boolean;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {v0}, LZ10;->a(I)V

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a(ZLjava/lang/Boolean;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 6
    iget-wide v0, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 7
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->d:J

    .line 8
    invoke-static {v0, v1, p0}, LJ/N;->M5qOsuVc(JLjava/lang/Object;)V

    .line 9
    iput-wide v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->d:J

    return-void
.end method

.method public final a(ZLjava/lang/Boolean;)V
    .locals 7

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v1, "succeeded"

    goto :goto_0

    :cond_0
    const-string v1, "failed"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OriginVerifier"

    const-string v2, "Verification %s."

    .line 16
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ","

    if-eqz p1, :cond_1

    .line 17
    iget-object v1, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    .line 18
    iget-object v3, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->b:Ljava/lang/String;

    iget v4, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->c:I

    .line 19
    invoke-static {}, Lw20;->a()Ljava/util/Set;

    move-result-object v5

    .line 20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-static {v5}, Lw20;->a(Ljava/util/Set;)V

    .line 23
    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    iget v4, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->c:I

    if-eqz p1, :cond_2

    .line 24
    invoke-static {}, Lw20;->a()Ljava/util/Set;

    move-result-object v5

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v5}, Lw20;->a(Ljava/util/Set;)V

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {}, Lw20;->a()Ljava/util/Set;

    move-result-object v5

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v5}, Lw20;->a(Ljava/util/Set;)V

    .line 32
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->e:Li20;

    if-eqz v0, :cond_3

    .line 33
    iget-object v1, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->f:Lh20;

    invoke-interface {v0, v1, v2, p1, p2}, Li20;->a(Ljava/lang/String;Lh20;ZLjava/lang/Boolean;)V

    :cond_3
    if-eqz p2, :cond_5

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->g:J

    sub-long/2addr v0, v2

    .line 35
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "BrowserServices.VerificationTime.Online"

    goto :goto_2

    :cond_4
    const-string p1, "BrowserServices.VerificationTime.Offline"

    .line 36
    :goto_2
    invoke-static {p1, v0, v1}, LfV;->c(Ljava/lang/String;J)V

    .line 37
    :cond_5
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/browserservices/OriginVerifier;->a()V

    return-void
.end method
