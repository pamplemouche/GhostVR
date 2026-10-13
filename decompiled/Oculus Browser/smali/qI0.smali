.class public LqI0;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic a:LrI0;


# direct methods
.method public constructor <init>(LrI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LqI0;->a:LrI0;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .line 1
    iget-object p2, p0, LqI0;->a:LrI0;

    invoke-virtual {p2}, LrI0;->g()V

    .line 2
    iget-object p2, p0, LqI0;->a:LrI0;

    .line 3
    iget-object p2, p2, LrI0;->d:LWT;

    invoke-virtual {p2}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LxI0;

    .line 4
    invoke-interface {v0, p1}, LxI0;->onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    iget-object p1, p0, LqI0;->a:LrI0;

    invoke-virtual {p1}, LrI0;->g()V

    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    iget-object p1, p0, LqI0;->a:LrI0;

    invoke-virtual {p1}, LrI0;->g()V

    return-void
.end method
