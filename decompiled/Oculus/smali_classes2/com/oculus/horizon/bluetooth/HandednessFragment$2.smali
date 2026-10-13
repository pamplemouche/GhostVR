.class Lcom/oculus/horizon/bluetooth/HandednessFragment$2;
.super Ljava/lang/Object;
.source "HandednessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/bluetooth/HandednessFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/HandednessFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/HandednessFragment;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/HandednessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/HandednessFragment;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->access$000(Lcom/oculus/horizon/bluetooth/HandednessFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->access$100(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/HandednessFragment;

    iget-object v1, v1, Lcom/oculus/horizon/bluetooth/HandednessFragment;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->setHandedness(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/HandednessFragment$2;->this$0:Lcom/oculus/horizon/bluetooth/HandednessFragment;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->access$200(Lcom/oculus/horizon/bluetooth/HandednessFragment;)V

    .line 75
    return-void
.end method
