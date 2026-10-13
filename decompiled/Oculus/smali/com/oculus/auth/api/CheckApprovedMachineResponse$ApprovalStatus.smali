.class Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;
.super Ljava/lang/Object;
.source "CheckApprovedMachineResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/auth/api/CheckApprovedMachineResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApprovalStatus"
.end annotation


# instance fields
.field private approved:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;->approved:Ljava/lang/Boolean;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/auth/api/CheckApprovedMachineResponse$ApprovalStatus;->approved:Ljava/lang/Boolean;

    return-object v0
.end method
