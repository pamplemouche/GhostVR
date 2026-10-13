.class public Lcom/oculus/systemdialog/DialogButton;
.super Ljava/lang/Object;
.source "DialogButton.java"


# static fields
.field private static final DIALOG_BUTTON_ACTION_KEY:Ljava/lang/String; = "action"

.field private static final DIALOG_BUTTON_AUTO_CLOSE_KEY:Ljava/lang/String; = "autoClose"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonAction:Ljava/lang/String;

.field private mButtonAutoClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/systemdialog/DialogButton;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/oculus/systemdialog/DialogButton;->mButtonAutoClose:Z

    .line 20
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogButton;->mButtonAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "action"

    .line 36
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogButton;->mButtonAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-boolean v1, p0, Lcom/oculus/systemdialog/DialogButton;->mButtonAutoClose:Z

    if-nez v1, :cond_0

    const-string v1, "autoClose"

    .line 41
    iget-boolean v2, p0, Lcom/oculus/systemdialog/DialogButton;->mButtonAutoClose:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 46
    sget-object v1, Lcom/oculus/systemdialog/DialogButton;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog base button configuration JSON."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    throw v0
.end method

.method public setDoesNotAutoClose()V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/oculus/systemdialog/DialogButton;->mButtonAutoClose:Z

    return-void
.end method
