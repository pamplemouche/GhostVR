.class public final enum Lcom/oculus/appmanager/info/model/UninstallResultError;
.super Ljava/lang/Enum;
.source "UninstallResultError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oculus/appmanager/info/model/UninstallResultError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/appmanager/info/model/UninstallResultError;

.field public static final enum NOT_INSTALLED:Lcom/oculus/appmanager/info/model/UninstallResultError;

.field public static final enum NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/UninstallResultError;

.field public static final enum UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/UninstallResultError;


# instance fields
.field public final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResultError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "UNKNOWN_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/oculus/appmanager/info/model/UninstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/UninstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/UninstallResultError;

    .line 8
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResultError;

    const/4 v3, 0x2

    const-string v4, "NOT_MANAGED_BY_OCULUS"

    invoke-direct {v0, v4, v2, v3}, Lcom/oculus/appmanager/info/model/UninstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/UninstallResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/UninstallResultError;

    .line 9
    new-instance v0, Lcom/oculus/appmanager/info/model/UninstallResultError;

    const/4 v4, 0x3

    const-string v5, "NOT_INSTALLED"

    invoke-direct {v0, v5, v3, v4}, Lcom/oculus/appmanager/info/model/UninstallResultError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oculus/appmanager/info/model/UninstallResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/UninstallResultError;

    .line 5
    new-array v0, v4, [Lcom/oculus/appmanager/info/model/UninstallResultError;

    sget-object v4, Lcom/oculus/appmanager/info/model/UninstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/UninstallResultError;

    aput-object v4, v0, v1

    sget-object v1, Lcom/oculus/appmanager/info/model/UninstallResultError;->NOT_MANAGED_BY_OCULUS:Lcom/oculus/appmanager/info/model/UninstallResultError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/appmanager/info/model/UninstallResultError;->NOT_INSTALLED:Lcom/oculus/appmanager/info/model/UninstallResultError;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/appmanager/info/model/UninstallResultError;->$VALUES:[Lcom/oculus/appmanager/info/model/UninstallResultError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/oculus/appmanager/info/model/UninstallResultError;->code:I

    return-void
.end method

.method public static fromInt(I)Lcom/oculus/appmanager/info/model/UninstallResultError;
    .locals 5

    .line 18
    invoke-static {}, Lcom/oculus/appmanager/info/model/UninstallResultError;->values()[Lcom/oculus/appmanager/info/model/UninstallResultError;

    move-result-object v0

    .line 19
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    iget v4, v3, Lcom/oculus/appmanager/info/model/UninstallResultError;->code:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    sget-object p0, Lcom/oculus/appmanager/info/model/UninstallResultError;->UNKNOWN_ERROR:Lcom/oculus/appmanager/info/model/UninstallResultError;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/UninstallResultError;
    .locals 1

    .line 5
    const-class v0, Lcom/oculus/appmanager/info/model/UninstallResultError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oculus/appmanager/info/model/UninstallResultError;

    return-object p0
.end method

.method public static values()[Lcom/oculus/appmanager/info/model/UninstallResultError;
    .locals 1

    .line 5
    sget-object v0, Lcom/oculus/appmanager/info/model/UninstallResultError;->$VALUES:[Lcom/oculus/appmanager/info/model/UninstallResultError;

    invoke-virtual {v0}, [Lcom/oculus/appmanager/info/model/UninstallResultError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/appmanager/info/model/UninstallResultError;

    return-object v0
.end method
