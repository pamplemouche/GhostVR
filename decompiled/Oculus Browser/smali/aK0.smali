.class public LaK0;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic a:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LaK0;->a:LkK0;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public didCloseTab(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, LaK0;->a:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->J:LWo0;

    .line 3
    invoke-interface {p1}, LWo0;->a()V

    .line 4
    iget-object p1, p0, LaK0;->a:LkK0;

    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .line 1
    iget-object p1, p0, LaK0;->a:LkK0;

    const/4 p2, -0x1

    .line 2
    iput p2, p1, LkK0;->f0:I

    .line 3
    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public multipleTabsPendingClosure(Ljava/util/List;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, LaK0;->a:LkK0;

    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LaK0;->a:LkK0;

    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LaK0;->a:LkK0;

    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LaK0;->a:LkK0;

    invoke-static {p1}, LkK0;->a(LkK0;)V

    const/4 p1, 0x0

    throw p1
.end method
