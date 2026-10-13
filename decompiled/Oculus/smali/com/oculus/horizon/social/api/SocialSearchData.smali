.class public Lcom/oculus/horizon/social/api/SocialSearchData;
.super Ljava/lang/Object;
.source "SocialSearchData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/social/api/SocialSearchData$Builder;
    }
.end annotation


# instance fields
.field private mSearchResultMode:Lcom/oculus/horizon/social/api/SearchResultMode;

.field private mSearchText:Ljava/lang/String;

.field private mUser:Lcom/oculus/horizon/social/api/SearchResultUser;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->access$000(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)Lcom/oculus/horizon/social/api/SearchResultUser;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData;->mUser:Lcom/oculus/horizon/social/api/SearchResultUser;

    .line 14
    invoke-static {p1}, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->access$100(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData;->mSearchText:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->access$200(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)Lcom/oculus/horizon/social/api/SearchResultMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData;->mSearchResultMode:Lcom/oculus/horizon/social/api/SearchResultMode;

    .line 16
    return-void
.end method


# virtual methods
.method public getSearchResultMode()Lcom/oculus/horizon/social/api/SearchResultMode;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData;->mSearchResultMode:Lcom/oculus/horizon/social/api/SearchResultMode;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/oculus/horizon/social/api/SearchResultUser;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData;->mUser:Lcom/oculus/horizon/social/api/SearchResultUser;

    return-object v0
.end method
