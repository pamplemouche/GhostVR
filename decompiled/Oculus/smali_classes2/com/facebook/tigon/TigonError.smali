.class public final Lcom/facebook/tigon/TigonError;
.super Ljava/lang/Object;
.source "TigonError.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# instance fields
.field private final mAnalyticsDetail:Ljava/lang/String;

.field private final mCategory:I

.field private final mDomainErrorCode:I

.field private final mErrorDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/facebook/tigon/TigonError;->mCategory:I

    .line 24
    iput-object p2, p0, Lcom/facebook/tigon/TigonError;->mErrorDomain:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/facebook/tigon/TigonError;->mDomainErrorCode:I

    .line 26
    iput-object p4, p0, Lcom/facebook/tigon/TigonError;->mAnalyticsDetail:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public analyticsDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/tigon/TigonError;->mAnalyticsDetail:Ljava/lang/String;

    return-object v0
.end method

.method public category()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/facebook/tigon/TigonError;->mCategory:I

    return v0
.end method

.method public domainErrorCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/facebook/tigon/TigonError;->mDomainErrorCode:I

    return v0
.end method

.method public errorDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/tigon/TigonError;->mErrorDomain:Ljava/lang/String;

    return-object v0
.end method
