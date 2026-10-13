.class public final Lcom/oculus/systemdialog/DialogButtonIcon;
.super Lcom/oculus/systemdialog/DialogButton;
.source "DialogButtonIcon.java"


# static fields
.field private static final DIALOG_BUTTON_ICON_KEY:Ljava/lang/String; = "icon"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mButtonIcon:Lcom/oculus/systemdialog/DialogIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/systemdialog/DialogButtonIcon;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogButtonIcon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oculus/systemdialog/DialogIcon;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/oculus/systemdialog/DialogButton;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p2, p0, Lcom/oculus/systemdialog/DialogButtonIcon;->mButtonIcon:Lcom/oculus/systemdialog/DialogIcon;

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

    .line 26
    :try_start_0
    invoke-super {p0}, Lcom/oculus/systemdialog/DialogButton;->getDialogButtonConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "icon"

    .line 27
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogButtonIcon;->mButtonIcon:Lcom/oculus/systemdialog/DialogIcon;

    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogIcon;->getIPCString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 31
    sget-object v1, Lcom/oculus/systemdialog/DialogButtonIcon;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog icon button configuration JSON."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    throw v0
.end method
