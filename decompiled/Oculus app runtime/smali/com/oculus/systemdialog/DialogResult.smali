.class public final Lcom/oculus/systemdialog/DialogResult;
.super Ljava/lang/Object;
.source "DialogResult.java"


# static fields
.field public static final DIALOG_ACTION_KEY:Ljava/lang/String; = "action"

.field public static final DIALOG_AUTO_CLOSE_KEY:Ljava/lang/String; = "autoClose"

.field public static final DIALOG_ID_KEY:Ljava/lang/String; = "dialogId"

.field public static final DIALOG_SELECTED_LIST_ITEM_IDS_KEY:Ljava/lang/String; = "listSelection"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDialogAction:Ljava/lang/String;

.field private final mDialogAutoClose:Z

.field private final mDialogId:Ljava/lang/String;

.field private final mDialogSelectedListItemIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/oculus/systemdialog/DialogResult;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogId:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogAction:Ljava/lang/String;

    .line 92
    iput-boolean p3, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogAutoClose:Z

    .line 93
    iput-object p4, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogSelectedListItemIds:Ljava/util/List;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/oculus/systemdialog/DialogResult;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "dialogId"

    .line 31
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    .line 32
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "autoClose"

    const/4 v4, 0x1

    .line 35
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "listSelection"

    .line 38
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    .line 42
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 45
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v0, Lcom/oculus/systemdialog/DialogResult;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oculus/systemdialog/DialogResult;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 51
    :catch_0
    sget-object v0, Lcom/oculus/systemdialog/DialogResult;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse dialog result from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDialogAction()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogAction:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogAutoClose()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogAutoClose:Z

    return v0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogId:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogSelectedListItemIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogSelectedListItemIds:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{dialogId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogAutoClose: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogAutoClose:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dialogSelectedListItemIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/systemdialog/DialogResult;->mDialogSelectedListItemIds:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "[]"

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
