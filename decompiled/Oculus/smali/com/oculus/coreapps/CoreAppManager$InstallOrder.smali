.class public final enum Lcom/oculus/coreapps/CoreAppManager$InstallOrder;
.super Ljava/lang/Enum;
.source "CoreAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/coreapps/CoreAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InstallOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/coreapps/CoreAppManager$InstallOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

.field public static final enum PARALLEL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

.field public static final enum SEQUENTIAL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    const-string v1, "SEQUENTIAL"

    invoke-direct {v0, v1, v2}, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->SEQUENTIAL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    .line 64
    new-instance v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    const-string v1, "PARALLEL"

    invoke-direct {v0, v1, v3}, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->PARALLEL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    sget-object v1, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->SEQUENTIAL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->PARALLEL:Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->$VALUES:[Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/coreapps/CoreAppManager$InstallOrder;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    return-object v0
.end method

.method public static values()[Lcom/oculus/coreapps/CoreAppManager$InstallOrder;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->$VALUES:[Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    invoke-virtual {v0}, [Lcom/oculus/coreapps/CoreAppManager$InstallOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/coreapps/CoreAppManager$InstallOrder;

    return-object v0
.end method
