.class public Lcom/oculus/horizon/nux360/FBLoginData;
.super Ljava/lang/Object;
.source "FBLoginData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    }
.end annotation


# instance fields
.field private final mAllEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mExistingEmailConflict:Ljava/lang/String;

.field private final mFacebookId:Ljava/lang/String;

.field private final mPrimaryEmail:Ljava/lang/String;

.field private final mProfilePicUri:Ljava/lang/String;

.field private final mRealName:Ljava/lang/String;

.field private final mUsernameSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mFacebookId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mRealName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mPrimaryEmail:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mExistingEmailConflict:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mUsernameSuggestions:Ljava/util/List;

    .line 33
    iput-object p6, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mAllEmails:Ljava/util/List;

    .line 34
    iput-object p7, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mProfilePicUri:Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/oculus/horizon/nux360/FBLoginData$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/nux360/FBLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAllEmails()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mAllEmails:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public getExistingEmailConflict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mExistingEmailConflict:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mPrimaryEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mProfilePicUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernameSuggestions()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData;->mUsernameSuggestions:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
