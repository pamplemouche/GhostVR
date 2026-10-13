.class public Lcom/oculus/util/JobSchedulerIds;
.super Ljava/lang/Object;
.source "JobSchedulerIds.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isConsistencyCheckJobId(I)Z
    .locals 1

    .prologue
    .line 47
    const v0, 0x6d002c0b

    if-eq p0, v0, :cond_0

    const v0, 0x6d002c0c

    if-lt p0, v0, :cond_1

    const v0, 0x6d004f33

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
