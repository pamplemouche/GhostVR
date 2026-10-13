.class final Lcom/facebook/rti/push/service/FbnsService$1;
.super Ljava/util/ArrayList;
.source "FbnsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/push/service/FbnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    new-instance v0, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;

    const-string v1, "/fbns_msg"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/mqtt/protocol/messages/SubscribeTopic;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/rti/push/service/FbnsService$1;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method
