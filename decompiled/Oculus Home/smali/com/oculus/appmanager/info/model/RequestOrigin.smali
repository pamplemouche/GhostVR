.class public final enum Lcom/oculus/appmanager/info/model/RequestOrigin;
.super Ljava/lang/Enum;
.source "RequestOrigin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/info/model/RequestOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum APP_LAUNCH_PROMPT:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum AUTOUPDATE:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum DUMPER:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum HOME_LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NOTIFICATION:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum NUX360:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum PACIFIC_SETUP:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum REMOTE_INSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum REMOTE_UNINSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum ROADBLOCK:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum SETTINGS:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum STORAGE_MANAGER:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum TV:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum TWILIGHT:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 13
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "LIBRARY_PROVIDER"

    invoke-direct {v0, v1, v4}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "ROADBLOCK"

    invoke-direct {v0, v1, v5}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->ROADBLOCK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 18
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "NUX360"

    invoke-direct {v0, v1, v6}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->NUX360:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 20
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "LIBRARY"

    invoke-direct {v0, v1, v7}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 25
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "REMOTE_INSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_INSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 26
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "REMOTE_UNINSTALL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_UNINSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 28
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "STORE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 30
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "TV"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->TV:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 32
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "AUTOUPDATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->AUTOUPDATE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 34
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "DUMPER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->DUMPER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 36
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "PLATFORM_SDK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 38
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "TWILIGHT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->TWILIGHT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 40
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "PACIFIC_SETUP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->PACIFIC_SETUP:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 42
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "HOME_LIBRARY"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->HOME_LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 44
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "APP_LAUNCH_PROMPT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->APP_LAUNCH_PROMPT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 46
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "STORAGE_MANAGER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORAGE_MANAGER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 48
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "NOTIFICATION"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->NOTIFICATION:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 50
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v1, "SETTINGS"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->SETTINGS:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 5
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/oculus/appmanager/info/model/RequestOrigin;

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->ROADBLOCK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->NUX360:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_INSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_UNINSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->TV:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->AUTOUPDATE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->DUMPER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->TWILIGHT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->PACIFIC_SETUP:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->HOME_LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->APP_LAUNCH_PROMPT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORAGE_MANAGER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->NOTIFICATION:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/oculus/appmanager/info/model/RequestOrigin;->SETTINGS:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->$VALUES:[Lcom/oculus/appmanager/info/model/RequestOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->$VALUES:[Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/model/RequestOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/model/RequestOrigin;

    return-object v0
.end method
