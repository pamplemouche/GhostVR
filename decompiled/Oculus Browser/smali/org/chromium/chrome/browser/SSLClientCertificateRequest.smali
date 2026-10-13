.class public Lorg/chromium/chrome/browser/SSLClientCertificateRequest;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static selectClientCertificate(JLorg/chromium/ui/base/WindowAndroid;[Ljava/lang/String;[[BLjava/lang/String;I)Z
    .locals 8

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    invoke-virtual {p2}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    const-string v0, "SSLClientCertificateRequest"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const-string p0, "Certificate request on GC\'d activity."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    array-length v2, p4

    const/4 v7, 0x0

    if-lez v2, :cond_2

    .line 5
    array-length v2, p4

    new-array v2, v2, [Ljavax/security/auth/x500/X500Principal;

    const/4 v3, 0x0

    .line 6
    :goto_0
    :try_start_0
    array-length v4, p4

    if-ge v3, v4, :cond_1

    .line 7
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, p4, v3

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while decoding issuers list: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    move-object v3, v7

    .line 9
    :goto_1
    new-instance p4, LLZ;

    .line 10
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p4, v0, p0, p1}, LLZ;-><init>(Landroid/content/Context;J)V

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p4

    move-object v2, p3

    move-object v4, p5

    move v5, p6

    .line 11
    :try_start_1
    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 12
    :catch_1
    invoke-virtual {p4, v7}, LLZ;->alias(Ljava/lang/String;)V

    .line 13
    new-instance p0, Ltc1;

    const p1, 0x7f140245

    invoke-direct {p0, p2, p1}, Ltc1;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f130205

    .line 14
    invoke-virtual {p0, p1}, LO8;->b(I)LO8;

    const p1, 0x7f130204

    .line 15
    invoke-virtual {p0, p1}, LO8;->a(I)LO8;

    sget-object p1, LIZ;->w:Landroid/content/DialogInterface$OnClickListener;

    const p2, 0x7f130207

    .line 16
    invoke-virtual {p0, p2, p1}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 17
    invoke-virtual {p0}, LO8;->b()LP8;

    :goto_2
    const/4 p0, 0x1

    return p0
.end method
