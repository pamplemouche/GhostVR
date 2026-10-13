.class public abstract LzI0;
.super LTH0;
.source "PG"


# instance fields
.field public final a:LpI0;

.field public b:LxI0;


# direct methods
.method public constructor <init>(LpI0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LTH0;-><init>()V

    .line 2
    iput-object p1, p0, LzI0;->a:LpI0;

    .line 3
    check-cast p1, LrI0;

    .line 4
    iget-object p1, p1, LrI0;->a:Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, LyI0;

    invoke-direct {p1, p0}, LyI0;-><init>(LzI0;)V

    iput-object p1, p0, LzI0;->b:LxI0;

    .line 7
    iget-object v0, p0, LzI0;->a:LpI0;

    check-cast v0, LrI0;

    invoke-virtual {v0, p1}, LrI0;->a(LxI0;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, LzI0;->f()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, LzI0;->b:LxI0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, LzI0;->a:LpI0;

    check-cast v1, LrI0;

    .line 3
    iget-object v1, v1, LrI0;->d:LWT;

    invoke-virtual {v1, v0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LzI0;->b:LxI0;

    .line 5
    :cond_0
    iget-object v0, p0, LzI0;->a:LpI0;

    check-cast v0, LrI0;

    .line 6
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 9
    invoke-interface {v2, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->a(LlI0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, LzI0;->a:LpI0;

    check-cast v0, LrI0;

    .line 2
    iget-object v0, v0, LrI0;->a:Ljava/util/List;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 5
    invoke-interface {v2, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, LzI0;->b()V

    return-void
.end method
