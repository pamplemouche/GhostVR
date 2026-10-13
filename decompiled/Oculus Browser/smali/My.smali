.class public final synthetic LMy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LSy;

.field public final x:LRy;

.field public final y:LJx;


# direct methods
.method public constructor <init>(LSy;LRy;LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LMy;->w:LSy;

    iput-object p2, p0, LMy;->x:LRy;

    iput-object p3, p0, LMy;->y:LJx;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, LMy;->w:LSy;

    iget-object v1, p0, LMy;->x:LRy;

    iget-object v2, p0, LMy;->y:LJx;

    .line 1
    iget-object v3, v0, LSy;->l:LRw;

    check-cast v3, Lzb0;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    const-string v4, "IPH_FeedCardMenu"

    .line 2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    const/16 v7, 0x1b

    if-eqz v5, :cond_0

    .line 3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4
    iget-object v4, v0, LSy;->f:LFx;

    new-instance v5, LQy;

    invoke-direct {v5, v0, v1, v3, v2}, LQy;-><init>(LSy;LRy;Ljava/lang/Boolean;LJx;)V

    invoke-virtual {v4, v7, v6, v5}, LFx;->a(IILjava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->e()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/profiles/Profile;->b()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    .line 6
    invoke-static {v3}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object v3

    .line 7
    invoke-interface {v3, v4}, LoT0;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 8
    iget-object v4, v0, LSy;->f:LFx;

    new-instance v5, LQy;

    invoke-direct {v5, v0, v1, v3, v2}, LQy;-><init>(LSy;LRy;Ljava/lang/Boolean;LJx;)V

    invoke-virtual {v4, v7, v6, v5}, LFx;->a(IILjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 9
    throw v0
.end method
