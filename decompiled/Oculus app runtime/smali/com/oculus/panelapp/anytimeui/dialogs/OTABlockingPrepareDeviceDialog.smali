.class public Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingPrepareDeviceDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "OTABlockingPrepareDeviceDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingPrepareDeviceDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingPrepareDeviceDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingPrepareDeviceDialog;->TAG:Ljava/lang/String;

    const-string p2, "OTABlockingPrepareDeviceDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
