.class public Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "FocusWheelDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final DELAY_MILLIS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;->TAG:Ljava/lang/String;

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

    const/16 p1, 0x1770

    .line 36
    iput p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;->DELAY_MILLIS:I

    .line 18
    sget-object p1, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;->TAG:Ljava/lang/String;

    const-string p2, "FocusWheelDialog dialog constructed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog$1;

    invoke-direct {v1, p0}, Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog$1;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/FocusWheelDialog;)V

    const-wide/16 v2, 0x1770

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
