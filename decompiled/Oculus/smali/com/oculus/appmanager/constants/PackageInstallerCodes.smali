.class public final enum Lcom/oculus/appmanager/constants/PackageInstallerCodes;
.super Ljava/lang/Enum;
.source "PackageInstallerCodes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/appmanager/constants/PackageInstallerCodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum ABORTED:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum BLOCKED:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum CONFLICT:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum INVALID:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum STORAGE:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

.field public static final enum SUCCESS:Lcom/oculus/appmanager/constants/PackageInstallerCodes;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->SUCCESS:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 10
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "BLOCKED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v5}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->BLOCKED:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 11
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v5, v6}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->ABORTED:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 12
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v6, v7}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->INVALID:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 13
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "CONFLICT"

    invoke-direct {v0, v1, v7, v8}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->CONFLICT:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 14
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "STORAGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->STORAGE:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 15
    new-instance v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    const-string v1, "INCOMPATIBLE"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/appmanager/constants/PackageInstallerCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    .line 8
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    sget-object v1, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->SUCCESS:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->BLOCKED:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v2, v0, v1

    sget-object v1, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->ABORTED:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->INVALID:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->CONFLICT:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->STORAGE:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->INCOMPATIBLE:Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->$VALUES:[Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->code:I

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/constants/PackageInstallerCodes;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    return-object v0
.end method

.method public static values()[Lcom/oculus/appmanager/constants/PackageInstallerCodes;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/oculus/appmanager/constants/PackageInstallerCodes;->$VALUES:[Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/constants/PackageInstallerCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/constants/PackageInstallerCodes;

    return-object v0
.end method
