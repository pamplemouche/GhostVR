.class Lcom/oculus/horizon/widget/OculusPopupMenu$2;
.super Ljava/lang/Object;
.source "OculusPopupMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/widget/OculusPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/widget/OculusPopupMenu;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$2;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$2;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->access$200(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/widget/OculusPopupMenu$2;->this$0:Lcom/oculus/horizon/widget/OculusPopupMenu;

    invoke-static {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu;->access$200(Lcom/oculus/horizon/widget/OculusPopupMenu;)Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/widget/OculusPopupMenu$OnMenuDismissListener;->onDismiss()V

    .line 71
    :cond_0
    return-void
.end method
