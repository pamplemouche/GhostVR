.class public final synthetic LNc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final a:Lorg/chromium/ui/base/SelectFileDialog;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/SelectFileDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LNc1;->a:Lorg/chromium/ui/base/SelectFileDialog;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 2

    iget-object p1, p0, LNc1;->a:Lorg/chromium/ui/base/SelectFileDialog;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    aget p2, p2, v0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/ui/base/SelectFileDialog;->e()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, LPc1;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p1, Lorg/chromium/ui/base/SelectFileDialog;->B:Lorg/chromium/ui/base/WindowAndroid;

    invoke-direct {p2, p1, v0, v1, p1}, LPc1;-><init>(Lorg/chromium/ui/base/SelectFileDialog;Ljava/lang/Boolean;Lorg/chromium/ui/base/WindowAndroid;LWc1;)V

    sget-object p1, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 4
    invoke-virtual {p2, p1}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1
.end method
