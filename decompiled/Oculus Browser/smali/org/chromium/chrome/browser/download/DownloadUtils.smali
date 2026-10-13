.class public Lorg/chromium/chrome/browser/download/DownloadUtils;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lorg/chromium/chrome/browser/download/DownloadUtils;->a:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadUtils;->b:[I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const-string v8, "application/pkix-cert"

    const-string v9, "application/x-wifi-config"

    const-string v1, "application/vnd.oma.dd+xml"

    const-string v2, "application/pdf"

    const-string v3, "application/x-x509-ca-cert"

    const-string v4, "application/x-x509-user-cert"

    const-string v5, "application/x-x509-server-cert"

    const-string v6, "application/x-pkcs12"

    const-string v7, "application/application/x-pem-file"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/chromium/chrome/browser/download/DownloadUtils;->c:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1302d1
        0x7f1302d2
        0x7f1302d0
    .end array-data

    :array_1
    .array-data 4
        0x7f1302e8
        0x7f1302e9
        0x7f1302e6
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6

    .line 58
    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 60
    :try_start_0
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 61
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v1

    .line 62
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    .line 63
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_4

    .line 64
    aget-object v5, v1, v2

    if-nez v5, :cond_2

    goto :goto_1

    .line 65
    :cond_2
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const/4 v4, 0x0

    :goto_3
    const-string v1, "DownloadFileProvider"

    .line 66
    invoke-static {v1}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 67
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadFileProvider;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_5

    .line 68
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-static {v1}, Lorg/chromium/base/ContentUriUtils;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 70
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create content uri: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "FileUtils"

    invoke-static {v3, p0, v2}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_4
    if-nez p0, :cond_6

    .line 71
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :cond_6
    :goto_5
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 127
    invoke-static {v0}, LD01;->a(I)LF01;

    move-result-object v0

    .line 128
    invoke-interface {v0}, LF01;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0}, LJ/N;->Mk1FrEnC(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    sget-object p0, LzT;->a:Landroid/content/Context;

    const v0, 0x7f1302d8

    .line 131
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x3e8

    .line 102
    div-long/2addr p1, v0

    const-wide/32 v0, 0x15180

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-ltz v3, :cond_0

    .line 103
    div-long v0, p1, v0

    long-to-int v1, v0

    const v0, 0x15180

    mul-int v0, v0, v1

    int-to-long v3, v0

    sub-long/2addr p1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v3, 0xe10

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    .line 104
    div-long v3, p1, v3

    long-to-int v0, v3

    mul-int/lit16 v3, v0, 0xe10

    int-to-long v3, v3

    sub-long/2addr p1, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-wide/16 v3, 0x3c

    cmp-long v5, p1, v3

    if-ltz v5, :cond_2

    .line 105
    div-long v3, p1, v3

    long-to-int v4, v3

    mul-int/lit8 v3, v4, 0x3c

    int-to-long v5, v3

    sub-long/2addr p1, v5

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    long-to-int p2, p1

    const/4 p1, 0x2

    const/4 v3, 0x1

    if-lt v1, p1, :cond_3

    add-int/lit8 v0, v0, 0xc

    .line 106
    div-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    const p1, 0x7f13051f

    new-array p2, v3, [Ljava/lang/Object;

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-lez v1, :cond_4

    const p1, 0x7f130522

    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-lt v0, p1, :cond_5

    add-int/lit8 v4, v4, 0x1e

    .line 109
    div-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v0

    const p1, 0x7f130520

    new-array p2, v3, [Ljava/lang/Object;

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-lez v0, :cond_6

    const p1, 0x7f130523

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-lt v4, p1, :cond_7

    add-int/lit8 p2, p2, 0x1e

    .line 112
    div-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, v4

    const p1, 0x7f130521

    new-array v0, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-lez v4, :cond_8

    const p1, 0x7f130524

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne p2, v3, :cond_9

    const p1, 0x7f130525

    .line 115
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const p1, 0x7f130526

    new-array v0, v3, [Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;[IJ)Ljava/lang/String;
    .locals 7

    const-wide/32 v0, 0x100000

    .line 1
    div-long v0, p2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 2
    aget p1, p1, v3

    long-to-float p2, p2

    const/high16 p3, 0x44800000    # 1024.0f

    :goto_0
    div-float/2addr p2, p3

    goto :goto_1

    :cond_0
    const-wide/32 v0, 0x40000000

    .line 3
    div-long v0, p2, v0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    .line 4
    aget p1, p1, v2

    long-to-float p2, p2

    const/high16 p3, 0x49800000    # 1048576.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 5
    aget p1, p1, v0

    long-to-float p2, p2

    const/high16 p3, 0x4e800000

    goto :goto_0

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, p3, v3

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(LfU0;)Ljava/lang/String;
    .locals 8

    .line 9
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 10
    invoke-virtual {p0}, LfU0;->b()Z

    move-result v1

    const v2, 0x7f1302e4

    if-eqz v1, :cond_0

    iget-wide v3, p0, LfU0;->a:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    iget v1, p0, LfU0;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_3

    if-eq v1, v3, :cond_1

    const-string p0, ""

    return-object p0

    .line 13
    :cond_1
    invoke-virtual {p0}, LfU0;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p0}, LfU0;->a()I

    move-result p0

    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 18
    :cond_3
    invoke-virtual {p0}, LfU0;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/32 v1, 0x7fffffff

    .line 19
    iget-wide v6, p0, LfU0;->a:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p0, v1

    .line 20
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11000d

    new-array v2, v5, [Ljava/lang/Object;

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 22
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 23
    :cond_4
    iget-object v1, p0, LfU0;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v6, p0, LfU0;->a:J

    sub-long/2addr v1, v6

    long-to-int p0, v1

    if-ne p0, v5, :cond_5

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13044f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f13031a

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    .line 26
    :cond_6
    iget-wide v1, p0, LfU0;->a:J

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p0}, LfU0;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1302e7

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 29
    :cond_7
    iget-object p0, p0, LfU0;->b:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1302e5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object p0, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 132
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "."

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const-string v2, "\u2026"

    const/4 v3, 0x0

    if-lt v1, p1, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sub-int/2addr p1, v1

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1302e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p0

    .line 43
    iget-object p0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 9

    .line 44
    new-instance v0, Lgn0;

    invoke-direct {v0, p0, p1}, Lgn0;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 45
    iget-boolean p0, p1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v3

    .line 47
    iget-object v4, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 48
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 49
    iget-wide v1, v3, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 50
    invoke-virtual {v0}, Lgn0;->a()Ljava/lang/String;

    move-result-object v8

    const-string v5, "async_loading"

    .line 51
    invoke-static/range {v1 .. v8}, LJ/N;->MNR_O1IV(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lgn0;->a()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {p1, p0}, LJ/N;->MgaTXnFG(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result p0

    const-string v0, "OfflinePages.SavePage.PercentLoaded"

    .line 55
    invoke-static {v0, p0}, LfV;->d(Ljava/lang/String;I)V

    .line 56
    :goto_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p0

    invoke-static {p0}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object p0

    const-string p1, "download_page_started"

    .line 57
    invoke-interface {p0, p1}, LoT0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(LbU0;ZI)V
    .locals 6

    if-eqz p0, :cond_0

    .line 31
    iget-object v0, p0, LbU0;->a:Ljava/lang/String;

    const-string v1, "LEGACY_ANDROID_DOWNLOAD"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 32
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 33
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p2, 0x10000000

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {p0}, LcU0;->b(LbU0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Laa0;->a()LeU0;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2, p0}, LeU0;->a(ILbU0;)V

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b()J

    move-result-wide v0

    iget-object v3, p0, LbU0;->b:Ljava/lang/String;

    move v4, p1

    move v5, p2

    .line 40
    invoke-static/range {v0 .. v5}, LJ/N;->M3D9bHLw(JLjava/lang/Object;Ljava/lang/String;ZI)V

    :goto_1
    return-void
.end method

.method public static a()Z
    .locals 1

    const-string v0, "OfflineHome"

    .line 7
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/net/NetworkChangeNotifier;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static a(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->showDownloadManager(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;IZ)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "cannot open intent: "

    .line 95
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 96
    invoke-static {p1, p0}, LqZ;->b(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 98
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 99
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 100
    :catch_2
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .line 73
    invoke-static {p6, p1}, LT80;->a(ILjava/lang/String;)V

    .line 74
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 75
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 76
    invoke-static {p1}, LJ/N;->M4t0L845(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 77
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 78
    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 79
    new-instance p5, Ljava/io/File;

    invoke-direct {p5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p4

    .line 81
    :goto_0
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p0, p4, p1, v4}, LKi0;->a(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 83
    invoke-static {p0, v2}, LqZ;->b(Landroid/content/Intent;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, p2, p3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;Z)V

    return v4

    .line 85
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 86
    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_1

    .line 87
    :cond_2
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 88
    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 89
    invoke-static {p0, p1, p4, p5}, LKi0;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 90
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {v1, p2, p3}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    nop

    const/16 p0, 0x8

    const/4 p1, 0x0

    if-eq p6, p0, :cond_3

    const p0, 0x7f1302a4

    .line 92
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lmf1;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Lmf1;

    move-result-object p0

    .line 93
    iget-object p0, p0, Lmf1;->a:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return p1

    .line 94
    :cond_4
    throw v2
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 117
    :cond_0
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    if-eqz v1, :cond_1

    return v0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1}, LJ/N;->MXyz2Okt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 120
    :cond_2
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;

    move-result-object v0

    .line 122
    iget-object p0, p0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 123
    iget-wide v1, v0, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->a:J

    .line 124
    invoke-static {v1, v2, v0, p0}, LJ/N;->Mvkx0jqI(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 125
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    return v0

    .line 126
    :cond_4
    invoke-static {p0}, Lmn0;->b(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, LJ/N;->MOENIRAW(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 4

    .line 2
    sget-object v0, LzT;->a:Landroid/content/Context;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, LD01;->a(I)LF01;

    move-result-object v2

    invoke-interface {v2}, LF01;->a()Z

    move-result v2

    const v3, 0x7f1302dc

    if-eqz v2, :cond_2

    const-string v2, "OfflinePagesDescriptivePendingStatus"

    .line 4
    invoke-static {v2}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 5
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p0, 0x7f1302dd

    .line 6
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f1302de

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lorg/chromium/chrome/browser/download/DownloadUtils;->b:[I

    invoke-static {p0, v0, p1, p2}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;[IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/vnd.oma.dd+xml"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "https"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object p0, v1

    :cond_2
    return-object p0
.end method

.method public static getUriStringForPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static openDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0, p0, p6}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;I)Z

    :cond_0
    return-void
.end method

.method public static remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "application/unknown"

    .line 2
    :cond_0
    invoke-static {p0, p1, p2}, LM70;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldAutoOpenDownload(Ljava/lang/String;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lorg/chromium/chrome/browser/download/DownloadUtils;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static showDownloadManager(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;IZ)Z
    .locals 5

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    .line 2
    :cond_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    if-eqz p0, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 3
    :goto_0
    invoke-static {v1}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result v1

    const/high16 v2, 0x10000000

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 4
    new-instance p0, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string p3, "chrome-native://downloads/"

    .line 5
    invoke-direct {p0, p3, v3}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;I)V

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p1, p0}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/LoadUrlParams;)I

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p0

    invoke-static {p0}, LzO0;->a(I)Landroid/content/Intent;

    move-result-object p0

    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-static {v0, p0}, LCO0;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    new-instance p3, LiJ0;

    invoke-direct {p3, v3}, LiJ0;-><init>(Z)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p3, p0, v0, v1}, LiJ0;->createNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;ILorg/chromium/chrome/browser/tab/Tab;)Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_2

    .line 13
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 14
    const-class v4, LO70;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "org.chromium.chrome.browser.download.SHOW_PREFETCHED_CONTENT"

    .line 15
    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_5

    .line 16
    iget-boolean p3, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    const-string v4, "org.chromium.chrome.browser.download.IS_OFF_THE_RECORD"

    .line 17
    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    if-nez p0, :cond_6

    .line 18
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    const/high16 p3, 0x28000000

    .line 20
    invoke-virtual {v1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    const-string v0, "org.chromium.chrome.browser.parent_component"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    const/4 p0, 0x1

    .line 23
    invoke-static {p0}, LD01;->a(I)LF01;

    move-result-object p3

    .line 24
    invoke-interface {p3}, LF01;->a()Z

    move-result p3

    if-eqz p3, :cond_8

    if-nez p1, :cond_7

    .line 25
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    .line 26
    :goto_3
    invoke-static {p1}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object p1

    const-string p3, "download_home_opened"

    .line 27
    invoke-interface {p1, p3}, LoT0;->c(Ljava/lang/String;)V

    .line 28
    :cond_8
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 29
    invoke-static {p1}, LUg0;->a(Landroid/content/Context;)LUg0;

    move-result-object p1

    .line 30
    iget-boolean p1, p1, LUg0;->f:Z

    if-nez p1, :cond_9

    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, "DownloadMetrics"

    const-string p3, "Native is not loaded, dropping download open metrics."

    .line 31
    invoke-static {p2, p3, p1}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    const-string p1, "Android.DownloadPage.OpenSource"

    const/16 p3, 0xc

    .line 32
    invoke-static {p1, p2, p3}, LfV;->a(Ljava/lang/String;II)V

    :goto_4
    return p0
.end method
