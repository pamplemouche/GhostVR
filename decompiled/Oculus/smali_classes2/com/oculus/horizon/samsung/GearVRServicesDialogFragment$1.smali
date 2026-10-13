.class Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment$1;
.super Ljava/lang/Object;
.source "GearVRServicesDialogFragment.java"

# interfaces
.implements Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment$1;->this$0:Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment$1;->this$0:Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 33
    const/4 v0, 0x0

    return v0
.end method
