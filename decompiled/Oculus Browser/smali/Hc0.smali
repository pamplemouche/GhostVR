.class public final synthetic LHc0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/signin/SigninManager;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SigninManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHc0;->a:Lorg/chromium/chrome/browser/signin/SigninManager;

    iput-object p2, p0, LHc0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LHc0;->a:Lorg/chromium/chrome/browser/signin/SigninManager;

    iget-object v1, p0, LHc0;->b:Ljava/lang/Runnable;

    check-cast p1, Ljava/util/List;

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    new-instance v2, LJc0;

    invoke-direct {v2, v1}, LJc0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v2}, Lorg/chromium/chrome/browser/signin/SigninManager;->a(Landroid/accounts/Account;LvF0;)V

    :goto_0
    return-void
.end method
