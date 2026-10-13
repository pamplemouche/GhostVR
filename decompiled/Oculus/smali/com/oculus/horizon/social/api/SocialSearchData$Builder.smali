.class public Lcom/oculus/horizon/social/api/SocialSearchData$Builder;
.super Ljava/lang/Object;
.source "SocialSearchData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/social/api/SocialSearchData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private searchResultMode:Lcom/oculus/horizon/social/api/SearchResultMode;

.field private searchText:Ljava/lang/String;

.field private user:Lcom/oculus/horizon/social/api/SearchResultUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)Lcom/oculus/horizon/social/api/SearchResultUser;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->user:Lcom/oculus/horizon/social/api/SearchResultUser;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->searchText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)Lcom/oculus/horizon/social/api/SearchResultMode;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->searchResultMode:Lcom/oculus/horizon/social/api/SearchResultMode;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/social/api/SocialSearchData;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/oculus/horizon/social/api/SocialSearchData;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/social/api/SocialSearchData;-><init>(Lcom/oculus/horizon/social/api/SocialSearchData$Builder;)V

    return-object v0
.end method

.method public setSearchResultMode(Lcom/oculus/horizon/social/api/SearchResultMode;)Lcom/oculus/horizon/social/api/SocialSearchData$Builder;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->searchResultMode:Lcom/oculus/horizon/social/api/SearchResultMode;

    .line 48
    return-object p0
.end method

.method public setSearchText(Ljava/lang/String;)Lcom/oculus/horizon/social/api/SocialSearchData$Builder;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->searchText:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setUser(Lcom/oculus/horizon/social/api/SearchResultUser;)Lcom/oculus/horizon/social/api/SocialSearchData$Builder;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oculus/horizon/social/api/SocialSearchData$Builder;->user:Lcom/oculus/horizon/social/api/SearchResultUser;

    .line 43
    return-object p0
.end method
