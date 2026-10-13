.class public LBb0;
.super LkW;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final synthetic b:LCb0;


# direct methods
.method public constructor <init>(LCb0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LBb0;->b:LCb0;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LBb0;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LBb0;->b:LCb0;

    check-cast v0, Ldc0;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 5
    :cond_1
    throw v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, LBb0;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
