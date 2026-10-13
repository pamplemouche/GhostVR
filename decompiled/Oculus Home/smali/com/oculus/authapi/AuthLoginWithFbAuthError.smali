.class public final Lcom/oculus/authapi/AuthLoginWithFbAuthError;
.super Lcom/oculus/authapi/AuthError;
.source "AuthLoginWithFbAuthError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mEmail:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mExistingEmailConflict:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFbAccessToken:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mFbUserId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mProfilePicUri:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mUsernameSuggestions:Ljava/util/List;
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


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/oculus/authapi/AuthError;-><init>(Landroid/os/Bundle;)V

    .line 30
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mName:Ljava/lang/String;

    .line 31
    const-string v0, "fb_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mFbUserId:Ljava/lang/String;

    .line 32
    const-string v0, "fb_access_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mFbAccessToken:Ljava/lang/String;

    .line 33
    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mEmail:Ljava/lang/String;

    .line 34
    const-string v0, "profile_pic_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mProfilePicUri:Ljava/lang/String;

    .line 35
    const-string v0, "username_suggestions"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->unmodifiableListOrNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mUsernameSuggestions:Ljava/util/List;

    .line 38
    const-string v0, "all_emails"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->unmodifiableListOrNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mAllEmails:Ljava/util/List;

    .line 40
    const-string v0, "existing_email_conflict"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mExistingEmailConflict:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private static unmodifiableListOrNull(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getAllEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mAllEmails:Ljava/util/List;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getExistingEmailConflict()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mExistingEmailConflict:Ljava/lang/String;

    return-object v0
.end method

.method public getFbAccessToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mFbAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFbUserId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mFbUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePicUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mProfilePicUri:Ljava/lang/String;

    return-object v0
.end method

.method public getUsernameSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/authapi/AuthLoginWithFbAuthError;->mUsernameSuggestions:Ljava/util/List;

    return-object v0
.end method
