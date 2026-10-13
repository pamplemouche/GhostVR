.class public final Lcom/oculus/systemdialog/DialogDefinitionCommon;
.super Lcom/oculus/systemdialog/DialogDefinitionBase;
.source "DialogDefinitionCommon.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/systemdialog/DialogDefinitionCommon;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogDefinitionCommon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/systemdialog/CommonSystemDialog;)V
    .locals 0

    .line 16
    invoke-virtual {p1}, Lcom/oculus/systemdialog/CommonSystemDialog;->getDialogId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/systemdialog/DialogDefinitionBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDialogConfigurationIPCParcel()Ljava/lang/String;
    .locals 3

    .line 22
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "common"

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dialogId"

    .line 24
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogDefinitionCommon;->mDialogId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/oculus/systemdialog/DialogDefinitionCommon;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog configuration JSON."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method
