.class Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;
.super Ljava/lang/Object;
.source "HappyEyeballsSocketFactory.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->getSocket()Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

.field final synthetic val$nonPreferredSocket:Ljava/net/Socket;

.field final synthetic val$preferredSocket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;Ljava/net/Socket;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->this$0:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->val$nonPreferredSocket:Ljava/net/Socket;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->val$preferredSocket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->this$0:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->val$nonPreferredSocket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->this$0:Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;

    invoke-static {v2}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->access$000(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory$1;->val$preferredSocket:Ljava/net/Socket;

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;->access$100(Lcom/facebook/rti/mqtt/protocol/HappyEyeballsSocketFactory;Ljava/net/Socket;Ljava/net/InetAddress;Ljava/net/Socket;)V

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method
