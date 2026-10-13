.class Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;
.super Ljava/lang/Object;
.source "FBConnectProfilePictureFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->access$100(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    const-string v1, "select_oculus"

    iget-object v2, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    .line 82
    invoke-static {v2}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->access$000(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)Z

    move-result v2

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportImportFacebookPictureEvent(Ljava/lang/String;Z)V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment$1;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;->access$200(Lcom/oculus/horizon/fbconnectui/FBConnectProfilePictureFragment;)V

    .line 84
    return-void
.end method
