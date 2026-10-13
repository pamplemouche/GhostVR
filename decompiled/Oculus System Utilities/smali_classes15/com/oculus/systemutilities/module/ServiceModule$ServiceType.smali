.class public final enum Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;
.super Ljava/lang/Enum;
.source "ServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/systemutilities/module/ServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

.field public static final enum SETTINGS:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

.field public static final enum UNKNOWN:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->UNKNOWN:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    .line 15
    new-instance v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->SETTINGS:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    sget-object v1, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->UNKNOWN:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->SETTINGS:Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->$VALUES:[Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->$VALUES:[Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    invoke-virtual {v0}, [Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/systemutilities/module/ServiceModule$ServiceType;

    return-object v0
.end method
