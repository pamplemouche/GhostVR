.class public Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;
.super Ljava/lang/Object;
.source "CheckTermsOfServiceResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;
    }
.end annotation


# instance fields
.field public viewer:Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;->viewer:Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;->challenge_tos:Ljava/lang/String;

    return-object v0
.end method

.method public hasNewTos()Z
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse;->viewer:Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/tos/CheckTermsOfServiceResponse$Viewer;->challenge_tos:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
