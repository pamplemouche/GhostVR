.class public final enum Lcom/oculus/library/model/SupportedPlatform;
.super Ljava/lang/Enum;
.source "SupportedPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/model/SupportedPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/model/SupportedPlatform;

.field public static final enum ANDROID:Lcom/oculus/library/model/SupportedPlatform;

.field public static final enum ANDROID_6DOF:Lcom/oculus/library/model/SupportedPlatform;

.field public static final enum UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/oculus/library/model/SupportedPlatform;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/oculus/library/model/SupportedPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    .line 7
    new-instance v0, Lcom/oculus/library/model/SupportedPlatform;

    const-string v1, "ANDROID_6DOF"

    invoke-direct {v0, v1, v3}, Lcom/oculus/library/model/SupportedPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/SupportedPlatform;->ANDROID_6DOF:Lcom/oculus/library/model/SupportedPlatform;

    .line 8
    new-instance v0, Lcom/oculus/library/model/SupportedPlatform;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v4}, Lcom/oculus/library/model/SupportedPlatform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oculus/library/model/SupportedPlatform;->ANDROID:Lcom/oculus/library/model/SupportedPlatform;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oculus/library/model/SupportedPlatform;

    sget-object v1, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oculus/library/model/SupportedPlatform;->ANDROID_6DOF:Lcom/oculus/library/model/SupportedPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oculus/library/model/SupportedPlatform;->ANDROID:Lcom/oculus/library/model/SupportedPlatform;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oculus/library/model/SupportedPlatform;->$VALUES:[Lcom/oculus/library/model/SupportedPlatform;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {}, Lcom/oculus/library/model/SupportedPlatform;->values()[Lcom/oculus/library/model/SupportedPlatform;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 12
    .local v0, "platform":Lcom/oculus/library/model/SupportedPlatform;
    invoke-virtual {v0}, Lcom/oculus/library/model/SupportedPlatform;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    .end local v0    # "platform":Lcom/oculus/library/model/SupportedPlatform;
    :goto_1
    return-object v0

    .line 11
    .restart local v0    # "platform":Lcom/oculus/library/model/SupportedPlatform;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    .end local v0    # "platform":Lcom/oculus/library/model/SupportedPlatform;
    :cond_1
    sget-object v0, Lcom/oculus/library/model/SupportedPlatform;->UNKNOWN:Lcom/oculus/library/model/SupportedPlatform;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/model/SupportedPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/oculus/library/model/SupportedPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/SupportedPlatform;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/model/SupportedPlatform;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/oculus/library/model/SupportedPlatform;->$VALUES:[Lcom/oculus/library/model/SupportedPlatform;

    invoke-virtual {v0}, [Lcom/oculus/library/model/SupportedPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/model/SupportedPlatform;

    return-object v0
.end method
