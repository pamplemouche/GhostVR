.class public Lcom/oculus/vrshell/config/CompanionServerPreferences;
.super Ljava/lang/Object;
.source "CompanionServerPreferences.java"


# instance fields
.field private mIsNuxComplete:Z

.field private mIsNuxCompleteValid:Z

.field private mIsNuxFlowValid:Z

.field private mIsVrReady:Z

.field private mIsVrReadyValid:Z

.field private mNuxFlow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReadyValid:Z

    .line 107
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReady:Z

    .line 109
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxCompleteValid:Z

    .line 110
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxComplete:Z

    const-string v1, ""

    .line 112
    iput-object v1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mNuxFlow:Ljava/lang/String;

    .line 113
    iput-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxFlowValid:Z

    return-void
.end method


# virtual methods
.method public areAllFinal()Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isVrReadyFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxCompleteFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxFlowFinal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public areAllValid()Z
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isVrReadyValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxCompleteValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxFlowValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNuxFlow()Ljava/lang/String;
    .locals 2

    .line 74
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxFlowValid:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mNuxFlow:Ljava/lang/String;

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "getNuxFlow() is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValuesAsStringArray()[Ljava/lang/String;
    .locals 5

    .line 95
    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->areAllValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isVrReady()Z

    move-result v0

    const-string v1, "1"

    const-string v2, "0"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/oculus/vrshell/config/CompanionServerPreferences;->isNuxComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const/4 v2, 0x6

    .line 101
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "vr_ready_status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "vr_nux_complete"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "nux_flow"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mNuxFlow:Ljava/lang/String;

    aput-object v1, v2, v0

    return-object v2

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Some values are not valid"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNuxComplete()Z
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxCompleteValid:Z

    if-eqz v0, :cond_0

    .line 53
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxComplete:Z

    return v0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "isIsNuxComplete() is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNuxCompleteFinal()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxCompleteValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxComplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNuxCompleteValid()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxCompleteValid:Z

    return v0
.end method

.method public isNuxFlowFinal()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxFlowValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mNuxFlow:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNuxFlowValid()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxFlowValid:Z

    return v0
.end method

.method public isVrReady()Z
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReadyValid:Z

    if-eqz v0, :cond_0

    .line 28
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReady:Z

    return v0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "isVrReady() is not valid"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isVrReadyFinal()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReadyValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVrReadyValid()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReadyValid:Z

    return v0
.end method

.method public setNuxComplete(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxComplete:Z

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxCompleteValid:Z

    return-void
.end method

.method public setNuxFlow(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mNuxFlow:Ljava/lang/String;

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsNuxFlowValid:Z

    return-void
.end method

.method public setVrReady(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReady:Z

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/oculus/vrshell/config/CompanionServerPreferences;->mIsVrReadyValid:Z

    return-void
.end method
