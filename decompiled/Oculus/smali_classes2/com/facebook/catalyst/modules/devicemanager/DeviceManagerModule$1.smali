.class Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule$1;
.super Ljava/lang/Object;
.source "DeviceManagerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule;->setKeepScreenOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$screenShouldBeKeptOn:Z


# direct methods
.method constructor <init>(Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule$1;->this$0:Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule;

    iput-object p2, p0, Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule$1;->val$screenShouldBeKeptOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 62
    iget-object v0, p0, Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 63
    iget-boolean v1, p0, Lcom/facebook/catalyst/modules/devicemanager/DeviceManagerModule$1;->val$screenShouldBeKeptOn:Z

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method
