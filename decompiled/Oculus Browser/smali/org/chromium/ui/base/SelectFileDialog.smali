.class public Lorg/chromium/ui/base/SelectFileDialog;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWc1;
.implements Lsc1;


# static fields
.field public static final F:J

.field public static final G:[Ljava/lang/String;

.field public static final H:[Ljava/lang/String;


# instance fields
.field public A:Landroid/net/Uri;

.field public B:Lorg/chromium/ui/base/WindowAndroid;

.field public C:Z

.field public D:Z

.field public E:Z

.field public final w:J

.field public x:Ljava/util/List;

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/ui/base/SelectFileDialog;->F:J

    const-string v11, ".xcf"

    const-string v12, ".webp"

    const-string v2, ".apng"

    const-string v3, ".bmp"

    const-string v4, ".gif"

    const-string v5, ".jpeg"

    const-string v6, ".jpg"

    const-string v7, ".pdf"

    const-string v8, ".png"

    const-string v9, ".tif"

    const-string v10, ".tiff"

    .line 2
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/SelectFileDialog;->G:[Ljava/lang/String;

    const-string v12, ".webm"

    const-string v13, ".mkv"

    const-string v1, ".asf"

    const-string v2, ".avhcd"

    const-string v3, ".avi"

    const-string v4, ".divx"

    const-string v5, ".flv"

    const-string v6, ".mov"

    const-string v7, ".mp4"

    const-string v8, ".mpeg"

    const-string v9, ".mpg"

    const-string v10, ".swf"

    const-string v11, ".wmv"

    .line 3
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/SelectFileDialog;->H:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->w:J

    return-void
.end method

.method public static synthetic a(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;)Ljava/io/File;
    .locals 2

    if-eqz p0, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-static {p1}, Lwc1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const-string v0, ".jpg"

    .line 30
    invoke-static {p0, v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    const-string v2, ""

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 8
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, "application/octet-stream"

    :cond_4
    :goto_1
    const-string v3, "image/"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 10
    invoke-static {}, Lwc1;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "video/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    return-object v1

    .line 11
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method public static synthetic a(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    return-void
.end method

.method public static create(J)Lorg/chromium/ui/base/SelectFileDialog;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/ui/base/SelectFileDialog;

    invoke-direct {v0, p0, p1}, Lorg/chromium/ui/base/SelectFileDialog;-><init>(J)V

    return-object v0
.end method

.method public static g()V
    .locals 4

    .line 1
    sget-object v0, LFW;->j:LFW;

    sget-object v1, LOc1;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final synthetic h()V
    .locals 13

    const-string v0, "SelectFileDialog"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-static {v2}, Lwc1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v2, v6

    .line 7
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v8, v3, v8

    sget-wide v10, Lorg/chromium/ui/base/SelectFileDialog;->F:J

    cmp-long v12, v8, v10

    if-lez v12, :cond_2

    .line 8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to delete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "Failed to delete captured camera files."

    .line 9
    invoke-static {v0, v1, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private selectFile([Ljava/lang/String;ZZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    .line 2
    iput-boolean p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->y:Z

    .line 3
    iput-boolean p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->z:Z

    .line 4
    iput-object p4, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    .line 5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p4, p1}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->C:Z

    .line 7
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->D:Z

    .line 9
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->canResolveActivity(Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->E:Z

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->f()Z

    move-result p2

    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p4, p3}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->C:Z

    if-eqz v0, :cond_1

    const-string v0, "image/*"

    const-string v1, "image/"

    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->D:Z

    if-eqz v0, :cond_3

    const-string v0, "video/*"

    const-string v1, "video/"

    .line 17
    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "android.permission.CAMERA"

    .line 18
    invoke-virtual {p4, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->E:Z

    if-eqz v0, :cond_4

    const-string v0, "audio/*"

    const-string v1, "audio/"

    .line 21
    invoke-virtual {p0, v0, v1}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 22
    invoke-virtual {p4, v0}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->c()V

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 27
    new-instance v0, LMc1;

    invoke-direct {v0, p0, p2, p1, p3}, LMc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Z[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(I[Landroid/net/Uri;)V
    .locals 3

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "image/*"

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    iget-boolean p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->z:Z

    if-eqz p2, :cond_1

    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string p2, "android.intent.action.GET_CONTENT"

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    const v0, 0x7f1303a6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p1, p0, v0}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)I

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    const-string p2, "android.permission.CAMERA"

    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, LNc1;

    invoke-direct {v0, p0}, LNc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;)V

    invoke-virtual {p1, p2, v0}, Lorg/chromium/ui/base/WindowAndroid;->requestPermissions([Ljava/lang/String;LKc1;)V

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, LPc1;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p1, p0, p2, v0, p0}, LPc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Ljava/lang/Boolean;Lorg/chromium/ui/base/WindowAndroid;LWc1;)V

    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 20
    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_1

    .line 21
    :cond_4
    array-length p1, p2

    if-nez p1, :cond_5

    .line 22
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    return-void

    .line 23
    :cond_5
    new-instance p1, LQc1;

    .line 24
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 25
    array-length v2, p2

    if-le v2, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p1, p0, v1, v0, p2}, LQc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    .line 26
    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_1

    .line 27
    :cond_7
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    :goto_1
    return-void
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "Android.SelectFileDialogImgCount"

    .line 124
    invoke-static {v1, v0}, LfV;->b(Ljava/lang/String;I)V

    .line 125
    :cond_0
    invoke-static {p1, p2, p0, p3, p4}, LJ/N;->MBeWYy2V(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 14

    .line 60
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "video/"

    const-string v4, "image/"

    if-nez v0, :cond_0

    goto :goto_5

    .line 61
    :cond_0
    invoke-virtual {p0, v4}, Lorg/chromium/ui/base/SelectFileDialog;->b(Ljava/lang/String;)I

    move-result v0

    .line 62
    invoke-virtual {p0, v3}, Lorg/chromium/ui/base/SelectFileDialog;->b(Ljava/lang/String;)I

    move-result v5

    .line 63
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int v7, v0, v5

    if-le v6, v7, :cond_6

    .line 64
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 65
    sget-object v8, Lorg/chromium/ui/base/SelectFileDialog;->G:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 66
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v8, v0

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move v8, v0

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    goto :goto_4

    .line 67
    :cond_3
    sget-object v0, Lorg/chromium/ui/base/SelectFileDialog;->H:[Ljava/lang/String;

    array-length v9, v0

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_5

    aget-object v11, v0, v10

    .line 68
    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    move v0, v8

    goto :goto_0

    .line 69
    :cond_6
    iget-object v6, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v0

    sub-int/2addr v6, v5

    if-lez v6, :cond_7

    :goto_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    if-lez v5, :cond_9

    if-nez v0, :cond_8

    const/4 v0, 0x2

    goto :goto_6

    :cond_8
    const/4 v0, 0x3

    goto :goto_6

    :cond_9
    const/4 v0, 0x1

    :goto_6
    const/4 v5, 0x4

    const-string v6, "Android.SelectFileDialogScope"

    .line 70
    invoke-static {v6, v0, v5}, LfV;->a(Ljava/lang/String;II)V

    .line 71
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0, v5}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 72
    iget-boolean v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->D:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_a

    if-eqz v0, :cond_a

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    move-object v0, v6

    .line 74
    :goto_7
    iget-object v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    const-string v7, "android.permission.RECORD_AUDIO"

    .line 75
    invoke-virtual {v5, v7}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    .line 76
    iget-boolean v7, p0, Lorg/chromium/ui/base/SelectFileDialog;->E:Z

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    .line 77
    new-instance v6, Landroid/content/Intent;

    const-string v5, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    :cond_b
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->a()Z

    move-result v5

    const-string v7, "audio/*"

    const-string v8, "video/*"

    const v9, 0x7f1303a6

    if-eqz v5, :cond_c

    if-eqz p1, :cond_c

    .line 79
    iget-object v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, p1, p0, v10}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_10

    return-void

    .line 80
    :cond_c
    iget-boolean v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->y:Z

    if-eqz v5, :cond_d

    invoke-virtual {p0, v8}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_e

    if-eqz v0, :cond_e

    .line 81
    iget-object v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v0, p0, v10}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_10

    return-void

    .line 82
    :cond_e
    iget-boolean v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->y:Z

    if-eqz v5, :cond_f

    invoke-virtual {p0, v7}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_10

    if-eqz v6, :cond_10

    .line 83
    iget-object v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v6, p0, v10}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    move-result v5

    if-eqz v5, :cond_10

    return-void

    .line 84
    :cond_10
    iget-object v5, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {v5}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    .line 85
    iget-object v10, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-static {v10}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 86
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->f()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-boolean v11, p0, Lorg/chromium/ui/base/SelectFileDialog;->z:Z

    .line 87
    sget-object v12, Lwc1;->c:Lvc1;

    if-nez v12, :cond_11

    const/4 v5, 0x0

    goto :goto_a

    .line 88
    :cond_11
    check-cast v12, Lvh0;

    .line 89
    new-instance v13, LIx0;

    invoke-direct {v13, v5, p0, v11, v10}, LIx0;-><init>(Landroid/content/Context;Lsc1;ZLjava/util/List;)V

    iput-object v13, v12, Lvh0;->a:LIx0;

    .line 90
    invoke-virtual {v13}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v10, 0x7f140121

    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 91
    iget-object v5, v12, Lvh0;->a:LIx0;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    const/4 v5, 0x1

    :goto_a
    if-eqz v5, :cond_12

    return-void

    .line 92
    :cond_12
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.GET_CONTENT"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    iget-boolean v10, p0, Lorg/chromium/ui/base/SelectFileDialog;->z:Z

    if-eqz v10, :cond_13

    const-string v10, "android.intent.extra.ALLOW_MULTIPLE"

    .line 94
    invoke-virtual {v5, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->d()Z

    move-result v10

    if-nez v10, :cond_1a

    const-string v10, "image/*"

    .line 97
    invoke-virtual {p0, v10, v4}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz p1, :cond_14

    .line 98
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_14
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 100
    :cond_15
    invoke-virtual {p0, v8, v3}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v0, :cond_16

    .line 101
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_16
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    :cond_17
    const-string v3, "audio/"

    .line 103
    invoke-virtual {p0, v7, v3}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v6, :cond_18

    .line 104
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_18
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_19
    :goto_b
    const-string v3, "android.intent.category.OPENABLE"

    .line 106
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "*/*"

    .line 108
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1b

    .line 109
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    if-eqz v0, :cond_1c

    .line 110
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    if-eqz v6, :cond_1d

    .line 111
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1d
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CHOOSER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    new-array v0, v1, [Landroid/content/Intent;

    .line 114
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    const-string v1, "android.intent.extra.INITIAL_INTENTS"

    .line 115
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1e
    const-string v0, "android.intent.extra.INTENT"

    .line 116
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lorg/chromium/ui/base/WindowAndroid;->showIntent(Landroid/content/Intent;LWc1;Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 118
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    :cond_1f
    return-void
.end method

.method public a(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/Intent;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    return-void

    :cond_0
    const-string p2, "file"

    if-eqz p3, :cond_7

    .line 32
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 34
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 35
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    if-nez p2, :cond_2

    .line 37
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    return-void

    .line 38
    :cond_2
    new-array p3, p2, [Landroid/net/Uri;

    :goto_0
    if-ge v2, p2, :cond_3

    .line 39
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v0

    aput-object v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_3
    new-instance p1, LQc1;

    .line 41
    sget-object p2, LzT;->a:Landroid/content/Context;

    .line 42
    invoke-direct {p1, p0, p2, v1, p3}, LQc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    .line 43
    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 44
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 45
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 47
    invoke-static {}, Lorg/chromium/base/PathUtils;->getDataDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 48
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->w:J

    const-string p1, ""

    invoke-virtual {p0, v0, v1, p2, p1}, Lorg/chromium/ui/base/SelectFileDialog;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 49
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 50
    new-instance p1, LQc1;

    .line 51
    sget-object p2, LzT;->a:Landroid/content/Context;

    new-array v0, v1, [Landroid/net/Uri;

    .line 52
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    aput-object p3, v0, v2

    invoke-direct {p1, p0, p2, v2, v0}, LQc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Landroid/content/Context;Z[Landroid/net/Uri;)V

    .line 53
    sget-object p2, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, p2}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void

    .line 54
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    const p2, 0x7f130459

    .line 55
    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->showError(I)V

    return-void

    .line 56
    :cond_7
    :goto_1
    iget-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 57
    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 58
    :goto_2
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->w:J

    iget-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/chromium/ui/base/SelectFileDialog;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lorg/chromium/ui/base/SelectFileDialog;->A:Landroid/net/Uri;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p2, v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lorg/chromium/ui/base/WindowAndroid;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->y:Z

    if-eqz v0, :cond_0

    const-string v0, "image/*"

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, p2}, Lorg/chromium/ui/base/SelectFileDialog;->b(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final b(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final b()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lorg/chromium/ui/base/WindowAndroid;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lorg/chromium/ui/base/SelectFileDialog;->C:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, LPc1;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {v0, p0, v1, v2, p0}, LPc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Ljava/lang/Boolean;Lorg/chromium/ui/base/WindowAndroid;LWc1;)V

    sget-object v1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {v0, v1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/SelectFileDialog;->a(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    const-string v2, "*/*"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final e()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->w:J

    .line 2
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    const-string v3, "Android.SelectFileDialogImgCount"

    .line 3
    invoke-static {v3, v2}, LfV;->b(Ljava/lang/String;I)V

    .line 4
    :cond_0
    invoke-static {v0, v1, p0}, LJ/N;->MGVJOCWv(JLjava/lang/Object;)V

    return-void
.end method

.method public final f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->x:Ljava/util/List;

    invoke-static {v0}, Lorg/chromium/ui/base/SelectFileDialog;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/chromium/ui/base/SelectFileDialog;->a()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lwc1;->c:Lvc1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    .line 5
    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
