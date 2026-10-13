.class Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$2;
.super Ljava/lang/Object;
.source "VRLifecycleSessionManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->storeSessionInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 246
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    invoke-static {v0}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->access$200(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;

    .line 250
    iget-object v1, p0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$2;->this$0:Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;

    invoke-static {v1}, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;->access$200(Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;

    .line 251
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 254
    :goto_0
    return v0

    :cond_1
    iget-wide v2, v0, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;->mLastUsageTime:J

    iget-wide v0, v1, Lcom/oculus/horizon/vr_lifecycle/VRLifecycleSessionManager$AppUsageInfo;->mLastUsageTime:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_0
.end method
