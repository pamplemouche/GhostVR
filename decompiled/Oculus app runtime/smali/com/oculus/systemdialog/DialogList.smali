.class public final Lcom/oculus/systemdialog/DialogList;
.super Ljava/lang/Object;
.source "DialogList.java"


# static fields
.field public static final DIALOG_LIST_ITEMS_KEY:Ljava/lang/String; = "items"

.field public static final DIALOG_LIST_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/systemdialog/DialogListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialogListType:Lcom/oculus/systemdialog/DialogListType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/oculus/systemdialog/DialogList;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oculus/systemdialog/DialogListType;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListType:Lcom/oculus/systemdialog/DialogListType;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addListItem(Lcom/oculus/systemdialog/DialogListItem;)V
    .locals 2

    if-nez p1, :cond_0

    .line 28
    sget-object p1, Lcom/oculus/systemdialog/DialogList;->TAG:Ljava/lang/String;

    const-string v0, "Dialog list item must be non-null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListItems:Ljava/util/List;

    if-nez v0, :cond_1

    .line 33
    sget-object v0, Lcom/oculus/systemdialog/DialogList;->TAG:Ljava/lang/String;

    const-string v1, "Dialog list items array was not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListItems:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDialogListConfigurationIPCParcel()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListType:Lcom/oculus/systemdialog/DialogListType;

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lcom/oculus/systemdialog/DialogList;->TAG:Ljava/lang/String;

    const-string v2, "Dialog list type was specified to be null, defaulting to type NO_SELECT."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "type"

    .line 53
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListType:Lcom/oculus/systemdialog/DialogListType;

    if-nez v2, :cond_1

    sget-object v2, Lcom/oculus/systemdialog/DialogListType;->NO_SELECT:Lcom/oculus/systemdialog/DialogListType;

    .line 56
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogListType;->getIPCString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListType:Lcom/oculus/systemdialog/DialogListType;

    .line 57
    invoke-virtual {v2}, Lcom/oculus/systemdialog/DialogListType;->getIPCString()Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 60
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListItems:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogList;->mDialogListItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oculus/systemdialog/DialogListItem;

    .line 63
    invoke-virtual {v3}, Lcom/oculus/systemdialog/DialogListItem;->getDialogListItemConfigurationIPCParcel()Lorg/json/JSONObject;

    move-result-object v3

    .line 62
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    const-string v2, "items"

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/oculus/systemdialog/DialogList;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog list configuration IPC parcel."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    throw v0
.end method
