.class public final enum Lcom/oculus/appmanager/info/model/RequestOrigin;
.super Ljava/lang/Enum;
.source "RequestOrigin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
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

.field public static final enum STORAGE_MANAGER:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum TV:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum TWILIGHT:Lcom/oculus/appmanager/info/model/RequestOrigin;

.field public static final enum UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 13
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v2, 0x1

    const-string v3, "LIBRARY_PROVIDER"

    invoke-direct {v0, v3, v2}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 16
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v3, 0x2

    const-string v4, "ROADBLOCK"

    invoke-direct {v0, v4, v3}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->ROADBLOCK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 18
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v4, 0x3

    const-string v5, "NUX360"

    invoke-direct {v0, v5, v4}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->NUX360:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 20
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v5, 0x4

    const-string v6, "LIBRARY"

    invoke-direct {v0, v6, v5}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 25
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v6, 0x5

    const-string v7, "REMOTE_INSTALL"

    invoke-direct {v0, v7, v6}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_INSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 26
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v7, 0x6

    const-string v8, "REMOTE_UNINSTALL"

    invoke-direct {v0, v8, v7}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_UNINSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 28
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v8, 0x7

    const-string v9, "STORE"

    invoke-direct {v0, v9, v8}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 30
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v9, 0x8

    const-string v10, "TV"

    invoke-direct {v0, v10, v9}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->TV:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 32
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v10, 0x9

    const-string v11, "AUTOUPDATE"

    invoke-direct {v0, v11, v10}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->AUTOUPDATE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 34
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v11, 0xa

    const-string v12, "DUMPER"

    invoke-direct {v0, v12, v11}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->DUMPER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 36
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v12, 0xb

    const-string v13, "PLATFORM_SDK"

    invoke-direct {v0, v13, v12}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 38
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v13, 0xc

    const-string v14, "TWILIGHT"

    invoke-direct {v0, v14, v13}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->TWILIGHT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 40
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v14, 0xd

    const-string v15, "PACIFIC_SETUP"

    invoke-direct {v0, v15, v14}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->PACIFIC_SETUP:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 42
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v15, 0xe

    const-string v14, "HOME_LIBRARY"

    invoke-direct {v0, v14, v15}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->HOME_LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 44
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v14, "APP_LAUNCH_PROMPT"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->APP_LAUNCH_PROMPT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 46
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v14, "STORAGE_MANAGER"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORAGE_MANAGER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 48
    new-instance v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    const-string v14, "NOTIFICATION"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/oculus/appmanager/info/model/RequestOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->NOTIFICATION:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v0, 0x12

    .line 5
    new-array v0, v0, [Lcom/oculus/appmanager/info/model/RequestOrigin;

    sget-object v14, Lcom/oculus/appmanager/info/model/RequestOrigin;->UNKNOWN:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v14, v0, v1

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY_PROVIDER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->ROADBLOCK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->NUX360:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_INSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->REMOTE_UNINSTALL:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->TV:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->AUTOUPDATE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->DUMPER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->PLATFORM_SDK:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v12

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->TWILIGHT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    aput-object v1, v0, v13

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->PACIFIC_SETUP:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->HOME_LIBRARY:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->APP_LAUNCH_PROMPT:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORAGE_MANAGER:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/RequestOrigin;->NOTIFICATION:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/16 v2, 0x11

    aput-object v1, v0, v2

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

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/model/RequestOrigin;

    return-object p0
.end method

.method public static values()[Lcom/oculus/appmanager/info/model/RequestOrigin;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->$VALUES:[Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/model/RequestOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/model/RequestOrigin;

    return-object v0
.end method
