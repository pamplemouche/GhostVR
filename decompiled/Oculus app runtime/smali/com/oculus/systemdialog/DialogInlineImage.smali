.class public final Lcom/oculus/systemdialog/DialogInlineImage;
.super Ljava/lang/Object;
.source "DialogInlineImage.java"


# static fields
.field private static final DIALOG_INLINE_IMAGE_IMAGE_KEY:Ljava/lang/String; = "image"

.field private static final DIALOG_INLINE_IMAGE_PLACEHOLDER_KEY:Ljava/lang/String; = "placeholder"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mImage:Ljava/lang/String;

.field private final mPlaceholder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/oculus/systemdialog/DialogInlineImage;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/systemdialog/DialogInlineImage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/systemdialog/DialogInlineImage;->mPlaceholder:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/oculus/systemdialog/DialogInlineImage;->mImage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDialogInlineImageConfigurationIPCParcel()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "placeholder"

    .line 32
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogInlineImage;->mPlaceholder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "image"

    .line 34
    iget-object v2, p0, Lcom/oculus/systemdialog/DialogInlineImage;->mImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 38
    sget-object v1, Lcom/oculus/systemdialog/DialogInlineImage;->TAG:Ljava/lang/String;

    const-string v2, "Unable to get dialog inline image configuration IPC parcel."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    throw v0
.end method
