.class public final enum Lcom/facebook/ultralight/Provides$BindingType;
.super Ljava/lang/Enum;
.source "Provides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ultralight/Provides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ultralight/Provides$BindingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ultralight/Provides$BindingType;

.field public static final enum FINAL:Lcom/facebook/ultralight/Provides$BindingType;

.field public static final enum OVERRIDABLE:Lcom/facebook/ultralight/Provides$BindingType;

.field public static final enum OVERRIDE:Lcom/facebook/ultralight/Provides$BindingType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/facebook/ultralight/Provides$BindingType;

    const-string v1, "OVERRIDABLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ultralight/Provides$BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ultralight/Provides$BindingType;->OVERRIDABLE:Lcom/facebook/ultralight/Provides$BindingType;

    .line 36
    new-instance v0, Lcom/facebook/ultralight/Provides$BindingType;

    const-string v1, "OVERRIDE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ultralight/Provides$BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ultralight/Provides$BindingType;->OVERRIDE:Lcom/facebook/ultralight/Provides$BindingType;

    .line 38
    new-instance v0, Lcom/facebook/ultralight/Provides$BindingType;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ultralight/Provides$BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ultralight/Provides$BindingType;->FINAL:Lcom/facebook/ultralight/Provides$BindingType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ultralight/Provides$BindingType;

    sget-object v1, Lcom/facebook/ultralight/Provides$BindingType;->OVERRIDABLE:Lcom/facebook/ultralight/Provides$BindingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ultralight/Provides$BindingType;->OVERRIDE:Lcom/facebook/ultralight/Provides$BindingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ultralight/Provides$BindingType;->FINAL:Lcom/facebook/ultralight/Provides$BindingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ultralight/Provides$BindingType;->$VALUES:[Lcom/facebook/ultralight/Provides$BindingType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ultralight/Provides$BindingType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/facebook/ultralight/Provides$BindingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ultralight/Provides$BindingType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ultralight/Provides$BindingType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/ultralight/Provides$BindingType;->$VALUES:[Lcom/facebook/ultralight/Provides$BindingType;

    invoke-virtual {v0}, [Lcom/facebook/ultralight/Provides$BindingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ultralight/Provides$BindingType;

    return-object v0
.end method
