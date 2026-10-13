.class Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;
.super Ljava/lang/Object;
.source "SocialProfileDialog.java"

# interfaces
.implements Lcom/oculus/vrshell/panels/ImageLoader$ImageCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->setProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

.field final synthetic val$avatarImageUrl:Ljava/lang/String;

.field final synthetic val$avatarPictureView:Landroid/widget/ImageView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;

    iput-object p2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->val$avatarPictureView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->val$avatarImageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 246
    invoke-static {}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting avatar image onFailure() with \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;->val$avatarImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 233
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object v0

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;

    invoke-direct {v1, p0, p1}, Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/SocialProfileDialog$3;Landroid/graphics/Bitmap;)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
