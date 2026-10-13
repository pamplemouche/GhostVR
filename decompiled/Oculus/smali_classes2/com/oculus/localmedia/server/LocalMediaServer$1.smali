.class Lcom/oculus/localmedia/server/LocalMediaServer$1;
.super Ljava/lang/Object;
.source "LocalMediaServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/localmedia/server/LocalMediaServer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/localmedia/server/LocalMediaServer;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/oculus/localmedia/server/LocalMediaServer;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/oculus/localmedia/server/LocalMediaServer$1;->this$0:Lcom/oculus/localmedia/server/LocalMediaServer;

    iput-object p2, p0, Lcom/oculus/localmedia/server/LocalMediaServer$1;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer$1;->this$0:Lcom/oculus/localmedia/server/LocalMediaServer;

    iget-object v1, p0, Lcom/oculus/localmedia/server/LocalMediaServer$1;->val$socket:Ljava/net/Socket;

    invoke-static {v0, v1}, Lcom/oculus/localmedia/server/LocalMediaServer;->access$000(Lcom/oculus/localmedia/server/LocalMediaServer;Ljava/net/Socket;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer$1;->val$socket:Ljava/net/Socket;

    invoke-static {v0}, Lcom/oculus/localmedia/server/LocalMediaServer;->access$100(Ljava/net/Socket;)V

    .line 129
    return-void
.end method
