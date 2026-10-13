.class public Lcom/oculus/horizon/nux360/FBLoginData$Builder;
.super Ljava/lang/Object;
.source "FBLoginData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/nux360/FBLoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExistingEmailConflict:Ljava/lang/String;

.field private mFacebookId:Ljava/lang/String;

.field private mPrimaryEmail:Ljava/lang/String;

.field private mProfilePicUri:Ljava/lang/String;

.field private mRealName:Ljava/lang/String;

.field private mUsernameSuggestions:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mFacebookId:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mRealName:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mPrimaryEmail:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mExistingEmailConflict:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mUsernameSuggestions:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mAllEmails:Ljava/util/List;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mProfilePicUri:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public build()Lcom/oculus/horizon/nux360/FBLoginData;
    .locals 9

    .prologue
    .line 96
    new-instance v0, Lcom/oculus/horizon/nux360/FBLoginData;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mFacebookId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mRealName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mPrimaryEmail:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mExistingEmailConflict:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mUsernameSuggestions:Ljava/util/List;

    iget-object v6, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mAllEmails:Ljava/util/List;

    iget-object v7, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mProfilePicUri:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/nux360/FBLoginData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/oculus/horizon/nux360/FBLoginData$1;)V

    return-object v0
.end method

.method public setAllEmails(Ljava/util/ArrayList;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/horizon/nux360/FBLoginData$Builder;"
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mAllEmails:Ljava/util/List;

    .line 123
    return-object p0
.end method

.method public setExistingEmailConflict(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mExistingEmailConflict:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setFacebookId(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mFacebookId:Ljava/lang/String;

    .line 108
    return-object p0
.end method

.method public setPrimaryEmail(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mPrimaryEmail:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setProfilePicUri(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mProfilePicUri:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setRealName(Ljava/lang/String;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mRealName:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public setUsernameSuggestions(Ljava/util/ArrayList;)Lcom/oculus/horizon/nux360/FBLoginData$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oculus/horizon/nux360/FBLoginData$Builder;"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/nux360/FBLoginData$Builder;->mUsernameSuggestions:Ljava/util/List;

    .line 118
    return-object p0
.end method
