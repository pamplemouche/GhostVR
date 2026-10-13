.class public final Lcom/facebook/fbuploader/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/UploadResult$DedupState;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final mDedupDigestComputeTimeMs:J

.field public final mDedupState:Lcom/facebook/fbuploader/UploadResult$DedupState;

.field public final mResponse:Ljava/lang/String;

.field public final mStatus:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mSuccessfulResult:Ljava/lang/String;

.field public final mTransferStatistics:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/fbuploader/TransferStatistic;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mUploadDomain:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mUploadId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mXsharingNonces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/fbuploader/UploadResult$DedupState;JLjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/HashMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/fbuploader/UploadResult$DedupState;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/fbuploader/TransferStatistic;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/facebook/fbuploader/UploadResult;->mSuccessfulResult:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/facebook/fbuploader/UploadResult;->mResponse:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupState:Lcom/facebook/fbuploader/UploadResult$DedupState;

    .line 107
    iput-wide p4, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupDigestComputeTimeMs:J

    .line 108
    iput-object p6, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadId:Ljava/lang/String;

    .line 109
    iput-object p10, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadDomain:Ljava/lang/String;

    .line 110
    iput-object p7, p0, Lcom/facebook/fbuploader/UploadResult;->mStatus:Ljava/lang/String;

    .line 111
    iput-object p8, p0, Lcom/facebook/fbuploader/UploadResult;->mXsharingNonces:Ljava/util/HashMap;

    .line 112
    if-nez p9, :cond_0

    const/4 v0, 0x0

    .line 113
    :goto_0
    iput-object v0, p0, Lcom/facebook/fbuploader/UploadResult;->mTransferStatistics:Ljava/util/Collection;

    .line 114
    return-void

    .line 113
    :cond_0
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 186
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    if-ne p0, p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 157
    :cond_3
    check-cast p1, Lcom/facebook/fbuploader/UploadResult;

    .line 158
    iget-wide v2, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupDigestComputeTimeMs:J

    iget-wide v4, p1, Lcom/facebook/fbuploader/UploadResult;->mDedupDigestComputeTimeMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mSuccessfulResult:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mSuccessfulResult:Ljava/lang/String;

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mResponse:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mResponse:Ljava/lang/String;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupState:Lcom/facebook/fbuploader/UploadResult$DedupState;

    .line 161
    invoke-virtual {v2}, Lcom/facebook/fbuploader/UploadResult$DedupState;->getValue()I

    move-result v2

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mDedupState:Lcom/facebook/fbuploader/UploadResult$DedupState;

    invoke-virtual {v3}, Lcom/facebook/fbuploader/UploadResult$DedupState;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadId:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mUploadId:Ljava/lang/String;

    .line 162
    invoke-static {v2, v3}, Lcom/facebook/fbuploader/UploadResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mStatus:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mStatus:Ljava/lang/String;

    .line 163
    invoke-static {v2, v3}, Lcom/facebook/fbuploader/UploadResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mXsharingNonces:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mXsharingNonces:Ljava/util/HashMap;

    .line 164
    invoke-static {v2, v3}, Lcom/facebook/fbuploader/UploadResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mTransferStatistics:Ljava/util/Collection;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mTransferStatistics:Ljava/util/Collection;

    .line 165
    invoke-static {v2, v3}, Lcom/facebook/fbuploader/UploadResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadDomain:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/fbuploader/UploadResult;->mUploadDomain:Ljava/lang/String;

    .line 166
    invoke-static {v2, v3}, Lcom/facebook/fbuploader/UploadResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 171
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mSuccessfulResult:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mResponse:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupState:Lcom/facebook/fbuploader/UploadResult$DedupState;

    .line 174
    invoke-virtual {v2}, Lcom/facebook/fbuploader/UploadResult$DedupState;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupDigestComputeTimeMs:J

    .line 175
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mStatus:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mXsharingNonces:Ljava/util/HashMap;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mTransferStatistics:Ljava/util/Collection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadDomain:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    const-string v0, "mSuccessfulResult"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mSuccessfulResult:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "mResponse"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mResponse:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v0, "mDedupState"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mDedupState:Lcom/facebook/fbuploader/UploadResult$DedupState;

    invoke-virtual {v2}, Lcom/facebook/fbuploader/UploadResult$DedupState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "mUploadId"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mUploadId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "mStatus"

    iget-object v2, p0, Lcom/facebook/fbuploader/UploadResult;->mStatus:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v2, "xSharingNonces"

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadResult;->mXsharingNonces:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fbuploader/UploadResult;->mXsharingNonces:Ljava/util/HashMap;

    .line 137
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
