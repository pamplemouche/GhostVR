.class Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;
.super Ljava/lang/Object;
.source "FbnsService.java"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/push/service/FbnsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PushHistoryHelper"
.end annotation


# instance fields
.field mHistory:Ljava/util/LinkedList;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->mHistory:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;Lcom/facebook/rti/push/service/FbnsNotificationMessage;)Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->dedupIfPresent(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)Z

    move-result v0

    return v0
.end method

.method private dedupIfPresent(Lcom/facebook/rti/push/service/FbnsNotificationMessage;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mNotifId:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/rti/push/service/FbnsNotificationMessage;->mPackageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/facebook/rti/push/service/FbnsService$PushHistoryHelper;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0
.end method
