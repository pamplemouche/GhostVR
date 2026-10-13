.class public final synthetic LfF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LhF0;

.field public final b:Z


# direct methods
.method public constructor <init>(LhF0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfF0;->a:LhF0;

    iput-boolean p2, p0, LfF0;->b:Z

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LfF0;->a:LhF0;

    iget-boolean v1, p0, LfF0;->b:Z

    check-cast p1, Ljava/lang/Void;

    .line 1
    iget-object p1, v0, LhF0;->b:LjF0;

    .line 2
    iget-object v2, p1, LjF0;->A0:Ljava/lang/String;

    .line 3
    iget-boolean v3, p1, LjF0;->B0:Z

    .line 4
    new-instance v3, LgF0;

    invoke-direct {v3, v0}, LgF0;-><init>(LhF0;)V

    check-cast p1, Lorg/chromium/chrome/browser/signin/SigninFragment;

    const/4 v0, 0x0

    .line 5
    invoke-static {}, LHE0;->b()Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v4

    .line 6
    invoke-virtual {p1}, Lz2;->l()LD2;

    new-instance v5, LQE0;

    invoke-direct {v5, p1, v1, v3}, LQE0;-><init>(Lorg/chromium/chrome/browser/signin/SigninFragment;ZLjava/lang/Runnable;)V

    if-eqz v4, :cond_1

    .line 7
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacade;->get()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object p1

    new-instance v1, LrF0;

    invoke-direct {v1, v4, v5}, LrF0;-><init>(Lorg/chromium/chrome/browser/signin/SigninManager;LvF0;)V

    if-eqz p1, :cond_0

    .line 8
    new-instance v0, LtU0;

    invoke-direct {v0, p1, v1, v2}, LtU0;-><init>(Lorg/chromium/components/signin/AccountManagerFacade;Lorg/chromium/base/Callback;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/chromium/components/signin/AccountManagerFacade;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw v0

    .line 9
    :cond_1
    throw v0
.end method
