.class public Lcom/oculus/panellib/quickpromotion/QuickPromotionLogging;
.super Ljava/lang/Object;
.source "QuickPromotionLogging.java"


# static fields
.field private static final KEY_ACTION_NAME:Ljava/lang/String; = "action_name"

.field private static final KEY_PROMOTION_ID:Ljava/lang/String; = "promotion_id"

.field private static final KEY_SURFACE_ID:Ljava/lang/String; = "surface_id"

.field private static final KEY_TRIGGER:Ljava/lang/String; = "trigger"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logOverallFetchFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "error"    # Ljava/lang/String;
    .param p1, "errorDetails"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_overall_fetch_failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "error"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "error_details"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 69
    return-void
.end method

.method public static logOverallFetchStart()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_overall_fetch_started"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 59
    return-void
.end method

.method public static logOverallFetchSuccess()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_overall_fetch_completed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 75
    return-void
.end method

.method public static logPromotionAction(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "promotionID"    # Ljava/lang/String;
    .param p2, "surfaceID"    # I
    .param p3, "trigger"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_action"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v1, "action_name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "promotion_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "surface_id"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 53
    return-void
.end method

.method public static logPromotionExposure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "promotionID"    # Ljava/lang/String;
    .param p1, "surfaceID"    # I
    .param p2, "trigger"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_exposure"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "promotion_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "surface_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 27
    return-void
.end method

.method public static logPromotionFetchFailure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "surfaceID"    # I
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_fetch_failed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v1, "surface_id"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "error"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "error_details"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 99
    return-void
.end method

.method public static logPromotionFetchStart(ILjava/lang/String;)V
    .locals 3
    .param p0, "surfaceID"    # I
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_fetch_started"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "surface_id"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 85
    return-void
.end method

.method public static logPromotionFetchSuccess(ILjava/lang/String;)V
    .locals 3
    .param p0, "surfaceID"    # I
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_fetch_completed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "surface_id"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 109
    return-void
.end method

.method public static logPromotionImpression(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "promotionID"    # Ljava/lang/String;
    .param p1, "surfaceID"    # I
    .param p2, "trigger"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "status"

    const-string v2, "qp_impression"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "promotion_id"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "surface_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "oculus_config"

    invoke-static {v1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 39
    return-void
.end method
