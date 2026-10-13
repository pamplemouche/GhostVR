.class public Lcom/oculus/horizon/loginapprovals/LoginApprovalsAnalytics;
.super Ljava/lang/Object;
.source "LoginApprovalsAnalytics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPayloadBundleWithErrorMessage(Lcom/oculus/logging/utils/EventMigrationHelper;Ljava/lang/String;)Lcom/oculus/logging/utils/FunnelData;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-interface {p0}, Lcom/oculus/logging/utils/EventMigrationHelper;->createFunnelData()Lcom/oculus/logging/utils/FunnelData;

    move-result-object v0

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    const-string v1, "extra_error"

    invoke-interface {v0, v1, p1}, Lcom/oculus/logging/utils/FunnelData;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/utils/FunnelData;

    .line 40
    :cond_0
    return-object v0
.end method
