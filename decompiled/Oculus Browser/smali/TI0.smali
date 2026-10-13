.class public LTI0;
.super LkW;
.source "PG"


# instance fields
.field public a:Lorg/chromium/chrome/browser/tab/Tab;

.field public b:I

.field public c:LtH0;

.field public d:Z

.field public e:Z

.field public final synthetic f:LYI0;


# direct methods
.method public constructor <init>(LYI0;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTI0;->f:LYI0;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LTI0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    iput p1, p0, LTI0;->b:I

    .line 4
    iget-boolean p1, p2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 5
    iput-boolean p1, p0, LTI0;->d:Z

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, LTI0;->f:LYI0;

    iget v1, p0, LTI0;->b:I

    iget-boolean v2, p0, LTI0;->d:Z

    iget-object v3, p0, LTI0;->c:LtH0;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, LZI0;->a()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v1, v2}, LtH0;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object v6

    .line 3
    invoke-static {v6, v3, v2}, LtH0;->a(Ljava/io/File;LtH0;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    const-string v3, "TabPersister"

    const-string v6, "Out of memory error while attempting to save tab state.  Erasing."

    .line 4
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v0, v1, v2}, LZI0;->a(IZ)V

    .line 6
    :goto_0
    iput-boolean v5, p0, LTI0;->e:Z

    return-object v4

    .line 7
    :cond_1
    throw v4
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, LTI0;->f:LYI0;

    .line 3
    iget-boolean p1, p1, LYI0;->k:Z

    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, LTI0;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LTI0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->p:Z

    .line 7
    :cond_1
    iget-object p1, p0, LTI0;->f:LYI0;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p1, LYI0;->i:LTI0;

    .line 9
    invoke-virtual {p1}, LYI0;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreExecute()V
    .locals 1

    .line 1
    iget-object v0, p0, LTI0;->f:LYI0;

    .line 2
    iget-boolean v0, v0, LYI0;->k:Z

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, LTI0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-static {v0}, LtH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LtH0;

    move-result-object v0

    iput-object v0, p0, LTI0;->c:LtH0;

    :cond_1
    :goto_0
    return-void
.end method
