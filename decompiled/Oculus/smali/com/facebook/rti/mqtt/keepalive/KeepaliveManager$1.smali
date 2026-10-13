.class final Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;
.super Ljava/util/ArrayList;
.source "KeepaliveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 61
    const-wide/32 v0, 0x2932e00

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 62
    const-wide/32 v0, 0x36ee80

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 63
    const-wide/32 v0, 0x1b7740

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 64
    const-wide/32 v0, 0xdbba0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method
