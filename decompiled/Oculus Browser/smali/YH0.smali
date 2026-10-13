.class public LYH0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModel;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:LWT;

.field public c:Lorg/chromium/chrome/browser/tab/Tab;

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LYH0;->b:LWT;

    .line 3
    iput-object p1, p0, LYH0;->a:Landroid/app/Activity;

    .line 4
    iput-boolean p2, p0, LYH0;->d:Z

    return-void
.end method


# virtual methods
.method public a(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(II)V
    .locals 0

    return-void
.end method

.method public a(LlI0;)V
    .locals 1

    .line 27
    iget-object v0, p0, LYH0;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 4

    .line 10
    iget-object p2, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-ne p2, p1, :cond_0

    goto/16 :goto_3

    .line 11
    :cond_0
    iput-object p1, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, LYH0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 13
    invoke-interface {v1, p2, p3}, LlI0;->willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, LYH0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 15
    invoke-interface {v1, p1, p3}, LlI0;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V

    const/4 v3, -0x1

    .line 16
    invoke-interface {v1, p1, v2, v3}, LlI0;->didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object p1, p0, LYH0;->a:Landroid/app/Activity;

    if-eqz p1, :cond_4

    .line 18
    invoke-static {p1}, Lorg/chromium/base/ApplicationStatus;->a(Landroid/app/Activity;)I

    move-result p1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    if-ne p1, v2, :cond_4

    .line 19
    :cond_3
    iget-object p1, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1, v2}, Lorg/chromium/chrome/browser/tab/Tab;->d(I)V

    :cond_4
    if-eqz p2, :cond_6

    .line 20
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->r()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 21
    iget-object p1, p0, LYH0;->b:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LlI0;

    .line 22
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v0

    .line 23
    iget-boolean v1, p2, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 24
    invoke-interface {p3, v0, v1}, LlI0;->didCloseTab(IZ)V

    goto :goto_2

    .line 25
    :cond_5
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 26
    iget-object p1, p0, LYH0;->b:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LlI0;

    invoke-interface {p3, p2}, LlI0;->tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_4

    :cond_7
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 7
    iget-object p1, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, p1}, LYH0;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 8
    iget-object p1, p0, LYH0;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LYH0;->d:Z

    return v0
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0, v0}, LYH0;->a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z

    move-result p1

    return p1
.end method

.method public a(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
    .locals 0

    .line 3
    iget-object p2, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p2

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p0, p1}, LYH0;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 5
    iget-object p1, p0, LYH0;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lorg/chromium/chrome/browser/tab/Tab;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(II)V
    .locals 0

    return-void
.end method

.method public b(LlI0;)V
    .locals 1

    .line 2
    iget-object v0, p0, LYH0;->b:LWT;

    invoke-virtual {v0, p1}, LWT;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lorg/chromium/chrome/browser/profiles/Profile;
    .locals 1

    .line 1
    iget-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 2
    iget-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    .line 5
    :cond_0
    iget-object v0, p0, LYH0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    invoke-interface {v1, p1}, LlI0;->tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public e()LdI0;
    .locals 0

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public index()I
    .locals 1

    .line 1
    iget-object v0, p0, LYH0;->c:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isCurrentModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
