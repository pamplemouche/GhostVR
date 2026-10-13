.class Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;
.super Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;
.source "NetworkPeerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/network/NetworkPeerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/network/NetworkPeerManager;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/stetho/inspector/network/NetworkPeerManager$1;->this$0:Lcom/facebook/stetho/inspector/network/NetworkPeerManager;

    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method
