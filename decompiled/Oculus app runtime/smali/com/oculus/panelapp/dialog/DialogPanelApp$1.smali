.class synthetic Lcom/oculus/panelapp/dialog/DialogPanelApp$1;
.super Ljava/lang/Object;
.source "DialogPanelApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/dialog/DialogPanelApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oculus$systemdialog$CommonSystemDialog:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    invoke-static {}, Lcom/oculus/systemdialog/CommonSystemDialog;->values()[Lcom/oculus/systemdialog/CommonSystemDialog;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oculus/panelapp/dialog/DialogPanelApp$1;->$SwitchMap$com$oculus$systemdialog$CommonSystemDialog:[I

    :try_start_0
    sget-object v0, Lcom/oculus/panelapp/dialog/DialogPanelApp$1;->$SwitchMap$com$oculus$systemdialog$CommonSystemDialog:[I

    sget-object v1, Lcom/oculus/systemdialog/CommonSystemDialog;->GUARDIAN_ADJUST:Lcom/oculus/systemdialog/CommonSystemDialog;

    invoke-virtual {v1}, Lcom/oculus/systemdialog/CommonSystemDialog;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
