.class public LZH0;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic a:LaI0;


# direct methods
.method public constructor <init>(LaI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZH0;->a:LaI0;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public didCloseTab(IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, LZH0;->a:LaI0;

    invoke-virtual {p1}, LrI0;->a()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, LdI0;->getTabAt(I)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, LZH0;->a:LaI0;

    invoke-virtual {p1}, LrI0;->g()V

    :cond_0
    return-void
.end method
