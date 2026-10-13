.class public final enum Lcom/oculus/common/packagescache/PackagesListener$PackageAction;
.super Ljava/lang/Enum;
.source "PackagesListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/common/packagescache/PackagesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/common/packagescache/PackagesListener$PackageAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

.field public static final enum ADDED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

.field public static final enum REMOVED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

.field public static final enum UPDATED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    const-string v1, "ADDED"

    invoke-direct {v0, v1, v2}, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->ADDED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    .line 10
    new-instance v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    const-string v1, "REMOVED"

    invoke-direct {v0, v1, v3}, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->REMOVED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    .line 11
    new-instance v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->UPDATED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    sget-object v1, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->ADDED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->REMOVED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->UPDATED:Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->$VALUES:[Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/common/packagescache/PackagesListener$PackageAction;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    return-object v0
.end method

.method public static values()[Lcom/oculus/common/packagescache/PackagesListener$PackageAction;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->$VALUES:[Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    invoke-virtual {v0}, [Lcom/oculus/common/packagescache/PackagesListener$PackageAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/common/packagescache/PackagesListener$PackageAction;

    return-object v0
.end method
