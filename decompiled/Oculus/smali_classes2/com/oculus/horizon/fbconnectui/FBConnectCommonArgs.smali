.class public Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;
.super Ljava/lang/Object;
.source "FBConnectCommonArgs.java"


# static fields
.field public static ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

.field public static ARG_IS_IN_SETTINGS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "arg_is_in_nux_flow"

    sput-object v0, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_NUX_FLOW:Ljava/lang/String;

    .line 7
    const-string v0, "arg_is_in_settings"

    sput-object v0, Lcom/oculus/horizon/fbconnectui/FBConnectCommonArgs;->ARG_IS_IN_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
