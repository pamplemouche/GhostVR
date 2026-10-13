.class Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;
.super Ljava/lang/Object;
.source "OTABlockingDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;->updateLanguage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;->this$0:Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 222
    invoke-static {}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/UiThreadExecutor;

    move-result-object p1

    new-instance v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialog$2;)V

    .line 223
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/UiThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
