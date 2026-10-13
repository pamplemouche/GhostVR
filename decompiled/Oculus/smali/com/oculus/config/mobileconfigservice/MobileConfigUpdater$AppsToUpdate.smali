.class public final enum Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;
.super Ljava/lang/Enum;
.source "MobileConfigUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppsToUpdate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

.field public static final enum OCULUS_GALLERY:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

.field public static final enum OCULUS_HOME:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;


# instance fields
.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    new-instance v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    const-string v1, "OCULUS_GALLERY"

    const-string v2, "OculusGallery"

    const-string v3, "com.oculus.mediagallery"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->OCULUS_GALLERY:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    .line 65
    new-instance v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    const-string v1, "OCULUS_HOME"

    const-string v2, "OculusHomeShell"

    const-string v3, "com.oculus.vrshell.home"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->OCULUS_HOME:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    sget-object v1, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->OCULUS_GALLERY:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->OCULUS_HOME:Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->$VALUES:[Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->appName:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->packageName:Ljava/lang/String;

    .line 73
    return-void
.end method

.method static synthetic access$500(Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    return-object v0
.end method

.method public static values()[Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->$VALUES:[Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    invoke-virtual {v0}, [Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/config/mobileconfigservice/MobileConfigUpdater$AppsToUpdate;

    return-object v0
.end method
