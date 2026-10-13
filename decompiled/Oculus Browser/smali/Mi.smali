.class public LMi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:LUi;

.field public final synthetic x:LNi;


# direct methods
.method public constructor <init>(LNi;LUi;)V
    .locals 0

    .line 1
    iput-object p1, p0, LMi;->x:LNi;

    iput-object p2, p0, LMi;->w:LUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "TWAConnectionManager"

    .line 1
    :try_start_0
    iget-object v1, p0, LMi;->x:LNi;

    iget-object v1, v1, LNi;->a:LQi;

    iget-object v2, p0, LMi;->w:LUi;

    invoke-interface {v1, v2}, LQi;->a(LUi;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "Exception while trying to use TrustedWebActivityService."

    .line 2
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v2, "TransactionTooLargeException from TrustedWebActivityService, possibly due to large size of small icon."

    .line 3
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
