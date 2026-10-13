.class public final Lcom/oculus/systemdialog/DialogListItem;
.super Ljava/lang/Object;
.source "DialogListItem.java"


# static fields
.field public static final DIALOG_LIST_ITEM_ID_KEY:Ljava/lang/String; = "id"

.field public static final DIALOG_LIST_ITEM_IMAGE_KEY:Ljava/lang/String; = "image"

.field public static final DIALOG_LIST_ITEM_TEXT_KEY:Ljava/lang/String; = "text"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mImage:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/oculus/systemdialog/DialogListItem;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogListItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogListItem;->mId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/oculus/systemdialog/DialogListItem;->mText:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/oculus/systemdialog/DialogListItem;->mImage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDialogListItemConfigurationIPCParcel()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 35
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogListItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "text"

    .line 36
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogListItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-object v1, p0, Lcom/oculus/systemdialog/DialogListItem;->mImage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "image"

    .line 38
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogListItem;->mImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/oculus/systemdialog/DialogListItem;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog list item configuration IPC parcel."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    throw v0
.end method
