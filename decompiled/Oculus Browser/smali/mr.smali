.class public final Lmr;
.super Landroid/os/Binder;
.source "PG"


# instance fields
.field public final a:Lir;


# direct methods
.method public constructor <init>(Lir;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lmr;->a:Lir;

    return-void
.end method


# virtual methods
.method public final a(Lkr;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const-string v1, "EnhancedIntentService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v0, p0, Lmr;->a:Lir;

    iget-object v0, v0, Lir;->w:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnr;

    invoke-direct {v1, p0, p1}, Lnr;-><init>(Lmr;Lkr;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
