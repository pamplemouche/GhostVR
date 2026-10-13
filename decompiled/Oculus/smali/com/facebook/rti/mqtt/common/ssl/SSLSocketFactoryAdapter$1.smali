.class Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;
.super Ljava/lang/Object;
.source "SSLSocketFactoryAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->handshakeAndVerifySocket(Ljava/net/Socket;Ljava/lang/String;IJ)Ljava/net/Socket;
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
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;Ljava/net/Socket;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->this$0:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->val$socket:Ljava/net/Socket;

    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->val$host:Ljava/lang/String;

    iput p4, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->val$port:I

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
    .line 53
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->call()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->this$0:Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->val$socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->val$host:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter$1;->val$port:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/common/ssl/SSLSocketFactoryAdapter;->handshakeAndVerifySocket(Ljava/net/Socket;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
