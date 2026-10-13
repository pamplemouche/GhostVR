.class Lcom/oculus/horizon/fbconnectui/FBConnectFragment$2;
.super Ljava/lang/Object;
.source "FBConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$2;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/fbconnectui/FBConnectFragment$2;->this$0:Lcom/oculus/horizon/fbconnectui/FBConnectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/fbconnectui/FBConnectFragment;->access$700(Lcom/oculus/horizon/fbconnectui/FBConnectFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 232
    return-void
.end method
