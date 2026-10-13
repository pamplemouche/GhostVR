.class public Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;
.super Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;
.source "QuestViewRecenterDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/oculus/panelapp/anytimeui/dialogs/Dialog;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;)Ljava/util/Timer;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;->mTimer:Ljava/util/Timer;

    return-object p0
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$CloseDialogTask;-><init>(Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog;Lcom/oculus/panelapp/anytimeui/dialogs/QuestViewRecenterDialog$1;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
