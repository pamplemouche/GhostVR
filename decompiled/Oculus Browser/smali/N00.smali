.class public LN00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LK00;


# instance fields
.field public a:Landroid/view/MenuItem;

.field public final b:Landroid/content/Context;

.field public final c:Z

.field public final d:LgY;

.field public final e:Lnl0;

.field public final f:LpI0;

.field public final g:LkK0;

.field public final h:Landroid/view/View;

.field public final i:LQT;

.field public final j:LQT;

.field public k:Lorg/chromium/base/Callback;

.field public l:Lorg/chromium/base/Callback;

.field public m:Lorg/chromium/chrome/browser/bookmarks/BookmarkBridge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnl0;LpI0;LkK0;Landroid/view/View;LQT;LQT;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LN00;->b:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lorg/chromium/ui/base/DeviceFormFactor;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, LN00;->c:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, LN00;->d:LgY;

    .line 5
    iput-object p2, p0, LN00;->e:Lnl0;

    .line 6
    iput-object p3, p0, LN00;->f:LpI0;

    .line 7
    iput-object p4, p0, LN00;->g:LkK0;

    .line 8
    iput-object p5, p0, LN00;->h:Landroid/view/View;

    .line 9
    iput-object p6, p0, LN00;->i:LQT;

    if-eqz p6, :cond_0

    .line 10
    new-instance p1, LL00;

    invoke-direct {p1, p0}, LL00;-><init>(LN00;)V

    iput-object p1, p0, LN00;->k:Lorg/chromium/base/Callback;

    .line 11
    iget-object p2, p0, LN00;->i:LQT;

    check-cast p2, LST;

    invoke-virtual {p2, p1}, LST;->a(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    .line 12
    :cond_0
    iput-object p7, p0, LN00;->j:LQT;

    .line 13
    new-instance p1, LM00;

    invoke-direct {p1, p0}, LM00;-><init>(LN00;)V

    iput-object p1, p0, LN00;->l:Lorg/chromium/base/Callback;

    .line 14
    iget-object p2, p0, LN00;->j:LQT;

    check-cast p2, LST;

    invoke-virtual {p2, p1}, LST;->a(Lorg/chromium/base/Callback;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, LN00;->a:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, LN00;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    iget-object v1, p0, LN00;->a:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const v2, 0x7f0c0025

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const v2, 0x7f0c0024

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 6
    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 7
    iget-object v0, p0, LN00;->a:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    const p1, 0x7f1300d4

    goto :goto_1

    :cond_1
    const p1, 0x7f1300d3

    :goto_1
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method
