.class public Lorg/chromium/base/BuildInfo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static m:Landroid/content/pm/PackageInfo; = null

.field public static n:Ljava/lang/String; = ""


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LqT;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lorg/chromium/base/BuildInfo;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/chromium/base/BuildInfo;->b:J

    .line 7
    sget-object v5, Lorg/chromium/base/BuildInfo;->m:Landroid/content/pm/PackageInfo;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 8
    sget-object v0, Lorg/chromium/base/BuildInfo;->m:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->c:Ljava/lang/String;

    .line 9
    sget-object v0, Lorg/chromium/base/BuildInfo;->m:Landroid/content/pm/PackageInfo;

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/chromium/base/BuildInfo;->d:J

    .line 10
    sget-object v0, Lorg/chromium/base/BuildInfo;->m:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->e:Ljava/lang/String;

    .line 11
    sput-object v6, Lorg/chromium/base/BuildInfo;->m:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 12
    :cond_0
    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->c:Ljava/lang/String;

    .line 13
    iput-wide v3, p0, Lorg/chromium/base/BuildInfo;->d:J

    .line 14
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->e:Ljava/lang/String;

    .line 15
    :goto_0
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->a:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lorg/chromium/base/BuildInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/BuildInfo;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v0, "com.google.android.gms"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-eqz v6, :cond_1

    .line 18
    :try_start_2
    invoke-static {v6}, Lorg/chromium/base/BuildInfo;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    const-string v0, "gms versionCode not available."

    .line 19
    :goto_2
    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->g:Ljava/lang/String;

    const-string v0, "true"
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    const-string v3, "projekt.substratum"

    .line 20
    invoke-virtual {p1, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    :try_start_4
    const-string v0, "false"

    .line 21
    :goto_3
    iput-object v0, p0, Lorg/chromium/base/BuildInfo;->k:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 22
    :try_start_5
    sget-object p1, LzT;->a:Landroid/content/Context;

    const v0, 0x7f13050c

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    :try_start_6
    const-string p1, "Not found"

    .line 24
    :goto_4
    iput-object p1, p0, Lorg/chromium/base/BuildInfo;->l:Ljava/lang/String;

    const-string p1, ", "

    .line 25
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/BuildInfo;->h:Ljava/lang/String;

    const-string p1, "@%x_%x"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget-wide v3, p0, Lorg/chromium/base/BuildInfo;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x1

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/BuildInfo;->j:Ljava/lang/String;

    .line 27
    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x80

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 29
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/base/BuildInfo;->i:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p0}, LDU;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdev"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getAll()[Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, LrT;->a:Lorg/chromium/base/BuildInfo;

    .line 2
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    iget-wide v3, v0, Lorg/chromium/base/BuildInfo;->b:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xa

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0xb

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->c:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0xc

    iget-wide v3, v0, Lorg/chromium/base/BuildInfo;->d:J

    .line 7
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/16 v1, 0xd

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->e:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0xe

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->i:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0xf

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->g:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x10

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->f:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x11

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->h:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x12

    sget-object v3, Lorg/chromium/base/BuildInfo;->n:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x13

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x14

    iget-object v3, v0, Lorg/chromium/base/BuildInfo;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    const/16 v1, 0x15

    iget-object v0, v0, Lorg/chromium/base/BuildInfo;->j:Ljava/lang/String;

    aput-object v0, v2, v1

    const/16 v0, 0x16

    .line 8
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v1

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    aput-object v1, v2, v0

    const/16 v0, 0x17

    .line 9
    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    aput-object v3, v2, v0

    return-object v2
.end method
