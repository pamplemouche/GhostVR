.class public Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings;
.super Ljava/lang/Object;
.source "SamsungSettings.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BadMethodUse-android.util.Log.e",
        "BadSuperClassBaseColumns"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;,
        Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$GlobalKeys;,
        Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$PublicKeys;
    }
.end annotation


# static fields
.field public static final Global:Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

.field public static final Public:Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    const-string v1, "VRHelper/Public"

    const-string v2, "/public/"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings;->Public:Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    .line 43
    new-instance v0, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    const-string v1, "VRHelper/Global"

    const-string v2, "/global/"

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings;->Global:Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
