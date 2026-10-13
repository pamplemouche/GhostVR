.class public Lcom/oculus/auth/api/CheckApprovedMachineResponse;
.super Ljava/lang/Object;
.source "CheckApprovedMachineResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;
    }
.end annotation


# instance fields
.field approvalStatuses:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/auth/api/CheckApprovedMachineResponse;->approvalStatuses:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public getResultBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string v1, "machine_approved"

    invoke-virtual {p0}, Lcom/oculus/auth/api/CheckApprovedMachineResponse;->isApproved()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    return-object v0
.end method

.method public isApproved()Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/auth/api/CheckApprovedMachineResponse;->approvalStatuses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;

    .line 30
    invoke-static {v0}, Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;->access$000(Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
