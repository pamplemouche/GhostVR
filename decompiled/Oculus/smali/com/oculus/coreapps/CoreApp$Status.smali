.class public final enum Lcom/oculus/coreapps/CoreApp$Status;
.super Ljava/lang/Enum;
.source "CoreApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/coreapps/CoreApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/coreapps/CoreApp$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum DOWNLOAD_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum INSTALL_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum INSTALL_SUCCESS:Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum IN_PROGRESS:Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum NEEDS_INSTALL:Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum UNKNOWN:Lcom/oculus/coreapps/CoreApp$Status;

.field public static final enum UP_TO_DATE:Lcom/oculus/coreapps/CoreApp$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->UNKNOWN:Lcom/oculus/coreapps/CoreApp$Status;

    .line 20
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "UP_TO_DATE"

    invoke-direct {v0, v1, v4}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->UP_TO_DATE:Lcom/oculus/coreapps/CoreApp$Status;

    .line 21
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "NEEDS_INSTALL"

    invoke-direct {v0, v1, v5}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->NEEDS_INSTALL:Lcom/oculus/coreapps/CoreApp$Status;

    .line 22
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->IN_PROGRESS:Lcom/oculus/coreapps/CoreApp$Status;

    .line 23
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v7}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->DOWNLOAD_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    .line 24
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "INSTALL_FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    .line 25
    new-instance v0, Lcom/oculus/coreapps/CoreApp$Status;

    const-string v1, "INSTALL_SUCCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/oculus/coreapps/CoreApp$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_SUCCESS:Lcom/oculus/coreapps/CoreApp$Status;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->UNKNOWN:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->UP_TO_DATE:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->NEEDS_INSTALL:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->IN_PROGRESS:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/coreapps/CoreApp$Status;->DOWNLOAD_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_FAILED:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/coreapps/CoreApp$Status;->INSTALL_SUCCESS:Lcom/oculus/coreapps/CoreApp$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/coreapps/CoreApp$Status;->$VALUES:[Lcom/oculus/coreapps/CoreApp$Status;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/coreapps/CoreApp$Status;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/coreapps/CoreApp$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/coreapps/CoreApp$Status;

    return-object v0
.end method

.method public static values()[Lcom/oculus/coreapps/CoreApp$Status;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/oculus/coreapps/CoreApp$Status;->$VALUES:[Lcom/oculus/coreapps/CoreApp$Status;

    invoke-virtual {v0}, [Lcom/oculus/coreapps/CoreApp$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/coreapps/CoreApp$Status;

    return-object v0
.end method
