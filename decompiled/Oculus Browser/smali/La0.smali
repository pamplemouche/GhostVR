.class public LLa0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LxF0;
.implements LkT;


# instance fields
.field public A:Z

.field public B:Z

.field public w:Lgw;

.field public x:Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;

.field public y:Lwb0;

.field public z:I


# direct methods
.method public constructor <init>(Lgw;Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;Lwb0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LLa0;->w:Lgw;

    .line 3
    iput-object p2, p0, LLa0;->x:Lorg/chromium/chrome/browser/feed/FeedLifecycleBridge;

    .line 4
    iput-object p3, p0, LLa0;->y:Lwb0;

    .line 5
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, LLa0;->z:I

    if-lez p1, :cond_1

    .line 7
    invoke-virtual {p0}, LLa0;->a()V

    .line 8
    :cond_1
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->g:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninManager;->f:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, LLa0;->a(I)V

    .line 2
    iget-object v1, p0, LLa0;->w:Lgw;

    check-cast v1, Luy;

    .line 3
    iget-object v2, v1, Luy;->b:LYw;

    invoke-virtual {v2}, LYw;->a()V

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "FeedAppLifecycleLstnr"

    const-string v4, "onEnterForeground called"

    .line 4
    invoke-static {v3, v4, v2}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "foreground"

    .line 5
    invoke-virtual {v1, v2}, Luy;->e(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, LLa0;->B:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, LLa0;->B:Z

    const-string v1, "InterestFeedContentSuggestions"

    const-string v2, "init_feed_after_startup"

    .line 8
    invoke-static {v1, v2, v0}, LJ/N;->MGYscfpZ(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, LdZ;->a:LeZ;

    .line 10
    new-instance v1, LKa0;

    invoke-direct {v1, p0}, LKa0;-><init>(LLa0;)V

    invoke-virtual {v0, v1}, LeZ;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    const-string v0, "ContentSuggestions.Feed.AppLifecycle.Events"

    const/16 v1, 0x8

    .line 22
    invoke-static {v0, p1, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p0, v0}, LLa0;->a(I)V

    .line 12
    iget-object v0, p0, LLa0;->y:Lwb0;

    invoke-interface {v0, p1}, Lwb0;->a(Z)Z

    move-result p1

    const-string v0, "FeedAppLifecycleLstnr"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, LLa0;->w:Lgw;

    check-cast p1, Luy;

    .line 14
    iget-object v2, p1, Luy;->b:LYw;

    invoke-virtual {v2}, LYw;->a()V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onClearAllWithRefresh called"

    .line 15
    invoke-static {v0, v2, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "clearAllWithRefresh"

    .line 16
    invoke-virtual {p1, v0}, Luy;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, LLa0;->w:Lgw;

    check-cast p1, Luy;

    if-eqz p1, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onClearAll called"

    .line 18
    invoke-static {v0, v2, v1}, Lhy;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v0, p1, Luy;->b:LYw;

    invoke-virtual {v0}, LYw;->a()V

    const-string v0, "clearAll"

    .line 20
    invoke-virtual {p1, v0}, Luy;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 21
    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, LLa0;->a(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LLa0;->a(Z)V

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, LLa0;->a(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, LLa0;->a(Z)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method
