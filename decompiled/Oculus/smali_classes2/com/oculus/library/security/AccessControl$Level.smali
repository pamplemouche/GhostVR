.class public final enum Lcom/oculus/library/security/AccessControl$Level;
.super Ljava/lang/Enum;
.source "AccessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/library/security/AccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oculus/library/security/AccessControl$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oculus/library/security/AccessControl$Level;

.field public static final enum INTERNAL:Lcom/oculus/library/security/AccessControl$Level;

.field public static final enum NONE:Lcom/oculus/library/security/AccessControl$Level;

.field public static final enum PUBLIC:Lcom/oculus/library/security/AccessControl$Level;

.field public static final enum SELF:Lcom/oculus/library/security/AccessControl$Level;


# instance fields
.field private mFeatures:[Lcom/oculus/library/security/AccessControl$Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/oculus/library/security/AccessControl$Level;

    const-string v1, "NONE"

    new-array v2, v4, [Lcom/oculus/library/security/AccessControl$Feature;

    invoke-direct {v0, v1, v4, v2}, Lcom/oculus/library/security/AccessControl$Level;-><init>(Ljava/lang/String;I[Lcom/oculus/library/security/AccessControl$Feature;)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Level;->NONE:Lcom/oculus/library/security/AccessControl$Level;

    .line 21
    new-instance v0, Lcom/oculus/library/security/AccessControl$Level;

    const-string v1, "PUBLIC"

    new-array v2, v4, [Lcom/oculus/library/security/AccessControl$Feature;

    invoke-direct {v0, v1, v5, v2}, Lcom/oculus/library/security/AccessControl$Level;-><init>(Ljava/lang/String;I[Lcom/oculus/library/security/AccessControl$Feature;)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Level;->PUBLIC:Lcom/oculus/library/security/AccessControl$Level;

    .line 22
    new-instance v0, Lcom/oculus/library/security/AccessControl$Level;

    const-string v1, "INTERNAL"

    new-array v2, v7, [Lcom/oculus/library/security/AccessControl$Feature;

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v4

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v5

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v6, v2}, Lcom/oculus/library/security/AccessControl$Level;-><init>(Ljava/lang/String;I[Lcom/oculus/library/security/AccessControl$Feature;)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Level;->INTERNAL:Lcom/oculus/library/security/AccessControl$Level;

    .line 26
    new-instance v0, Lcom/oculus/library/security/AccessControl$Level;

    const-string v1, "SELF"

    new-array v2, v8, [Lcom/oculus/library/security/AccessControl$Feature;

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_INTERNAL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v4

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_DATA_MODIFY:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v5

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v6

    sget-object v3, Lcom/oculus/library/security/AccessControl$Feature;->APP_ACTION_CUSTOM_INSTALL:Lcom/oculus/library/security/AccessControl$Feature;

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v7, v2}, Lcom/oculus/library/security/AccessControl$Level;-><init>(Ljava/lang/String;I[Lcom/oculus/library/security/AccessControl$Feature;)V

    sput-object v0, Lcom/oculus/library/security/AccessControl$Level;->SELF:Lcom/oculus/library/security/AccessControl$Level;

    .line 19
    new-array v0, v8, [Lcom/oculus/library/security/AccessControl$Level;

    sget-object v1, Lcom/oculus/library/security/AccessControl$Level;->NONE:Lcom/oculus/library/security/AccessControl$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oculus/library/security/AccessControl$Level;->PUBLIC:Lcom/oculus/library/security/AccessControl$Level;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oculus/library/security/AccessControl$Level;->INTERNAL:Lcom/oculus/library/security/AccessControl$Level;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oculus/library/security/AccessControl$Level;->SELF:Lcom/oculus/library/security/AccessControl$Level;

    aput-object v1, v0, v7

    sput-object v0, Lcom/oculus/library/security/AccessControl$Level;->$VALUES:[Lcom/oculus/library/security/AccessControl$Level;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/oculus/library/security/AccessControl$Feature;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oculus/library/security/AccessControl$Feature;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/oculus/library/security/AccessControl$Level;->mFeatures:[Lcom/oculus/library/security/AccessControl$Feature;

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oculus/library/security/AccessControl$Level;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oculus/library/security/AccessControl$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/security/AccessControl$Level;

    return-object v0
.end method

.method public static values()[Lcom/oculus/library/security/AccessControl$Level;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/oculus/library/security/AccessControl$Level;->$VALUES:[Lcom/oculus/library/security/AccessControl$Level;

    invoke-virtual {v0}, [Lcom/oculus/library/security/AccessControl$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oculus/library/security/AccessControl$Level;

    return-object v0
.end method


# virtual methods
.method public hasAccessTo(Lcom/oculus/library/security/AccessControl$Feature;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v2, p0, Lcom/oculus/library/security/AccessControl$Level;->mFeatures:[Lcom/oculus/library/security/AccessControl$Feature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 40
    invoke-virtual {p1, v4}, Lcom/oculus/library/security/AccessControl$Feature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 44
    :cond_0
    return v0

    .line 39
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
