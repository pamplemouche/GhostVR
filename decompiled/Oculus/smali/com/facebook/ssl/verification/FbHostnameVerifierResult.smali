.class public Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
.super Ljava/lang/Object;
.source "FbHostnameVerifierResult.java"


# instance fields
.field private mAttemptedMatchedIpAddress:Z

.field private mCommonName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFailMessage:Ljava/lang/String;

.field private mHostname:Ljava/lang/String;

.field private mMatchedCommonName:Z

.field private mMatchedIpAddress:Z

.field private mMatchedSubjectAltName:Z

.field private mNameMatched:Ljava/lang/String;

.field private mSubjectAlts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSuccessful:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mSuccessful:Z

    .line 14
    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mMatchedCommonName:Z

    .line 15
    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mMatchedSubjectAltName:Z

    .line 16
    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mMatchedIpAddress:Z

    .line 17
    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mAttemptedMatchedIpAddress:Z

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mNameMatched:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mFailMessage:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mCommonName:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mHostname:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public fail()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mSuccessful:Z

    .line 45
    return-object p0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mSuccessful:Z

    return v0
.end method

.method public setAttemptedMatchedIpAddress(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mAttemptedMatchedIpAddress:Z

    .line 94
    return-void
.end method

.method public setCommonName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 105
    iput-object p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mCommonName:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setFailMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mFailMessage:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setMatchedCommonName(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mMatchedCommonName:Z

    .line 62
    return-void
.end method

.method public setMatchedIpAddress(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mMatchedIpAddress:Z

    .line 86
    return-void
.end method

.method public setMatchedSubjectAltName(Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mMatchedSubjectAltName:Z

    .line 70
    return-void
.end method

.method public setNameMatched(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mNameMatched:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSubjectAlts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mSubjectAlts:Ljava/util/List;

    .line 114
    return-void
.end method

.method public success()Lcom/facebook/ssl/verification/FbHostnameVerifierResult;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ssl/verification/FbHostnameVerifierResult;->mSuccessful:Z

    .line 40
    return-object p0
.end method
