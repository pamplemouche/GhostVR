.class public LVP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LVf1;


# static fields
.field public static final x:Ljava/util/Set;

.field public static final y:Ljava/util/Set;

.field public static final z:LCW;


# instance fields
.field public final w:Landroid/app/Activity;


# direct methods
.method public static constructor <clinit>()V
    .locals 39

    const-string v37, "webp"

    const-string v38, "xbm"

    const-string v0, "bmp"

    const-string v1, "css"

    const-string v2, "csv"

    const-string v3, "ehtml"

    const-string v4, "flac"

    const-string v5, "gif"

    const-string v6, "htm"

    const-string v7, "html"

    const-string v8, "ico"

    const-string v9, "jfif"

    const-string v10, "jpeg"

    const-string v11, "jpg"

    const-string v12, "m4a"

    const-string v13, "m4v"

    const-string v14, "mp3"

    const-string v15, "mp4"

    const-string v16, "mpeg"

    const-string v17, "mpg"

    const-string v18, "oga"

    const-string v19, "ogg"

    const-string v20, "ogm"

    const-string v21, "ogv"

    const-string v22, "opus"

    const-string v23, "pjp"

    const-string v24, "pjpeg"

    const-string v25, "png"

    const-string v26, "shtm"

    const-string v27, "shtml"

    const-string v28, "svg"

    const-string v29, "svgz"

    const-string v30, "text"

    const-string v31, "tif"

    const-string v32, "tiff"

    const-string v33, "txt"

    const-string v34, "wav"

    const-string v35, "weba"

    const-string v36, "webm"

    .line 1
    filled-new-array/range {v0 .. v38}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LVP0;->x:Ljava/util/Set;

    const-string v24, "video/ogg"

    const-string v25, "video/webm"

    const-string v1, "audio/flac"

    const-string v2, "audio/mp3"

    const-string v3, "audio/ogg"

    const-string v4, "audio/wav"

    const-string v5, "audio/webm"

    const-string v6, "audio/x-m4a"

    const-string v7, "image/bmp"

    const-string v8, "image/gif"

    const-string v9, "image/jpeg"

    const-string v10, "image/png"

    const-string v11, "image/svg+xml"

    const-string v12, "image/tiff"

    const-string v13, "image/webp"

    const-string v14, "image/x-icon"

    const-string v15, "image/x-ms-bmp"

    const-string v16, "image/x-xbitmap"

    const-string v17, "text/comma-separated-values"

    const-string v18, "text/css"

    const-string v19, "text/csv"

    const-string v20, "text/html"

    const-string v21, "text/plain"

    const-string v22, "video/mp4"

    const-string v23, "video/mpeg"

    .line 3
    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LVP0;->y:Ljava/util/Set;

    .line 5
    sget-object v0, LFW;->m:LFW;

    .line 6
    invoke-static {v0}, Lorg/chromium/base/task/PostTask;->a(LFW;)LuW;

    move-result-object v0

    sput-object v0, LVP0;->z:LCW;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->t()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 4
    :goto_0
    iput-object v0, p0, LVP0;->w:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lrf1;[Leg1;LUf1;)V
    .locals 6

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "WebShare.ApiCount"

    .line 2
    invoke-static {v3, v2, v0}, LfV;->a(Ljava/lang/String;II)V

    .line 3
    iget-object v0, p0, LVP0;->w:Landroid/app/Activity;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x3

    const-string p2, "WebShare.ShareOutcome"

    .line 4
    invoke-static {p2, v3, p1}, LfV;->a(Ljava/lang/String;II)V

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p5, Lbg1;

    invoke-virtual {p5, p1}, Lbg1;->a(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, LTP0;

    invoke-direct {v0, p0, p5}, LTP0;-><init>(LVP0;LUf1;)V

    .line 7
    new-instance v4, LVD0;

    iget-object v5, p0, LVP0;->w:Landroid/app/Activity;

    iget-object p3, p3, Lrf1;->b:Ljava/lang/String;

    invoke-direct {v4, v5, p1, p3}, LVD0;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iput-object p2, v4, LVD0;->e:Ljava/lang/String;

    .line 9
    iput-object v0, v4, LVD0;->k:LRD0;

    if-eqz p4, :cond_9

    .line 10
    array-length p1, p4

    if-nez p1, :cond_1

    goto/16 :goto_5

    .line 11
    :cond_1
    array-length p1, p4

    const/16 p2, 0xa

    if-le p1, p2, :cond_2

    .line 12
    check-cast p5, Lbg1;

    invoke-virtual {p5, v1}, Lbg1;->a(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_2
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    aget-object p3, p4, p2

    .line 14
    iget-object p3, p3, Leg1;->b:Ljava/lang/String;

    .line 15
    invoke-static {p3}, LJ/N;->MlBoKUuH(Ljava/lang/String;)I

    move-result p3

    const-string v0, "WebShare.Unverified"

    .line 16
    invoke-static {v0, p3}, LfV;->e(Ljava/lang/String;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_3
    array-length p1, p4

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    aget-object p3, p4, p2

    .line 18
    iget-object v0, p3, Leg1;->b:Ljava/lang/String;

    const/16 v5, 0x2e

    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_5

    sget-object v5, LVP0;->x:Ljava/util/Set;

    .line 20
    invoke-static {v0}, LFT;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_7

    .line 21
    iget-object v0, p3, Leg1;->c:LWX;

    iget-object v0, v0, LWX;->c:Ljava/lang/String;

    .line 22
    sget-object v5, LVP0;->y:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    const-string p1, "Cannot share potentially dangerous \""

    .line 23
    invoke-static {p1}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p3, Leg1;->c:LWX;

    iget-object p2, p2, LWX;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" file \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Leg1;->b:Ljava/lang/String;

    const-string p3, "\"."

    invoke-static {p1, p2, p3}, LZi;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "share"

    invoke-static {p3, p1, p2}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    check-cast p5, Lbg1;

    invoke-virtual {p5, v1}, Lbg1;->a(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_8
    new-instance p1, LUP0;

    invoke-direct {p1, p0, p5, p4, v4}, LUP0;-><init>(LVP0;LUf1;[Leg1;LVD0;)V

    sget-object p2, LVP0;->z:LCW;

    .line 26
    invoke-virtual {p1, p2}, LkW;->executeOnTaskRunner(LCW;)LkW;

    return-void

    .line 27
    :cond_9
    :goto_5
    invoke-virtual {v4}, LVD0;->a()LWD0;

    move-result-object p1

    invoke-static {p1}, LTD0;->a(LWD0;)V

    return-void
.end method

.method public a(Ly71;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method
