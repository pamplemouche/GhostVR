.class public LM70;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxU;


# static fields
.field public static final x:Ljava/lang/Class;

.field public static final y:Ljava/util/HashSet;


# instance fields
.field public w:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, LM70;

    sput-object v0, LM70;->x:Ljava/lang/Class;

    .line 2
    new-instance v0, Ljava/util/HashSet;

    const-string v6, "application/force-download"

    const-string v7, "application/unknown"

    const-string v1, "text/plain"

    const-string v2, "application/octet-stream"

    const-string v3, "binary/octet-stream"

    const-string v4, "octet/stream"

    const-string v5, "application/download"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, LM70;->y:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LM70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/tab/Tab;)LM70;
    .locals 4

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 10
    sget-object v1, LM70;->x:Ljava/lang/Class;

    invoke-virtual {v0, v1}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object v1

    check-cast v1, LM70;

    if-nez v1, :cond_0

    .line 11
    sget-object v1, LM70;->x:Ljava/lang/Class;

    new-instance v2, LM70;

    .line 12
    iget-object v3, p0, Lorg/chromium/chrome/browser/tab/Tab;->d:Landroid/content/Context;

    .line 13
    invoke-direct {v2, v3, p0}, LM70;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 14
    invoke-virtual {v0, v1, v2}, LyU;->a(Ljava/lang/Class;LxU;)LxU;

    move-result-object p0

    move-object v1, p0

    check-cast v1, LM70;

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, LM70;->y:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "."

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p0, p2

    goto :goto_1

    :cond_2
    const-string p2, "dm"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p0, "application/vnd.oma.drm.message"

    goto :goto_1

    :cond_3
    const-string p2, "dd"

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "application/vnd.oma.dd+xml"

    :cond_4
    :goto_1
    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LM70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method
