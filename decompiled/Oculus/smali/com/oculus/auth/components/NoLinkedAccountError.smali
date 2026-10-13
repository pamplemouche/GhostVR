.class final Lcom/oculus/auth/components/NoLinkedAccountError;
.super Lcom/oculus/auth/components/MarshallableError;
.source "NoLinkedAccountError.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

.field private final mExistingEmailConflict:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    const/16 v0, -0xd

    invoke-direct {p0, v0}, Lcom/oculus/auth/components/MarshallableError;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    .line 24
    iput-object p2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mExistingEmailConflict:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public marshal()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 29
    invoke-super {p0}, Lcom/oculus/auth/components/MarshallableError;->marshal()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    const-string v1, "name"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "fb_user_id"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->fbUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "fb_access_token"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->fbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "email"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "profile_pic_uri"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->profilePicUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "username_suggestions"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->usernameSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 37
    const-string v1, "all_emails"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mAccountInfo:Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;

    iget-object v2, v2, Lcom/oculus/auth/api/LoginWithFbAuthResponse$AccountInfo;->allEmails:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    const-string v1, "existing_email_conflict"

    iget-object v2, p0, Lcom/oculus/auth/components/NoLinkedAccountError;->mExistingEmailConflict:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object v0
.end method
