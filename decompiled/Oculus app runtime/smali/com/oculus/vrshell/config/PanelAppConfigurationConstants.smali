.class public Lcom/oculus/vrshell/config/PanelAppConfigurationConstants;
.super Ljava/lang/Object;
.source "PanelAppConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants;->TAG:Ljava/lang/String;

    return-object v0
.end method
