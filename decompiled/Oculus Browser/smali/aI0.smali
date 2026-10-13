.class public LaI0;
.super LrI0;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/app/Activity;LcI0;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, LrI0;-><init>(LcI0;Z)V

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    new-instance v0, LYH0;

    invoke-direct {v0, p1, p3}, LYH0;-><init>(Landroid/app/Activity;Z)V

    const/4 p1, 0x0

    aput-object v0, p2, p1

    invoke-virtual {p0, p2}, LrI0;->a([Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 3
    new-instance p1, LZH0;

    invoke-direct {p1, p0}, LZH0;-><init>(LaI0;)V

    .line 4
    iget-object p2, p0, LrI0;->a:Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 6
    invoke-interface {p3, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    goto :goto_0

    :cond_0
    return-void
.end method
