.class public Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialogWithImage;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "OTABlockingDialogWithImage.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialogWithImage;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialogWithImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/OTABlockingDialogWithImage;->TAG:Ljava/lang/String;

    const-string p2, "OTABlockingDialogWithImage dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
