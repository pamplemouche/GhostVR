.class public final enum Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;
.super Ljava/lang/Enum;
.source "AppManagerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/oxygen/sdk/status/AppManagerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppManagerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;",
        ">;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

.field public static final enum APP_MANAGER_NEW_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

.field public static final enum APP_MANAGER_OLD_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

.field public static final enum APP_MANAGER_UNKNOWN_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    const-string v1, "APP_MANAGER_OLD_SIGN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_OLD_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    .line 19
    new-instance v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    const-string v1, "APP_MANAGER_NEW_SIGN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_NEW_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    .line 22
    new-instance v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    const-string v1, "APP_MANAGER_UNKNOWN_SIGN"

    invoke-direct {v0, v1, v4}, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_UNKNOWN_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    sget-object v1, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_OLD_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_NEW_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->APP_MANAGER_UNKNOWN_SIGN:Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->$VALUES:[Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->$VALUES:[Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    invoke-virtual {v0}, [Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/oxygen/sdk/status/AppManagerInfo$AppManagerType;

    return-object v0
.end method
