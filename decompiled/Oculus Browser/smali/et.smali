.class public final Let;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LZr;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field public c:Landroid/net/Uri;

.field public d:Lgt;

.field public e:Landroid/graphics/Bitmap;

.field public f:Z

.field public g:Lft;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Let;->a:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Let;->b:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 5
    invoke-virtual {p0}, Let;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 19
    invoke-virtual {p0}, Let;->b()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Let;->g:Lft;

    return-void
.end method

.method public final a(Landroid/net/Uri;)Z
    .locals 14

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Let;->b()V

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Let;->c:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Let;->b()V

    .line 4
    iput-object p1, p0, Let;->c:Landroid/net/Uri;

    .line 5
    iget-object p1, p0, Let;->b:Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 6
    iget v5, p1, Lcom/google/android/gms/cast/framework/media/ImageHints;->x:I

    if-eqz v5, :cond_2

    .line 7
    iget v6, p1, Lcom/google/android/gms/cast/framework/media/ImageHints;->y:I

    if-nez v6, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Let;->a:Landroid/content/Context;

    .line 9
    new-instance p1, Lgt;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p0

    .line 10
    invoke-direct/range {v3 .. v8}, Lgt;-><init>(Landroid/content/Context;IIZLZr;)V

    .line 11
    iput-object p1, p0, Let;->d:Lgt;

    goto :goto_1

    .line 12
    :cond_2
    :goto_0
    iget-object v9, p0, Let;->a:Landroid/content/Context;

    .line 13
    new-instance p1, Lgt;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    move-object v13, p0

    .line 14
    invoke-direct/range {v8 .. v13}, Lgt;-><init>(Landroid/content/Context;IIZLZr;)V

    .line 15
    iput-object p1, p0, Let;->d:Lgt;

    .line 16
    :goto_1
    iget-object p1, p0, Let;->d:Lgt;

    iget-object v1, p0, Let;->c:Landroid/net/Uri;

    .line 17
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/net/Uri;

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    .line 18
    :cond_3
    iget-boolean p1, p0, Let;->f:Z

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Let;->d:Lgt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 3
    iput-object v1, p0, Let;->d:Lgt;

    .line 4
    :cond_0
    iput-object v1, p0, Let;->c:Landroid/net/Uri;

    .line 5
    iput-object v1, p0, Let;->e:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Let;->f:Z

    return-void
.end method
