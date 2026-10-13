.class public abstract LgI0;
.super LTH0;
.source "PG"

# interfaces
.implements LdI0;


# static fields
.field public static final d:Ljava/util/List;


# instance fields
.field public a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

.field public b:LWT;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LgI0;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, LTH0;-><init>()V

    .line 2
    new-instance v0, LWT;

    invoke-direct {v0}, LWT;-><init>()V

    iput-object v0, p0, LgI0;->b:LWT;

    .line 3
    iput-object p1, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 4
    invoke-interface {p1, p0}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->b(LlI0;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public allTabsClosureCommitted()V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1}, LlI0;->allTabsClosureCommitted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract b()V
.end method

.method public abstract c(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract d(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LgI0;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 3
    invoke-interface {v1, p1, p2}, LlI0;->didAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didCloseTab(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1, p1, p2}, LlI0;->didCloseTab(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1, p1, p2, p3}, LlI0;->didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LgI0;->e(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    invoke-virtual {p0}, LgI0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 4
    invoke-interface {v1, p1, p2, p3}, LlI0;->didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, LgI0;->a:Lorg/chromium/chrome/browser/tabmodel/TabModel;

    .line 2
    invoke-static {v0, p1}, LFI0;->a(LdI0;I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, LgI0;->d:Ljava/util/List;

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract e(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract f()V
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public multipleTabsPendingClosure(Ljava/util/List;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1, p1, p2}, LlI0;->multipleTabsPendingClosure(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreCompleted()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, LgI0;->c:Z

    .line 2
    invoke-interface {p0}, LdI0;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LgI0;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 4
    invoke-interface {v1}, LlI0;->restoreCompleted()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1, p1}, LlI0;->tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LgI0;->d(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    invoke-virtual {p0}, LgI0;->b()V

    .line 3
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 4
    invoke-interface {v1, p1}, LlI0;->tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1, p1}, LlI0;->tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LgI0;->c(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 3
    invoke-interface {v1, p1}, LlI0;->tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public willAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 2

    .line 1
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 2
    invoke-interface {v1, p1, p2}, LlI0;->willAddTab(Lorg/chromium/chrome/browser/tab/Tab;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LgI0;->a(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object v0, p0, LgI0;->b:LWT;

    invoke-virtual {v0}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LlI0;

    .line 3
    invoke-interface {v1, p1, p2}, LlI0;->willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
