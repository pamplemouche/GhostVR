.class Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5;
.super Ljava/lang/Object;
.source "AnytimeUIDeviceInfoBarViewBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;->enableScreenLockIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;


# direct methods
.method constructor <init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5;->this$0:Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 227
    invoke-static {}, Lcom/oculus/vrshell/panels/ThreadExecutor;->getInstance()Lcom/oculus/vrshell/panels/ThreadExecutor;

    move-result-object p1

    new-instance v0, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5$1;

    invoke-direct {v0, p0}, Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5$1;-><init>(Lcom/oculus/panelapp/anytimeui/AnytimeUIDeviceInfoBarViewBase$5;)V

    .line 228
    invoke-virtual {p1, v0}, Lcom/oculus/vrshell/panels/ThreadExecutor;->execute(Ljava/util/concurrent/Callable;)Lcom/oculus/vrshell/panels/ThreadExecutor$ConcurrentListenableScheduledFuture;

    return-void
.end method
