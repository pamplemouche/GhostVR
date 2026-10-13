.class public Lcom/oculus/appmanager/info/ApkUpdateInfoContract;
.super Ljava/lang/Object;
.source "ApkUpdateInfoContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$ApkUpdateTable;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$Column;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateState;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$UpdateType;,
        Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1

    .prologue
    .line 9
    invoke-static {p0, p1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract;->fromEnumInt(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method private static fromEnumInt(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v4, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    move-object v1, v2

    .line 442
    check-cast v1, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;

    invoke-interface {v1}, Lcom/oculus/appmanager/info/ApkUpdateInfoContract$IntegerBasedEnum;->asInt()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 443
    return-object v2

    .line 441
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
