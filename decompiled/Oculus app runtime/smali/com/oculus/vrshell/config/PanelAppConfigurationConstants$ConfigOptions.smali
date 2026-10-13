.class public final enum Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;
.super Ljava/lang/Enum;
.source "PanelAppConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/config/PanelAppConfigurationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

.field public static final enum inhibitcapture:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

.field public static final enum removecaptureproxy:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

.field public static final enum securelayer:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

.field public static final enum zerocopytw:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;


# instance fields
.field private final optionValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "zerocopytw"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->zerocopytw:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    .line 16
    new-instance v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    const/4 v3, 0x2

    const-string v4, "securelayer"

    invoke-direct {v0, v4, v2, v3}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->securelayer:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    .line 18
    new-instance v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    const/4 v4, 0x4

    const-string v5, "inhibitcapture"

    invoke-direct {v0, v5, v3, v4}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->inhibitcapture:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    .line 20
    new-instance v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    const/4 v5, 0x3

    const-string v6, "removecaptureproxy"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v5, v7}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->removecaptureproxy:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    .line 12
    new-array v0, v4, [Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    sget-object v4, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->zerocopytw:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->securelayer:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->inhibitcapture:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->removecaptureproxy:Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->$VALUES:[Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->optionValue:I

    return-void
.end method

.method public static getValueOfOption(Ljava/lang/String;)I
    .locals 1

    .line 35
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->getOptionValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-static {}, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;
    .locals 1

    .line 12
    const-class v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    return-object p0
.end method

.method public static values()[Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;
    .locals 1

    .line 12
    sget-object v0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->$VALUES:[Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    invoke-virtual {v0}, [Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;

    return-object v0
.end method


# virtual methods
.method public getOptionValue()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/oculus/vrshell/config/PanelAppConfigurationConstants$ConfigOptions;->optionValue:I

    return v0
.end method
