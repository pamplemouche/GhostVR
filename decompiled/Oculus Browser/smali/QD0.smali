.class public LQD0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:[B

.field public final synthetic c:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[BLorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, LQD0;->a:Landroid/app/Activity;

    iput-object p2, p0, LQD0;->b:[B

    iput-object p3, p0, LQD0;->c:Lorg/chromium/base/Callback;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, LQD0;->a:Landroid/app/Activity;

    invoke-static {v2}, Lwc1;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "screenshot"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "share"

    const-string v2, "Share failed -- Unable to create share image directory."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v1, v2, v3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-static {v0}, LpU;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 5
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    .line 6
    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    iget-object v3, p0, LQD0;->b:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    invoke-static {v1}, Lorg/chromium/base/ContentUriUtils;->a(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 11
    :goto_1
    invoke-static {v0}, LpU;->a(Ljava/io/Closeable;)V

    throw v1

    :catch_0
    move-object v2, v0

    :catch_1
    :goto_2
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    :goto_3
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/net/Uri;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, LQD0;->c:Lorg/chromium/base/Callback;

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
