.class public Lcom/oculus/browser/acra/util/ACRAResponse;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/oculus/browser/acra/util/ACRAResponse;->mStatus:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/oculus/browser/acra/util/ACRAResponse;->mStatus:I

    return-void
.end method
