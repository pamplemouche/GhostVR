.class public LUu0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;
.implements Lorg/chromium/components/payments/PaymentManifestParser$ManifestParseCallback;
.implements Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService$PaymentManifestWebDataServiceCallback;


# instance fields
.field public final a:Ljava/net/URI;

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/Set;

.field public final d:Ljava/util/Set;

.field public final e:Ljava/util/List;

.field public final f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

.field public final g:Lorg/chromium/components/payments/PaymentManifestDownloader;

.field public final h:Lorg/chromium/components/payments/PaymentManifestParser;

.field public final i:LIu0;

.field public final j:LTu0;

.field public final k:Ljava/security/MessageDigest;

.field public l:I

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Ljava/net/URI;Ljava/util/Set;Ljava/util/Set;Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;Lorg/chromium/components/payments/PaymentManifestDownloader;Lorg/chromium/components/payments/PaymentManifestParser;LIu0;LTu0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LUu0;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LUu0;->d:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LUu0;->e:Ljava/util/List;

    .line 5
    iput-object p1, p0, LUu0;->a:Ljava/net/URI;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 7
    new-instance v1, LSu0;

    invoke-direct {v1, p1}, LSu0;-><init>(LRu0;)V

    .line 8
    iput-object v0, v1, LSu0;->a:Landroid/content/pm/ResolveInfo;

    .line 9
    iget-object v2, p0, LUu0;->b:Ljava/util/Map;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Ljava/util/HashSet;

    if-nez p3, :cond_1

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 11
    :goto_1
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, LUu0;->c:Ljava/util/Set;

    .line 12
    iput-object p5, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    .line 13
    iput-object p4, p0, LUu0;->f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    .line 14
    iput-object p6, p0, LUu0;->h:Lorg/chromium/components/payments/PaymentManifestParser;

    .line 15
    iput-object p7, p0, LUu0;->i:LIu0;

    .line 16
    iput-object p8, p0, LUu0;->j:LTu0;

    .line 17
    iget-object p2, p0, LUu0;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_0
    const-string p2, "SHA-256"

    .line 18
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "PaymentManifest"

    const-string p4, "Unable to generate SHA-256 hashes."

    .line 19
    invoke-static {p3, p4, p2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_2
    :goto_2
    iput-object p1, p0, LUu0;->k:Ljava/security/MessageDigest;

    return-void
.end method

.method public static a(Ljava/util/Set;)Ljava/lang/String;
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x20

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, " ]"

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 3
    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-byte v5, p0, v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 4
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, "%02x"

    invoke-virtual {v1, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    return-object p0
.end method


# virtual methods
.method public final a([Lorg/chromium/components/payments/WebAppManifestSection;)Ljava/util/Set;
    .locals 17

    move-object/from16 v0, p1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 9
    aget-object v4, v0, v3

    .line 10
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    .line 11
    :goto_1
    iget-object v7, v4, Lorg/chromium/components/payments/WebAppManifestSection;->c:[[B

    array-length v8, v7

    if-ge v6, v8, :cond_0

    .line 12
    aget-object v7, v7, v6

    invoke-static {v7}, LUu0;->a([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 15
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 16
    aget-object v5, v0, v4

    move-object/from16 v6, p0

    .line 17
    iget-object v7, v6, LUu0;->b:Ljava/util/Map;

    iget-object v8, v5, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LSu0;

    if-nez v7, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    iget-wide v8, v7, LSu0;->b:J

    iget-wide v10, v5, Lorg/chromium/components/payments/WebAppManifestSection;->b:J

    const/4 v12, 0x2

    const/4 v13, 0x3

    const-string v14, "PaymentManifest"

    const/4 v15, 0x1

    cmp-long v16, v8, v10

    if-gez v16, :cond_3

    new-array v7, v13, [Ljava/lang/Object;

    .line 19
    iget-object v10, v5, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    aput-object v10, v7, v2

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v15

    iget-wide v8, v5, Lorg/chromium/components/payments/WebAppManifestSection;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v12

    const-string v5, "\"%s\" version is %d, but at least %d is required."

    .line 21
    invoke-static {v14, v5, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 22
    :cond_3
    iget-object v8, v7, LSu0;->c:Ljava/util/Set;

    if-nez v8, :cond_4

    new-array v7, v15, [Ljava/lang/Object;

    .line 23
    iget-object v5, v5, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    aput-object v5, v7, v2

    const-string v5, "Unable to determine fingerprints of \"%s\"."

    invoke-static {v14, v5, v7}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-array v8, v13, [Ljava/lang/Object;

    .line 25
    iget-object v5, v5, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    aput-object v5, v8, v2

    .line 26
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v5}, LUu0;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v15

    iget-object v5, v7, LSu0;->c:Ljava/util/Set;

    .line 27
    invoke-static {v5}, LUu0;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v12

    const-string v5, "\"%s\" fingerprints don\'t match the manifest. Expected %s, but found %s."

    .line 28
    invoke-static {v14, v5, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 29
    :cond_5
    iget-object v5, v5, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v6, p0

    return-object v3
.end method

.method public onManifestDownloadFailure(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, LUu0;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LUu0;->n:Z

    .line 3
    iget-object v0, p0, LUu0;->j:LTu0;

    check-cast v0, Liu0;

    .line 4
    iget-object v0, v0, Liu0;->h:Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/payments/PaymentAppFactory$PaymentAppCreatedCallback;->a(Ljava/lang/String;)V

    .line 5
    iget-boolean p1, p0, LUu0;->m:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->c()V

    .line 6
    :cond_1
    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->b()V

    return-void
.end method

.method public onManifestParseFailure()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LUu0;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LUu0;->n:Z

    .line 3
    iget-boolean v0, p0, LUu0;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, LUu0;->j:LTu0;

    check-cast v0, Liu0;

    invoke-virtual {v0}, Liu0;->c()V

    .line 4
    :cond_1
    iget-object v0, p0, LUu0;->j:LTu0;

    check-cast v0, Liu0;

    invoke-virtual {v0}, Liu0;->b()V

    return-void
.end method

.method public onPaymentMethodManifestDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, LUu0;->h:Lorg/chromium/components/payments/PaymentManifestParser;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 3
    iget-wide v0, v0, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    .line 4
    invoke-static {v0, v1, p1, p0}, LJ/N;->M$4TUaJ7(JLjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public onPaymentMethodManifestFetched([Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v3, v5, :cond_4

    .line 4
    aget-object v5, p1, v3

    if-nez v5, :cond_0

    .line 5
    iput-boolean v6, p0, LUu0;->m:Z

    .line 6
    iget-object p1, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void

    .line 7
    :cond_0
    aget-object v5, p1, v3

    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 8
    :cond_1
    aget-object v5, p1, v3

    invoke-static {v5}, LQv0;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    aget-object v5, p1, v3

    invoke-static {v5}, LQv0;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_4
    array-length p1, p1

    if-eqz p1, :cond_b

    iget-object p1, p0, LUu0;->b:Ljava/util/Map;

    .line 13
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, LUu0;->c:Ljava/util/Set;

    .line 14
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_5

    if-nez v4, :cond_5

    goto/16 :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 15
    iget-object p1, p0, LUu0;->j:LTu0;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    check-cast p1, Liu0;

    .line 16
    invoke-virtual {p1, v0}, Liu0;->a(Ljava/net/URI;)Lhu0;

    move-result-object p1

    iput-boolean v6, p1, Lhu0;->c:Z

    goto :goto_3

    .line 17
    :cond_6
    iget-object p1, p0, LUu0;->c:Ljava/util/Set;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 18
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    .line 19
    iget-object v1, p0, LUu0;->j:LTu0;

    iget-object v3, p0, LUu0;->a:Ljava/net/URI;

    check-cast v1, Liu0;

    .line 20
    invoke-virtual {v1, v3}, Liu0;->a(Ljava/net/URI;)Lhu0;

    move-result-object v1

    iget-object v1, v1, Lhu0;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_7
    :goto_3
    iget-object p1, p0, LUu0;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->c()V

    .line 23
    iget-object p1, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void

    .line 24
    :cond_8
    iget-object p1, p0, LUu0;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iput p1, p0, LUu0;->l:I

    .line 25
    iget-object p1, p0, LUu0;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    iget-object v1, p0, LUu0;->f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    .line 27
    iget-wide v3, v1, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 28
    invoke-static {v3, v4, v1, v0, p0}, LJ/N;->MRdDiZyv(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 29
    iput-boolean v6, p0, LUu0;->m:Z

    .line 30
    iput v2, p0, LUu0;->l:I

    .line 31
    iget-object p1, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    :cond_a
    return-void

    .line 32
    :cond_b
    :goto_4
    iput-boolean v6, p0, LUu0;->m:Z

    .line 33
    iget-object p1, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void
.end method

.method public onPaymentMethodManifestParseSuccess([Ljava/net/URI;[Ljava/net/URI;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 1
    iget-boolean p2, p0, LUu0;->m:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, LUu0;->j:LTu0;

    iget-object p3, p0, LUu0;->a:Ljava/net/URI;

    check-cast p2, Liu0;

    .line 2
    invoke-virtual {p2, p3}, Liu0;->a(Ljava/net/URI;)Lhu0;

    move-result-object p2

    const/4 p3, 0x1

    iput-boolean p3, p2, Lhu0;->c:Z

    .line 3
    :cond_0
    iget-object p2, p0, LUu0;->d:Ljava/util/Set;

    const-string p3, "*"

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4
    :cond_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 6
    aget-object v2, p2, v1

    invoke-virtual {p3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, LUu0;->d:Ljava/util/Set;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean p2, p0, LUu0;->m:Z

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, LUu0;->c:Ljava/util/Set;

    invoke-virtual {p3, p2}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    .line 10
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/URI;

    .line 11
    iget-object v1, p0, LUu0;->j:LTu0;

    iget-object v2, p0, LUu0;->a:Ljava/net/URI;

    check-cast v1, Liu0;

    .line 12
    invoke-virtual {v1, v2}, Liu0;->a(Ljava/net/URI;)Lhu0;

    move-result-object v1

    iget-object v1, v1, Lhu0;->b:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    :goto_2
    array-length p2, p1

    if-nez p2, :cond_5

    .line 14
    iget-boolean p1, p0, LUu0;->m:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->c()V

    .line 15
    :cond_4
    iget-object p1, p0, LUu0;->f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    iget-object p2, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, LUu0;->d:Ljava/util/Set;

    .line 16
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 17
    iget-wide v0, p1, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 18
    invoke-static {v0, v1, p1, p2, p3}, LJ/N;->MKb_1VDz(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->b()V

    return-void

    .line 20
    :cond_5
    array-length p2, p1

    iput p2, p0, LUu0;->l:I

    .line 21
    :goto_3
    array-length p2, p1

    if-ge v0, p2, :cond_8

    .line 22
    iget-boolean p2, p0, LUu0;->n:Z

    if-eqz p2, :cond_6

    return-void

    .line 23
    :cond_6
    iget-object p2, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    aget-object p3, p1, v0

    if-eqz p2, :cond_7

    .line 24
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 25
    iget-wide v1, p2, Lorg/chromium/components/payments/PaymentManifestDownloader;->a:J

    .line 26
    invoke-static {v1, v2, p2, p3, p0}, LJ/N;->MpedIYcV(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    .line 27
    throw p1

    :cond_8
    return-void
.end method

.method public onPaymentWebAppManifestFetched([Lorg/chromium/components/payments/WebAppManifestSection;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LUu0;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 2
    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, LUu0;->a([Lorg/chromium/components/payments/WebAppManifestSection;)Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, LUu0;->j:LTu0;

    iget-object v3, p0, LUu0;->a:Ljava/net/URI;

    iget-object v4, p0, LUu0;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSu0;

    iget-object v1, v1, LSu0;->a:Landroid/content/pm/ResolveInfo;

    .line 7
    check-cast v2, Liu0;

    .line 8
    invoke-virtual {v2, v3}, Liu0;->a(Ljava/net/URI;)Lhu0;

    move-result-object v2

    iget-object v2, v2, Lhu0;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, LUu0;->l:I

    sub-int/2addr p1, v0

    iput p1, p0, LUu0;->l:I

    if-eqz p1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->c()V

    .line 11
    iget-object p1, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void

    .line 12
    :cond_4
    :goto_1
    iput-boolean v0, p0, LUu0;->m:Z

    const/4 p1, 0x0

    .line 13
    iput p1, p0, LUu0;->l:I

    .line 14
    iget-object p1, p0, LUu0;->g:Lorg/chromium/components/payments/PaymentManifestDownloader;

    iget-object v0, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {p1, v0, p0}, Lorg/chromium/components/payments/PaymentManifestDownloader;->a(Ljava/net/URI;Lorg/chromium/components/payments/PaymentManifestDownloader$ManifestDownloadCallback;)V

    return-void
.end method

.method public onWebAppManifestDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LUu0;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, LUu0;->h:Lorg/chromium/components/payments/PaymentManifestParser;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 4
    iget-wide v0, v0, Lorg/chromium/components/payments/PaymentManifestParser;->a:J

    .line 5
    invoke-static {v0, v1, p1, p0}, LJ/N;->MhPu7GL6(JLjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public onWebAppManifestParseSuccess([Lorg/chromium/components/payments/WebAppManifestSection;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, LUu0;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, LUu0;->d:Ljava/util/Set;

    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/chromium/components/payments/WebAppManifestSection;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, LUu0;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-boolean v1, p0, LUu0;->m:Z

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {p0, p1}, LUu0;->a([Lorg/chromium/components/payments/WebAppManifestSection;)Ljava/util/Set;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8
    iget-object v2, p0, LUu0;->j:LTu0;

    iget-object v3, p0, LUu0;->a:Ljava/net/URI;

    iget-object v4, p0, LUu0;->b:Ljava/util/Map;

    .line 9
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LSu0;

    iget-object v1, v1, LSu0;->a:Landroid/content/pm/ResolveInfo;

    .line 10
    check-cast v2, Liu0;

    .line 11
    invoke-virtual {v2, v3}, Liu0;->a(Ljava/net/URI;)Lhu0;

    move-result-object v2

    iget-object v2, v2, Lhu0;->a:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    iget p1, p0, LUu0;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, LUu0;->l:I

    if-eqz p1, :cond_3

    return-void

    .line 13
    :cond_3
    iget-boolean p1, p0, LUu0;->m:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->c()V

    .line 14
    :cond_4
    iget-object p1, p0, LUu0;->f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    iget-object v1, p0, LUu0;->a:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LUu0;->d:Ljava/util/Set;

    .line 15
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 16
    iget-wide v3, p1, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 17
    invoke-static {v3, v4, p1, v1, v2}, LJ/N;->MKb_1VDz(JLjava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, LUu0;->f:Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;

    iget-object v1, p0, LUu0;->e:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 19
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/chromium/components/payments/WebAppManifestSection;

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 21
    :cond_5
    new-array v2, v3, [Lorg/chromium/components/payments/WebAppManifestSection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 22
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    move v5, v4

    const/4 v4, 0x0

    .line 23
    :goto_4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/chromium/components/payments/WebAppManifestSection;

    array-length v6, v6

    if-ge v4, v6, :cond_6

    .line 24
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/chromium/components/payments/WebAppManifestSection;

    aget-object v6, v6, v4

    aput-object v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_3

    .line 25
    :cond_7
    iget-wide v0, p1, Lorg/chromium/chrome/browser/payments/PaymentManifestWebDataService;->a:J

    .line 26
    invoke-static {v0, v1, p1, v2}, LJ/N;->MrEdT70Z(JLjava/lang/Object;[Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, LUu0;->j:LTu0;

    check-cast p1, Liu0;

    invoke-virtual {p1}, Liu0;->b()V

    return-void
.end method
