.class public abstract Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ProxyConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final mFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;


# direct methods
.method public constructor <init>(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 147
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public abstract invokeServiceMethod(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    invoke-static {v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->access$000(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "%s service component mismatch. Expected: %s, was: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    .line 156
    invoke-static {v4}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->access$100(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    .line 157
    invoke-static {v4}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->access$000(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Landroid/content/ComponentName;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 153
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->mFuture:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 160
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    invoke-static {v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->access$200(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 176
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;->this$0:Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;

    invoke-static {v0}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;->access$400(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;

    invoke-direct {v1, p0, p2}, Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection$1;-><init>(Lcom/facebook/oxygen/sdk/serviceproxy/ServiceProxy$ProxyConnection;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
