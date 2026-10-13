.class Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$3;
.super Lcom/oculus/http/core/base/ApiCallback;
.source "FBConnectProfilePictureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->importFacebookProfilePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/http/core/base/ApiCallback",
        "<",
        "Lcom/oculus/horizon/api/fbconnect/FBImportProfilePictureMutationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-direct {p0}, Lcom/oculus/http/core/base/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to import Facebook profile picture"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onResponse(Lcom/oculus/horizon/api/fbconnect/FBImportProfilePictureMutationResponse;)V
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully imported Facebook profile picture"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$3;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->access$500(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->refresh()Lbolts/Task;

    .line 175
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Lcom/oculus/horizon/api/fbconnect/FBImportProfilePictureMutationResponse;

    invoke-virtual {p0, p1}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$3;->onResponse(Lcom/oculus/horizon/api/fbconnect/FBImportProfilePictureMutationResponse;)V

    return-void
.end method
