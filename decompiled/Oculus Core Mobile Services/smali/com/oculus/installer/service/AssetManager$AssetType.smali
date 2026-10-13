.class final enum Lcom/oculus/installer/service/AssetManager$AssetType;
.super Ljava/lang/Enum;
.source "AssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/installer/service/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/installer/service/AssetManager$AssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/installer/service/AssetManager$AssetType;

.field public static final enum DEFAULT:Lcom/oculus/installer/service/AssetManager$AssetType;

.field public static final enum LANGUAGE_PACK:Lcom/oculus/installer/service/AssetManager$AssetType;

.field public static final enum STORE:Lcom/oculus/installer/service/AssetManager$AssetType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/oculus/installer/service/AssetManager$AssetType;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v3, v2}, Lcom/oculus/installer/service/AssetManager$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/installer/service/AssetManager$AssetType;->DEFAULT:Lcom/oculus/installer/service/AssetManager$AssetType;

    .line 49
    new-instance v0, Lcom/oculus/installer/service/AssetManager$AssetType;

    const-string v1, "STORE"

    const-string v2, "store"

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/installer/service/AssetManager$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/installer/service/AssetManager$AssetType;->STORE:Lcom/oculus/installer/service/AssetManager$AssetType;

    .line 50
    new-instance v0, Lcom/oculus/installer/service/AssetManager$AssetType;

    const-string v1, "LANGUAGE_PACK"

    const-string v2, "language_pack"

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/installer/service/AssetManager$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/oculus/installer/service/AssetManager$AssetType;->LANGUAGE_PACK:Lcom/oculus/installer/service/AssetManager$AssetType;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/installer/service/AssetManager$AssetType;

    sget-object v1, Lcom/oculus/installer/service/AssetManager$AssetType;->DEFAULT:Lcom/oculus/installer/service/AssetManager$AssetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/installer/service/AssetManager$AssetType;->STORE:Lcom/oculus/installer/service/AssetManager$AssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/installer/service/AssetManager$AssetType;->LANGUAGE_PACK:Lcom/oculus/installer/service/AssetManager$AssetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oculus/installer/service/AssetManager$AssetType;->$VALUES:[Lcom/oculus/installer/service/AssetManager$AssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/oculus/installer/service/AssetManager$AssetType;->value:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/installer/service/AssetManager$AssetType;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/oculus/installer/service/AssetManager$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/installer/service/AssetManager$AssetType;

    return-object v0
.end method

.method public static values()[Lcom/oculus/installer/service/AssetManager$AssetType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/oculus/installer/service/AssetManager$AssetType;->$VALUES:[Lcom/oculus/installer/service/AssetManager$AssetType;

    invoke-virtual {v0}, [Lcom/oculus/installer/service/AssetManager$AssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/installer/service/AssetManager$AssetType;

    return-object v0
.end method
