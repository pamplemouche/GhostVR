.class public final Lcom/facebook/fbuploader/Config$DedupPolicy;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fbuploader/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DedupPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;
    }
.end annotation


# instance fields
.field private final mDigestReadBlockSize:I

.field private mEnabled:Z

.field private mHashType:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

.field public final mMaxFailures:I

.field private mMaxFileSize:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 166
    sget-object v0, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->SHA256:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->name()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fbuploader/Config$DedupPolicy;-><init>(ZILjava/lang/String;J)V

    .line 167
    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;J)V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-boolean p1, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mEnabled:Z

    .line 172
    iput p2, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mDigestReadBlockSize:I

    .line 173
    iput-wide p4, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mMaxFileSize:J

    .line 175
    :try_start_0
    invoke-static {p3}, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->valueOf(Ljava/lang/String;)Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mHashType:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mMaxFailures:I

    .line 183
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mHashType:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mEnabled:Z

    goto :goto_0
.end method

.method public static createDisabledPolicy()Lcom/facebook/fbuploader/Config$DedupPolicy;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 158
    new-instance v0, Lcom/facebook/fbuploader/Config$DedupPolicy;

    sget-object v2, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->SHA256:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    invoke-virtual {v2}, Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;->name()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    move v2, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fbuploader/Config$DedupPolicy;-><init>(ZILjava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getDigestReadBlockSize()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mDigestReadBlockSize:I

    return v0
.end method

.method public getHashType()Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mHashType:Lcom/facebook/fbuploader/Config$DedupPolicy$Hash;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mMaxFileSize:J

    return-wide v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/facebook/fbuploader/Config$DedupPolicy;->mEnabled:Z

    return v0
.end method
