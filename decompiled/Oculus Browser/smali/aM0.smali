.class public LaM0;
.super LfY;
.source "PG"


# instance fields
.field public final synthetic z:LcM0;


# direct methods
.method public constructor <init>(LcM0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LaM0;->z:LcM0;

    invoke-direct {p0}, LfY;-><init>()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 3

    .line 1
    iget-object v0, p0, LaM0;->z:LcM0;

    .line 2
    iget-object v0, v0, LcM0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    :cond_0
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, LaM0;->z:LcM0;

    .line 5
    iget-boolean v2, v1, LcM0;->L:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1, p1}, LcM0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 7
    :goto_0
    iget-object p1, p0, LaM0;->z:LcM0;

    .line 8
    iput-boolean v0, p1, LcM0;->L:Z

    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LaM0;->z:LcM0;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, LcM0;->G:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, LcM0;->L:Z

    return-void
.end method

.method public onDidChangeThemeColor(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p2, p0, LaM0;->z:LcM0;

    .line 2
    invoke-virtual {p2, p1}, LcM0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p2, p0, LaM0;->z:LcM0;

    .line 2
    invoke-virtual {p2, p1}, LcM0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method
